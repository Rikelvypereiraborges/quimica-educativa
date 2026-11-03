(() => {
  const atomicMasses = {
    H: 1.008, He: 4.0026, Li: 6.94, Be: 9.0122, B: 10.81, C: 12.011, N: 14.007, O: 15.999,
    F: 18.998, Ne: 20.18, Na: 22.99, Mg: 24.305, Al: 26.982, Si: 28.085, P: 30.974, S: 32.06,
    Cl: 35.45, Ar: 39.948, K: 39.098, Ca: 40.078, Cr: 51.996, Mn: 54.938, Fe: 55.845,
    Co: 58.933, Ni: 58.693, Cu: 63.546, Zn: 65.38, Br: 79.904, Ag: 107.868, I: 126.904,
    Ba: 137.327, Pt: 195.084, Au: 196.967, Hg: 200.592, Pb: 207.2
  };
  const unitFactors = {
    c: ["temperatura", 1, 273.15, "°C"], k: ["temperatura", 1, 0, "K"],
    bar: ["pressao", 100, 0, "bar"], kpa: ["pressao", 1, 0, "kPa"],
    l: ["volume", 1000, 0, "L"], ml: ["volume", 1, 0, "mL"],
    g: ["massa", 1000, 0, "g"], mg: ["massa", 1, 0, "mg"],
    mol_l: ["concentracao", 1000, 0, "mol/L"], mmol_l: ["concentracao", 1, 0, "mmol/L"],
    l_min: ["vazao", 1, 0, "L/min"], m3_h: ["vazao", 1000 / 60, 0, "m³/h"],
    j: ["energia", 1, 0, "J"], kj: ["energia", 1000, 0, "kJ"]
  };

  function parseFormula(formula) {
    let index = 0;
    function parseGroup(nested) {
      const counts = {};
      while (index < formula.length && formula[index] !== ")") {
        if (formula[index] === "(") {
          index += 1;
          const inner = parseGroup(true);
          if (formula[index] !== ")") throw new Error("Parêntese sem fechamento.");
          index += 1;
          const multiplier = readNumber();
          Object.keys(inner).forEach((element) => { counts[element] = (counts[element] || 0) + inner[element] * multiplier; });
        } else {
          const symbol = formula.slice(index).match(/^[A-Z][a-z]?/);
          if (!symbol) throw new Error("A fórmula contém um símbolo ou caractere inválido.");
          index += symbol[0].length;
          if (!Object.hasOwn(atomicMasses, symbol[0])) throw new Error(`Massa molar não cadastrada para ${symbol[0]}.`);
          counts[symbol[0]] = (counts[symbol[0]] || 0) + readNumber();
        }
      }
      if (nested && formula[index] !== ")") throw new Error("Grupo incompleto.");
      return counts;
    }
    function readNumber() {
      const digits = formula.slice(index).match(/^\d+/);
      if (!digits) return 1;
      index += digits[0].length;
      const value = Number(digits[0]);
      if (!Number.isSafeInteger(value) || value <= 0) throw new Error("Use quantidades inteiras positivas.");
      return value;
    }
    const counts = parseGroup(false);
    if (index !== formula.length || Object.keys(counts).length === 0) throw new Error("Confira a fórmula química informada.");
    return counts;
  }

  function molarMass(formula) {
    return Object.entries(parseFormula(formula)).reduce((sum, [element, count]) => sum + atomicMasses[element] * count, 0);
  }

  function gcd(a, b) {
    return b ? gcd(b, a % b) : Math.abs(a);
  }

  function fraction(value) {
    let numeratorBefore = 0; let numeratorCurrent = 1;
    let denominatorBefore = 1; let denominatorCurrent = 0;
    let remainder = value;
    for (let iteration = 0; iteration < 20; iteration += 1) {
      const integerPart = Math.floor(remainder);
      const numerator = integerPart * numeratorCurrent + numeratorBefore;
      const denominator = integerPart * denominatorCurrent + denominatorBefore;
      if (Math.abs(value - numerator / denominator) < 1e-10 || denominator > 100000) return [numerator, denominator];
      numeratorBefore = numeratorCurrent;
      numeratorCurrent = numerator;
      denominatorBefore = denominatorCurrent;
      denominatorCurrent = denominator;
      const fractionalPart = remainder - integerPart;
      if (fractionalPart < 1e-14) break;
      remainder = 1 / fractionalPart;
    }
    return [Math.round(value * 100000), 100000];
  }

  function balanceEquation(raw) {
    const sides = raw.split(/(?:->|=|→)/);
    if (sides.length !== 2) throw new Error("Separe reagentes e produtos com = ou →.");
    const reactants = sides[0].split(/\s+\+\s+/).map((part) => part.trim());
    const products = sides[1].split(/\s+\+\s+/).map((part) => part.trim());
    const molecules = reactants.concat(products).map((part) => {
      const match = part.match(/^(\d+)?\s*([A-Z].*)$/);
      if (!match) throw new Error("Separe as substâncias com o sinal + e informe fórmulas simples.");
      return { coefficient: Number(match[1] || 1), formula: match[2].replace(/\s/g, "") };
    });
    const elements = [...new Set(molecules.flatMap(({ formula }) => Object.keys(parseFormula(formula))))];
    const matrix = elements.map((element) => molecules.map(({ formula }, index) => {
      const count = parseFormula(formula)[element] || 0;
      return index < reactants.length ? count : -count;
    }));
    let pivotRow = 0;
    const pivots = [];
    for (let column = 0; column < molecules.length && pivotRow < matrix.length; column += 1) {
      let candidate = pivotRow;
      while (candidate < matrix.length && Math.abs(matrix[candidate][column]) < 1e-10) candidate += 1;
      if (candidate === matrix.length) continue;
      [matrix[pivotRow], matrix[candidate]] = [matrix[candidate], matrix[pivotRow]];
      const pivot = matrix[pivotRow][column];
      matrix[pivotRow] = matrix[pivotRow].map((value) => value / pivot);
      matrix.forEach((row, rowIndex) => {
        if (rowIndex !== pivotRow) {
          const factor = row[column];
          matrix[rowIndex] = row.map((value, cell) => value - factor * matrix[pivotRow][cell]);
        }
      });
      pivots.push(column);
      pivotRow += 1;
    }
    const freeColumns = molecules.map((_, index) => index).filter((index) => !pivots.includes(index));
    if (!freeColumns.length) throw new Error("Não foi possível encontrar coeficientes não nulos para esta equação.");
    const coefficients = Array(molecules.length).fill(0);
    coefficients[freeColumns[0]] = 1;
    pivots.forEach((column, row) => { coefficients[column] = -matrix[row][freeColumns[0]]; });
    const direction = coefficients.find((value) => Math.abs(value) > 1e-10);
    if (direction < 0) coefficients.forEach((_, index) => { coefficients[index] *= -1; });
    if (coefficients.some((value) => value <= 1e-10)) throw new Error("A equação tem mais de uma solução independente; informe espécies adequadas.");
    const fractions = coefficients.map(fraction);
    const commonDenominator = fractions.reduce((denominator, [, next]) => denominator * next / gcd(denominator, next), 1);
    let integers = fractions.map(([numerator, denominator]) => numerator * commonDenominator / denominator);
    const divisor = integers.reduce((value, next) => gcd(value, next));
    integers = integers.map((value) => value / divisor);
    if (integers.some((value) => !Number.isSafeInteger(value) || value <= 0 || value > 100000)) {
      throw new Error("Os coeficientes não puderam ser simplificados de forma segura.");
    }
    const formatted = molecules.map(({ formula }, index) => `${integers[index] === 1 ? "" : `${integers[index]} `}${formula}`);
    return `${formatted.slice(0, reactants.length).join(" + ")} → ${formatted.slice(reactants.length).join(" + ")}`;
  }

  function number(form, key) {
    const value = Number(new FormData(form).get(key));
    if (!Number.isFinite(value)) throw new Error("Preencha todos os campos com valores numéricos.");
    return value;
  }

  function chart(container, points, xLabel, yLabel, xDomain, yDomain, linePoints = points) {
    container.replaceChildren();
    const svg = document.createElementNS("http://www.w3.org/2000/svg", "svg");
    svg.setAttribute("viewBox", "0 0 640 280");
    svg.setAttribute("role", "img");
    svg.setAttribute("aria-label", `Gráfico de ${yLabel} por ${xLabel}`);
    const create = (tag, attrs) => {
      const item = document.createElementNS(svg.namespaceURI, tag);
      Object.entries(attrs).forEach(([key, value]) => item.setAttribute(key, value));
      svg.appendChild(item);
      return item;
    };
    create("line", { x1: 48, y1: 18, x2: 48, y2: 232, class: "chart-axis" });
    create("line", { x1: 48, y1: 232, x2: 620, y2: 232, class: "chart-axis" });
    const coords = points.map(([x, y]) => [
      48 + ((x - xDomain[0]) / (xDomain[1] - xDomain[0] || 1)) * 572,
      232 - ((y - yDomain[0]) / (yDomain[1] - yDomain[0] || 1)) * 214
    ]);
    const lineCoords = linePoints.map(([x, y]) => [
      48 + ((x - xDomain[0]) / (xDomain[1] - xDomain[0] || 1)) * 572,
      232 - ((y - yDomain[0]) / (yDomain[1] - yDomain[0] || 1)) * 214
    ]);
    create("polyline", { points: lineCoords.map(([x, y]) => `${x},${y}`).join(" "), class: "chart-line" });
    coords.forEach(([x, y]) => create("circle", { cx: x, cy: y, r: 4, class: "chart-point" }));
    const xText = create("text", { x: 334, y: 266, class: "chart-label", "text-anchor": "middle" });
    xText.textContent = xLabel;
    const yText = create("text", { x: 13, y: 125, class: "chart-label", transform: "rotate(-90 13 125)", "text-anchor": "middle" });
    yText.textContent = yLabel;
    container.appendChild(svg);
  }

  function calculate(form) {
    const output = form.querySelector("output");
    const chartArea = form.querySelector(".tool-chart");
    output.textContent = "";
    if (chartArea) chartArea.replaceChildren();
    try {
      let result;
      switch (form.dataset.calculator) {
        case "molar-mass": {
          const formula = new FormData(form).get("formula").trim();
          result = `${formula}: ${molarMass(formula).toFixed(3)} g/mol`;
          break;
        }
        case "balance":
          result = balanceEquation(new FormData(form).get("equation").trim());
          break;
        case "molarity": {
          const mass = number(form, "mass");
          const massValue = number(form, "molar_mass");
          const volume = number(form, "volume");
          if (mass <= 0 || massValue <= 0 || volume <= 0) throw new Error("Massa, massa molar e volume devem ser positivos.");
          result = `n = m/M = ${(mass / massValue).toPrecision(4)} mol; c = n/V = ${(mass / massValue / (volume / 1000)).toPrecision(4)} mol/L.`;
          break;
        }
        case "dilution": {
          const c1 = number(form, "c1"); const v1 = number(form, "v1");
          const c2 = number(form, "c2"); const v2 = number(form, "v2");
          const blanks = [["C₁", c1], ["V₁", v1], ["C₂", c2], ["V₂", v2]].filter(([, value]) => value === 0);
          if (blanks.length !== 1) throw new Error("Para determinar a incógnita, informe três valores positivos e deixe somente um campo como zero.");
          const [name] = blanks[0];
          const value = name === "C₁" ? c2 * v2 / v1 : name === "V₁" ? c2 * v2 / c1 : name === "C₂" ? c1 * v1 / v2 : c1 * v1 / c2;
          if (!Number.isFinite(value) || value <= 0) throw new Error("Verifique os valores e unidades informados.");
          result = `${name} = ${value.toPrecision(5)} ${name.startsWith("V") ? "mL" : "mol/L"} (C₁V₁ = C₂V₂).`;
          break;
        }
        case "ph": {
          const data = new FormData(form);
          const value = number(form, "value");
          if (value <= 0) throw new Error("A concentração deve ser positiva.");
          let ph;
          if (data.get("mode") === "acid") ph = -Math.log10(value);
          if (data.get("mode") === "base") ph = 14 + Math.log10(value);
          if (data.get("mode") === "buffer") {
            const acid = number(form, "acid"); const pka = number(form, "pka");
            if (acid <= 0) throw new Error("[HA] deve ser positiva.");
            ph = pka + Math.log10(value / acid);
          }
          if (!Number.isFinite(ph)) throw new Error("Confira o modelo selecionado e seus valores.");
          result = `pH aproximado = ${ph.toFixed(3)}${ph < 0 || ph > 14 ? " (fora da faixa usual em água diluída)" : ""}.`;
          break;
        }
        case "titration": {
          const vAcid = number(form, "volume"); const cAcid = number(form, "acid"); const cBase = number(form, "base");
          if (vAcid <= 0 || cAcid <= 0 || cBase <= 0) throw new Error("Volumes e concentrações devem ser positivos.");
          const equivalence = vAcid * cAcid / cBase;
          const maxVolume = equivalence * 2;
          const points = [];
          for (let i = 0; i <= 50; i += 1) {
            const added = maxVolume * i / 50;
            const acidMol = cAcid * vAcid / 1000;
            const baseMol = cBase * added / 1000;
            const totalVolume = (vAcid + added) / 1000;
            let ph = 7;
            if (Math.abs(acidMol - baseMol) > 1e-14) {
              const excess = Math.abs(acidMol - baseMol) / totalVolume;
              ph = acidMol > baseMol ? -Math.log10(excess) : 14 + Math.log10(excess);
            }
            points.push([added, Math.max(0, Math.min(14, ph))]);
          }
          result = `Ponto de equivalência idealizado: ${equivalence.toFixed(3)} mL de base.`;
          chart(chartArea, points, "Volume de base adicionado (mL)", "pH", [0, maxVolume], [0, 14]);
          break;
        }
        case "calibration": {
          const data = new FormData(form);
          const xs = data.get("x").split(",").map((value) => Number(value.trim()));
          const ys = data.get("y").split(",").map((value) => Number(value.trim()));
          const signal = number(form, "signal");
          if (xs.length < 3 || xs.length !== ys.length || xs.some((value) => !Number.isFinite(value)) || ys.some((value) => !Number.isFinite(value))) throw new Error("Informe ao menos três pares numéricos x,y.");
          const xMean = xs.reduce((sum, value) => sum + value, 0) / xs.length;
          const yMean = ys.reduce((sum, value) => sum + value, 0) / ys.length;
          const slope = xs.reduce((sum, x, index) => sum + (x - xMean) * (ys[index] - yMean), 0) / xs.reduce((sum, x) => sum + (x - xMean) ** 2, 0);
          if (!Number.isFinite(slope) || slope === 0) throw new Error("Os valores x precisam variar para ajustar uma reta.");
          const intercept = yMean - slope * xMean;
          const ssTot = ys.reduce((sum, y) => sum + (y - yMean) ** 2, 0);
          const ssRes = ys.reduce((sum, y, index) => sum + (y - (intercept + slope * xs[index])) ** 2, 0);
          const r2 = ssTot === 0 ? NaN : 1 - ssRes / ssTot;
          const concentration = (signal - intercept) / slope;
          if (!Number.isFinite(concentration) || !Number.isFinite(r2)) throw new Error("Não foi possível calcular R²; confira os sinais.");
          result = `y = ${slope.toPrecision(5)}x + ${intercept.toPrecision(5)}; R² = ${r2.toFixed(5)}; concentração estimada = ${concentration.toPrecision(5)} (nas unidades de x). Confira se a amostra está na faixa dos padrões.`;
          const minX = Math.min(...xs); const maxX = Math.max(...xs);
          chart(chartArea, xs.map((x, index) => [x, ys[index]]), "Concentração (x)", "Sinal (y)", [minX, maxX], [Math.min(...ys), Math.max(...ys)], [[minX, intercept + slope * minX], [maxX, intercept + slope * maxX]]);
          break;
        }
        case "chromatography": {
          const tm = number(form, "tm"); const tr1 = number(form, "tr1"); const w1 = number(form, "w1");
          const tr2 = number(form, "tr2"); const w2 = number(form, "w2");
          if (tm <= 0 || tr1 <= tm || tr2 <= tr1 || w1 <= 0 || w2 <= 0) throw new Error("Use tR₂ > tR₁ > tM e larguras positivas, na mesma unidade.");
          const k1 = (tr1 - tm) / tm; const k2 = (tr2 - tm) / tm;
          result = `k′₁ = ${k1.toFixed(3)}; k′₂ = ${k2.toFixed(3)}; α = ${(k2 / k1).toFixed(3)}; Rs = ${(2 * (tr2 - tr1) / (w1 + w2)).toFixed(3)}; N₂ = ${(16 * (tr2 / w2) ** 2).toFixed(0)} pratos teóricos.`;
          break;
        }
        case "raoult": {
          const x = number(form, "x"); const pa = number(form, "pa"); const pb = number(form, "pb");
          if (x < 0 || x > 1 || pa < 0 || pb < 0 || pa + pb === 0) throw new Error("Use 0 ≤ xA ≤ 1 e pressões não negativas, com soma positiva.");
          const pA = x * pa; const pB = (1 - x) * pb; const total = pA + pB;
          result = `PA = ${pA.toPrecision(5)}; PB = ${pB.toPrecision(5)}; Ptotal = ${total.toPrecision(5)} (na unidade informada); yA = ${(pA / total).toFixed(4)}. Modelo ideal.`;
          break;
        }
        case "reynolds": {
          const rho = number(form, "rho"); const velocity = number(form, "velocity"); const diameter = number(form, "diameter"); const viscosity = number(form, "viscosity");
          if (rho <= 0 || velocity < 0 || diameter <= 0 || viscosity <= 0) throw new Error("Use densidade, diâmetro e viscosidade positivos e velocidade não negativa.");
          result = `Re = ${(rho * velocity * diameter / viscosity).toPrecision(5)} (adimensional). Regimes dependem da geometria e das condições do escoamento.`;
          break;
        }
        case "lmtd": {
          const dt1 = number(form, "dt1"); const dt2 = number(form, "dt2");
          if (dt1 <= 0 || dt2 <= 0) throw new Error("As diferenças de temperatura devem ser positivas.");
          const delta = Math.abs(dt1 - dt2) < 1e-12 ? dt1 : (dt1 - dt2) / Math.log(dt1 / dt2);
          result = `ΔTlm = ${delta.toPrecision(5)} na mesma unidade de temperatura informada.`;
          break;
        }
        case "pid": {
          const kp = number(form, "kp"); const ki = number(form, "ki"); const kd = number(form, "kd");
          const tau = number(form, "tau"); const duration = number(form, "duration");
          if (kp < 0 || ki < 0 || kd < 0 || tau <= 0 || duration <= 0) throw new Error("Os ganhos devem ser não negativos; τ e tempo final devem ser positivos.");
          const steps = 200; const dt = duration / steps;
          let outputValue = 0; let integral = 0; let previousError = 1;
          const points = [[0, 0]];
          for (let index = 1; index <= steps; index += 1) {
            const error = 1 - outputValue;
            const derivative = (error - previousError) / dt;
            const unclamped = kp * error + ki * integral + kd * derivative;
            const control = Math.max(0, Math.min(2, unclamped));
            if (control === unclamped || (control === 0 && error > 0) || (control === 2 && error < 0)) integral += error * dt;
            outputValue += dt * (-outputValue + control) / tau;
            previousError = error;
            points.push([index * dt, outputValue]);
          }
          result = `Saída ao fim da simulação = ${outputValue.toFixed(4)} (setpoint normalizado = 1). Modelo de primeira ordem com limites de controle didáticos.`;
          chart(chartArea, points, "Tempo (s)", "Saída normalizada", [0, duration], [0, Math.max(1.1, ...points.map((point) => point[1]))]);
          break;
        }
        case "convert": {
          const value = number(form, "value"); const data = new FormData(form);
          const from = unitFactors[data.get("from")]; const to = unitFactors[data.get("to")];
          if (from[0] !== to[0]) throw new Error("Selecione unidades da mesma grandeza.");
          const base = from[0] === "temperatura" ? value + from[2] : value * from[1];
          const converted = from[0] === "temperatura" ? base - to[2] : base / to[1];
          result = `${value} ${from[3]} = ${converted.toPrecision(7)} ${to[3]}.`;
          break;
        }
        case "report": {
          const data = new FormData(form);
          const template = `RELATÓRIO DE AULA PRÁTICA\n\nTítulo: ${data.get("title")}\nData: ${data.get("date") || "________________"}\n\n1. Objetivo\n${data.get("objective")}\n\n2. Amostra, materiais e método\nAmostra e identificação: ______________________________\nMateriais e equipamentos: _____________________________\nMétodo e condições: ___________________________________\n\n3. Segurança e resíduos\nPerigos, controles e descarte: _________________________\n\n4. Dados brutos (inclua unidades)\n______________________________________________________\n\n5. Cálculos e incerteza\nEquações, substituição de valores e resultado: __________\n\n6. Resultados e discussão\n______________________________________________________\n\n7. Conclusão e limitações\n______________________________________________________\n\n8. Referências\n______________________________________________________`;
          const reportOutput = form.querySelector(".report-output");
          reportOutput.value = template;
          result = "Modelo gerado. Preencha-o com dados observados e referências verificáveis.";
          break;
        }
        case "knowledge-check": {
          const selected = new FormData(form).get("answer");
          result = selected === form.dataset.correct ? `Correto. ${form.dataset.explanation}` : `Revise a escolha. ${form.dataset.explanation}`;
          break;
        }
        default:
          throw new Error("Ferramenta indisponível.");
      }
      output.textContent = result;
      output.classList.remove("is-error");
    } catch (error) {
      output.textContent = error.message;
      output.classList.add("is-error");
    }
  }

  document.querySelectorAll("form[data-calculator]").forEach((form) => {
    form.addEventListener("submit", (event) => {
      event.preventDefault();
      calculate(form);
    });
  });

  const filter = document.querySelector("[data-element-filter]");
  if (filter) {
    const tiles = [...document.querySelectorAll(".element-tile")];
    const name = document.querySelector("[data-element-name]");
    const configuration = document.querySelector("[data-element-configuration]");
    const use = document.querySelector("[data-element-use]");
    tiles.forEach((tile) => tile.addEventListener("click", () => {
      name.textContent = `${tile.dataset.name} (${tile.dataset.symbol}) · Z = ${tile.dataset.number}`;
      configuration.textContent = `Configuração eletrônica resumida: ${tile.dataset.configuration}`;
      use.textContent = `Aplicação ou observação: ${tile.dataset.use}`;
      tiles.forEach((element) => element.classList.toggle("is-selected", element === tile));
    }));
    filter.addEventListener("input", () => {
      const term = filter.value.trim().toLocaleLowerCase("pt-BR");
      tiles.forEach((tile) => { tile.hidden = term !== "" && !tile.dataset.element.includes(term); });
    });
  }
})();
