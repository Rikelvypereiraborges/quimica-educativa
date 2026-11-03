class ResourcesController < ApplicationController
  GLOSSARY = [
    [ "Absorbância", "Medida logarítmica da fração de luz absorvida por uma amostra; em condições adequadas, relaciona-se à concentração pela lei de Lambert–Beer.", "analise-instrumental" ],
    [ "Alíquota", "Porção medida de uma amostra ou solução, retirada para uma análise ou transferência.", "operacoes-basicas-laboratorio" ],
    [ "Analito", "Espécie química cuja identidade ou quantidade é o objeto da análise.", "quimica-analitica" ],
    [ "Amostragem", "Conjunto de decisões e operações para obter uma porção representativa do material de interesse.", "quimica-analitica" ],
    [ "Azeótropo", "Mistura que, em determinada pressão, ferve sem mudança de composição do vapor em relação ao líquido; limita a separação por destilação simples.", "operacoes-unitarias" ],
    [ "Branco analítico", "Ensaio sem o analito, mas com os reagentes e etapas relevantes, usado para avaliar sinal de fundo ou contaminação.", "analise-instrumental" ],
    [ "Calibração", "Relação estabelecida entre valores de referência e indicações de um instrumento ou método, com incertezas associadas.", "analise-instrumental" ],
    [ "Capacidade tamponante", "Medida da resistência de uma solução tampão a mudanças de pH quando pequenas quantidades de ácido ou base são adicionadas.", "quimica-ii" ],
    [ "Cátodo", "Eletrodo no qual ocorre redução; seu sinal depende de a célula ser galvânica ou eletrolítica.", "quimica-inorganica" ],
    [ "Concentração", "Relação quantitativa entre a quantidade de um componente e uma quantidade definida de solução ou mistura.", "quimica-analitica" ],
    [ "Controle de qualidade", "Atividades planejadas para verificar se um processo ou resultado atende aos critérios definidos.", "tecnologia-quimica" ],
    [ "Cromatografia", "Família de técnicas de separação baseada na distribuição diferencial dos componentes entre fases móvel e estacionária.", "analise-instrumental" ],
    [ "DBO", "Demanda bioquímica de oxigênio: indicador da quantidade de oxigênio consumida por processos biológicos sob condições definidas.", "utilidades-efluentes" ],
    [ "DQO", "Demanda química de oxigênio: medida operacional da matéria oxidável sob condições de ensaio especificadas.", "utilidades-efluentes" ],
    [ "Eletrodo", "Condutor que estabelece contato elétrico com um sistema químico e no qual pode ocorrer transferência de carga.", "quimica-inorganica" ],
    [ "EPI", "Equipamento de proteção individual selecionado conforme o perigo, a atividade e as regras da instituição.", "seguranca-trabalho-meio-ambiente" ],
    [ "Equivalência, ponto de", "Condição estequiométrica de uma titulação; não é necessariamente idêntica ao ponto final observado.", "quimica-analitica" ],
    [ "Exatidão", "Proximidade entre um resultado e um valor de referência aceito, considerando as condições de medição.", "analise-instrumental" ],
    [ "Fase móvel", "Fluido que transporta os componentes em uma separação cromatográfica.", "analise-instrumental" ],
    [ "Fase estacionária", "Fase que permanece fixa ou imobilizada e interage com os componentes durante a separação.", "analise-instrumental" ],
    [ "FISPQ / FDS", "Ficha com informações de segurança de produto químico; consulte a versão vigente e as orientações locais antes do uso.", "seguranca-trabalho-meio-ambiente" ],
    [ "Incerteza", "Parâmetro que descreve a dispersão de valores que podem ser atribuídos a um mensurando com base nas informações disponíveis.", "analise-instrumental" ],
    [ "Indicador", "Substância ou recurso que apresenta uma mudança observável relacionada a uma condição química, como a faixa de pH.", "quimica-analitica" ],
    [ "LOD", "Limite de detecção estimado: nível em que é possível distinguir um sinal do ruído segundo um procedimento definido.", "analise-instrumental" ],
    [ "LOQ", "Limite de quantificação estimado: nível mínimo em que a quantidade pode ser determinada com desempenho adequado ao uso.", "analise-instrumental" ],
    [ "Matriz", "Conjunto dos componentes da amostra além do analito; pode afetar o preparo, a reação ou o sinal de medida.", "quimica-analitica" ],
    [ "Molaridade", "Quantidade de matéria do soluto dividida pelo volume final da solução, expressa em mol/L.", "quimica-analitica" ],
    [ "Número de Reynolds", "Grandeza adimensional usada para comparar efeitos inerciais e viscosos em um escoamento; sua interpretação depende da geometria e das condições.", "operacoes-unitarias" ],
    [ "pH", "Definição termodinâmica relacionada à atividade do íon hidrogênio; em soluções diluídas é usualmente aproximado por −log₁₀[H⁺].", "quimica-ii" ],
    [ "Precisão", "Grau de concordância entre resultados repetidos obtidos sob condições especificadas; não garante ausência de viés.", "analise-instrumental" ],
    [ "Rastreabilidade metrológica", "Propriedade de um resultado que o relaciona a uma referência por uma cadeia documentada e ininterrupta de calibrações.", "operacoes-basicas-laboratorio" ],
    [ "Reagente limitante", "Reagente consumido primeiro segundo a estequiometria, que limita a quantidade máxima de produto.", "quimica-i" ],
    [ "Resolução cromatográfica", "Medida da separação entre picos adjacentes, calculada a partir dos tempos de retenção e das larguras dos picos.", "analise-instrumental" ],
    [ "Rendimento", "Razão entre a quantidade de produto obtida e a quantidade teórica, expressa conforme a base definida.", "tecnologia-quimica" ],
    [ "Solução tampão", "Solução que reduz a variação de pH frente a pequenas adições de ácido ou base, dentro de uma faixa de capacidade.", "quimica-ii" ],
    [ "Titulação", "Método volumétrico em que a quantidade de analito é calculada a partir da reação com uma solução de concentração conhecida.", "quimica-analitica" ],
    [ "Validação", "Demonstração documentada de que um método atende aos requisitos adequados ao uso pretendido.", "analise-instrumental" ]
  ].freeze

  FORMULAS = {
    "Soluções e análises" => [
      [ "Concentração em massa", "C = m / V", "C em g/L; m em g; V em L. Use o volume final da solução." ],
      [ "Molaridade", "c = n / V", "c em mol/L; n em mol; V em L." ],
      [ "Quantidade de matéria", "n = m / M", "n em mol; m em g; M em g/mol." ],
      [ "Diluição", "C₁V₁ = C₂V₂", "Válida quando a quantidade de soluto se conserva e as unidades de volume são compatíveis." ],
      [ "Titulação", "a·cₐ·Vₐ = b·cᵦ·Vᵦ", "a e b são coeficientes estequiométricos; use a equação balanceada e volumes em unidades coerentes." ],
      [ "Erro relativo percentual", "Erro (%) = |x − xref| / |xref| × 100", "Compare grandezas com a mesma unidade e base." ]
    ],
    "Equilíbrio, gases e físico-química" => [
      [ "Gás ideal", "PV = nRT", "P em Pa, V em m³, n em mol, T em K e R = 8,314 J·mol⁻¹·K⁻¹." ],
      [ "Pressões parciais", "Ptotal = Σ Pi; Pi = yi·Ptotal", "Para misturas gasosas ideais; yi é a fração molar no gás." ],
      [ "Energia térmica", "q = m·c·ΔT", "q em J, m em g ou kg compatível com c, c em J·g⁻¹·K⁻¹ ou J·kg⁻¹·K⁻¹ e ΔT em K." ],
      [ "Energia livre de Gibbs", "ΔG = ΔH − TΔS", "Use unidades compatíveis para entalpia e entropia; T em K." ],
      [ "pH", "pH = −log₁₀ a(H⁺) ≈ −log₁₀[H⁺]", "A aproximação por concentração é adequada sobretudo para soluções diluídas." ],
      [ "Henderson–Hasselbalch", "pH = pKa + log₁₀([A⁻]/[HA])", "Aproximação para tampões com concentrações analíticas apropriadas e razão conjugada válida." ],
      [ "Lei de Raoult", "Pi = xi·Pi*; yi = Pi/Ptotal", "Mistura líquida ideal em equilíbrio; xi é fração molar no líquido." ]
    ],
    "Instrumentação e separações" => [
      [ "Lambert–Beer", "A = ε·l·c", "A adimensional; ε depende das unidades; l em cm; c em mol/L, dentro da faixa linear validada." ],
      [ "Fator de retenção", "k′ = (tR − tM) / tM", "tR e tM devem usar a mesma unidade de tempo." ],
      [ "Seletividade", "α = k′₂ / k′₁", "Defina 2 como a espécie mais retida; α ≥ 1." ],
      [ "Resolução", "Rs = 2(tR₂ − tR₁)/(w₁ + w₂)", "Tempos e larguras de base na mesma unidade; a resolução necessária depende do objetivo." ],
      [ "Pratos teóricos", "N = 16(tR/w)²", "Aplicável quando w é a largura do pico na base, segundo a convenção do método." ],
      [ "Curva de calibração", "y = a + bx; x = (y − a)/b", "A concentração estimada só é defensável dentro da faixa e das condições avaliadas." ]
    ],
    "Processos e engenharia" => [
      [ "Número de Reynolds", "Re = ρvD/μ", "ρ em kg/m³; v em m/s; D em m; μ em Pa·s." ],
      [ "Calor sensível", "Q = m·Cp·ΔT", "Q em J quando as unidades de massa, Cp e temperatura forem compatíveis." ],
      [ "Diferença média logarítmica", "ΔTlm = (ΔT₁ − ΔT₂)/ln(ΔT₁/ΔT₂)", "As diferenças de temperatura devem ser positivas e corresponder às extremidades do equipamento." ],
      [ "Balanço de massa", "Entrada − Saída + Geração − Consumo = Acúmulo", "Defina fronteira, base de cálculo e regime antes de simplificar." ],
      [ "Eficiência percentual", "η = (resultado útil / entrada) × 100%", "Declare a base e use grandezas comparáveis." ]
    ],
    "Constantes e conversões úteis" => [
      [ "Constante dos gases", "R = 8,314 J·mol⁻¹·K⁻¹", "Em outras unidades, converta R junto com pressão e volume." ],
      [ "Constante de Faraday", "F ≈ 96 485 C·mol⁻¹", "Carga por mol de elétrons; confira valores e convenções do problema." ],
      [ "Temperatura", "T(K) = t(°C) + 273,15", "Use kelvin em relações termodinâmicas." ],
      [ "Pressão", "1 bar = 100 kPa; 1 atm = 101,325 kPa", "Não misture unidades em uma mesma equação." ],
      [ "Volume", "1 L = 1 dm³ = 10⁻³ m³; 1 mL = 1 cm³", "Converta para a unidade coerente com a equação." ]
    ]
  }.freeze

  LABS = [
    [ "Medição de massa e pesagem por diferença", "Comparar massa bruta, tara e massa transferida.", "Balança adequada, recipientes limpos e amostra didática inerte.", "Nivelar e conferir a balança; pesar recipiente; adicionar a amostra sem contaminar; registrar leituras e resolução; calcular a diferença.", "Evite correntes de ar e toque direto em recipientes; siga o procedimento local e não pese substâncias desconhecidas." ],
    [ "Preparo gravimétrico de solução", "Preparar uma solução a partir de uma massa calculada.", "Balança, recipiente de dissolução, balão volumétrico e soluto autorizado pelo docente.", "Definir concentração e volume; calcular massa; pesar; dissolver em parte do solvente; transferir quantitativamente; completar até a marca e homogeneizar.", "Consulte a FDS e use apenas reagente e concentração aprovados; adicione sempre conforme orientação do responsável." ],
    [ "Diluição de solução estoque", "Aplicar a conservação da quantidade de soluto na diluição.", "Solução estoque aprovada, pipeta, propipeta e balão volumétrico.", "Calcular C₁V₁=C₂V₂; selecionar vidrarias; pipetar com dispositivo apropriado; completar ao menisco; homogeneizar e rotular.", "Nunca pipete com a boca; confirme compatibilidade, identificação e descarte da solução." ],
    [ "Padronização de solução titulante", "Relacionar volume e estequiometria usando padrão apropriado.", "Solução titulante, padrão primário autorizado, bureta e indicador definido pelo método.", "Conferir método; preparar réplica; registrar leituras inicial e final; identificar o ponto final; calcular concentração e dispersão.", "Não substitua padrão, indicador ou procedimento sem validação do docente ou método." ],
    [ "Titulação ácido-base de amostra didática", "Estimar acidez ou alcalinidade por reação conhecida.", "Amostra segura, titulante padronizado, bureta e indicador/método aprovado.", "Identificar reação e razão molar; medir alíquota; titular com agitação; registrar volumes; calcular resultado com unidades e réplicas.", "Use somente amostras e concentrações autorizadas; segregue resíduos conforme o laboratório." ],
    [ "Filtração por gravidade", "Separar sólido de líquido e observar retenção no filtro.", "Funil, papel-filtro, suporte e mistura didática de baixo risco.", "Escolher filtro; dobrar e umedecer; montar o conjunto; transferir a mistura em porções; observar filtrado e resíduo.", "Inspecione vidraria e estabilidade do suporte; não descarte sólidos na pia sem autorização." ],
    [ "Decantação e separação de fases", "Observar sedimentação ou imiscibilidade antes de separar fases.", "Recipiente transparente, mistura aquosa didática não perigosa e utensílio de transferência.", "Deixar a mistura em repouso; identificar fases; decantar lentamente; registrar perdas e aparência.", "Não use solventes orgânicos ou amostras desconhecidas sem avaliação de risco." ],
    [ "Cromatografia em papel de pigmentos", "Relacionar migração de componentes à fase móvel e estacionária.", "Papel cromatográfico, capilar, amostra didática e eluente definido pelo responsável.", "Marcar linha de origem a lápis; aplicar pequena amostra; desenvolver sem submergir a origem; marcar frente do solvente; calcular Rf.", "Use apenas eluente aprovado e capela quando exigido; mantenha fontes de ignição afastadas de solventes." ],
    [ "Verificação didática de pipeta", "Estimar volume dispensado por método gravimétrico.", "Pipeta, água, recipiente e balança compatível.", "Controlar temperatura; pesar recipiente; dispensar conforme fabricante; pesar novamente; converter massa em volume com densidade apropriada.", "Não force êmbolos nem exceda a faixa; não use pipetas danificadas." ],
    [ "Calibração de pHmetro", "Verificar resposta do eletrodo com padrões rastreáveis.", "pHmetro, eletrodo, soluções tampão comerciais e recipientes limpos.", "Inspecionar eletrodo; equilibrar padrões; calibrar nos pontos adequados; enxaguar sem fricção; medir controle e registrar temperatura.", "Evite contaminação cruzada; armazene o eletrodo segundo o fabricante." ],
    [ "Condutividade de soluções", "Comparar condutividade sob condições de temperatura registradas.", "Condutivímetro, padrões e soluções aquosas autorizadas.", "Conferir constante da célula; enxaguar; calibrar; medir padrões e amostras; registrar temperatura e unidade.", "Desenergize ou proteja o instrumento conforme instruções; descarte conforme composição." ],
    [ "Dureza total da água", "Introduzir o controle analítico de cálcio e magnésio.", "Amostra de água didática, reagentes e indicador previstos no método institucional.", "Revisar a reação; preparar branco e controle; medir alíquota; executar método supervisionado; calcular e relatar como definido.", "Atenção especial à FDS dos reagentes; não execute sem supervisão e autorização." ],
    [ "Sólidos totais em água", "Relacionar massa antes e depois de secagem controlada.", "Cápsula, balança e equipamento de secagem operado por responsável.", "Condicionar e pesar cápsula; medir alíquota; evaporar e secar pelo método; resfriar em dessecador; pesar e calcular.", "Superfícies quentes causam queimaduras; use pinça e siga limites do equipamento." ],
    [ "DQO: leitura de método didático", "Interpretar o fluxo de análise da demanda química de oxigênio.", "Somente kit selado comercial e equipamento operados sob procedimento institucional.", "Revisar FDS; preparar branco e controle; seguir estritamente o método do fabricante; registrar leitura; tratar resíduos como perigosos.", "Não preparar digestões por conta própria: método pode envolver reagentes corrosivos e oxidantes; execução apenas supervisionada." ],
    [ "Absorbância e curva de calibração", "Estimar concentração dentro de uma faixa linear observada.", "Espectrofotômetro, cubetas, padrões e branco compatíveis com o método.", "Preparar padrões autorizados; ajustar branco; medir absorbância; construir gráfico; avaliar resíduos e faixa; estimar amostra.", "Evite olhar diretamente para fontes ópticas e manuseie cubetas sem tocar faces ópticas." ],
    [ "Verificação de balança analítica", "Avaliar repetibilidade de leituras com massa de controle.", "Balança, massas de referência e ambiente estável.", "Verificar nivelamento; registrar condições; medir a massa de controle em réplicas; calcular média e dispersão; comparar com critérios.", "Massas de referência são manuseadas com pinças apropriadas; não ajuste instrumento sem autorização." ],
    [ "Amostragem e homogeneização", "Planejar uma porção representativa e documentar sua origem.", "Material didático inerte, recipientes identificados e utensílios limpos.", "Definir lote e plano; coletar incrementos; homogeneizar de forma compatível; reduzir por método documentado; registrar cadeia de identificação.", "Avalie poeira, contaminação e riscos específicos do material antes de coletar." ],
    [ "Teste de solubilidade qualitativo", "Observar qualitativamente a interação de materiais didáticos com solventes aprovados.", "Pequenas porções de amostras conhecidas e solventes de baixo risco definidos pelo docente.", "Rotular tubos; adicionar quantidades pequenas; misturar com cuidado; registrar aspecto e temperatura; encaminhar resíduos.", "Não misture amostras sem identificação; nunca descarte solventes na pia." ],
    [ "Oxidação e corrosão: observação controlada", "Registrar alterações em metais sob condições didáticas seguras.", "Cupons metálicos identificados, água e recipientes abertos.", "Registrar estado inicial; expor por tempo definido; documentar mudanças; comparar controles; relacionar observações a limitações.", "Não use ácidos, sais agressivos ou recipientes fechados sem análise de risco e supervisão." ],
    [ "Relatório de laboratório e rastreabilidade", "Transformar dados brutos em resultado verificável.", "Caderno ou formulário, planilha aprovada e dados de uma prática anterior.", "Separar dados brutos e cálculos; registrar unidades; identificar amostras e equipamentos; apresentar tratamento, incerteza, conclusão e desvios.", "Não altere resultados originais; identifique correções e siga política de dados da instituição." ]
  ].freeze

  def index
    @title = "Centro de recursos"
    @intro = "Materiais de consulta, segurança e prática para acompanhar suas trilhas."
    @cards = [
      [ "Glossário A–Z", "Consulte conceitos de química, laboratório e processos.", glossary_path ],
      [ "Fórmulas e constantes", "Equações com símbolos, unidades e condições de uso.", formulas_path ],
      [ "Roteiros de laboratório", "20 guias didáticos com objetivos, materiais, etapas e cuidados.", laboratory_guides_path ],
      [ "Segurança e normas", "Princípios de prevenção, FDS, GHS e referências oficiais.", safety_path ],
      [ "Ferramentas interativas", "Calculadoras e simuladores para estudar com dados.", tools_path ],
      [ "Tabela periódica", "Explore elementos e propriedades básicas.", periodic_table_path ],
      [ "Simulados", "Pratique com um conjunto aleatório de questões por trilha ou geral.", quizzes_path ],
      [ "Busca de conteúdo", "Pesquise nas trilhas, aulas e recursos.", search_path ],
      [ "Revisão de questões", "Retome questões marcadas para revisar depois.", review_path ],
      [ "Biblioteca", "Fontes recomendadas para aprofundar os estudos.", references_path ],
      [ "Perguntas frequentes", "Entenda gratuidade, progresso, XP e uso do site.", faq_path ]
    ]
    render :index
  end

  def glossary
    @title = "Glossário de química"
    @intro = "Definições curtas para consulta. Abra a trilha relacionada para estudar cada ideia em contexto."
    @entries = GLOSSARY.sort_by { |entry| entry.first.downcase }
    @subjects_by_slug = Subject.where(slug: @entries.map(&:last).uniq).index_by(&:slug)
    render :glossary
  end

  def formulas
    @title = "Fórmulas e constantes"
    @intro = "Folha de consulta rápida. Confira as hipóteses do método, as unidades e a faixa de validade antes de aplicar uma equação."
    @groups = FORMULAS
    render :formulas
  end

  def laboratory
    @title = "Roteiros de laboratório"
    @intro = "Guias de estudo para práticas didáticas. Toda atividade experimental requer autorização, avaliação de risco, supervisão e procedimentos locais."
    @guides = LABS
    @practice_checks = [
      [ "Qual dispositivo transfere líquido com segurança para uma pipeta?", [ [ "A boca", "a" ], [ "Uma propipeta ou pipetador adequado", "b" ], [ "Um tubo aberto por sucção", "c" ] ], "b", "Use um dispositivo de pipetagem apropriado; nunca pipete com a boca." ],
      [ "O que deve ser registrado junto com um resultado medido?", [ [ "Somente o número", "a" ], [ "Valor, unidade e condições relevantes", "b" ], [ "Apenas a conclusão", "c" ] ], "b", "Unidade, identificação e condições dão contexto e rastreabilidade ao resultado." ],
      [ "Qual vidraria é calibrada para conter um volume final definido com precisão?", [ [ "Béquer", "a" ], [ "Balão volumétrico", "b" ], [ "Erlenmeyer", "c" ] ], "b", "O balão volumétrico é calibrado para conter o volume indicado à temperatura de referência." ],
      [ "Por que se enxágua um recipiente de pesagem durante uma transferência quantitativa?", [ [ "Para recuperar material aderido e reduzir perdas", "a" ], [ "Para alterar a massa pesada", "b" ], [ "Para dispensar a homogeneização", "c" ] ], "a", "Enxágues compatíveis ajudam a transferir o material sem perdas relevantes." ],
      [ "Ao calibrar um pHmetro, qual cuidado é adequado?", [ [ "Usar tampões identificados e evitar contaminação cruzada", "a" ], [ "Deixar o eletrodo secar completamente", "b" ], [ "Usar qualquer solução colorida", "c" ] ], "a", "Padrões adequados e eletrodo conservado conforme fabricante ajudam a obter leituras confiáveis." ]
    ]
    render :laboratory
  end

  def safety
    @title = "Segurança e meio ambiente"
    @intro = "Material educativo de apoio. A avaliação de risco, a FDS vigente e os procedimentos institucionais prevalecem; normas e legislação podem mudar."
    @groups = {
      "Antes de iniciar" => [
        [ "Identifique o perigo", "Leia a FDS do produto específico, o rótulo, a concentração e o procedimento. Não presuma que produtos de nomes parecidos tenham o mesmo risco." ],
        [ "Planeje controles", "Priorize eliminação ou substituição do perigo, controles de engenharia e medidas administrativas; selecione EPI compatível como última barreira." ],
        [ "Prepare a resposta", "Saiba onde estão lava-olhos, chuveiro, kit de derramamento, alarmes e saídas. Em incidente, interrompa a atividade e acione a equipe responsável." ]
      ],
      "GHS: pictogramas e comunicação" => [
        [ "Explosivo", "Risco de explosão por choque, calor ou outras condições indicadas na FDS." ],
        [ "Inflamável", "Pode incendiar com fonte de ignição; controle vapores, ventilação e fontes de calor conforme procedimento." ],
        [ "Oxidante", "Pode intensificar incêndios; mantenha segregado de materiais incompatíveis conforme FDS." ],
        [ "Gás sob pressão", "Recipiente pressurizado; pode explodir quando aquecido ou causar queimadura por frio." ],
        [ "Corrosivo", "Pode causar queimaduras ou danos oculares e corroer metais; consulte materiais compatíveis e controles." ],
        [ "Toxicidade aguda", "Pode causar efeitos graves ou fatais por exposição; evite contato e siga controles específicos." ],
        [ "Irritante / nocivo", "Pode causar irritação, sensibilização ou efeitos nocivos indicados no rótulo e na FDS." ],
        [ "Perigo grave à saúde", "Indica perigos crônicos específicos, como sensibilização respiratória ou carcinogenicidade, conforme classificação." ],
        [ "Perigoso ao ambiente aquático", "Evite liberação ao ambiente e siga segregação e descarte definidos." ]
      ],
      "Normas, resíduos e limites" => [
        [ "Normas Regulamentadoras", "NRs como NR-1, NR-6, NR-20, NR-23 e NR-26 podem ser relevantes em contextos distintos. Consulte sempre o texto vigente nos canais oficiais e a orientação do responsável técnico." ],
        [ "Resíduos", "Segregue resíduos por compatibilidade e identificação; não misture correntes desconhecidas nem descarte reagentes na pia sem procedimento autorizado." ],
        [ "Incompatibilidade", "Consulte FDS e matriz validada localmente antes de armazenar ou combinar substâncias. Listas genéricas não substituem avaliação do produto e da concentração." ],
        [ "Primeiros socorros", "Em exposição, siga a FDS e o plano de emergência da instituição e procure atendimento profissional. Não improvise neutralizações ou tratamentos." ]
      ]
    }
    @practice_checks = [
      [ "Antes de usar um reagente, qual fonte informa perigos e medidas de controle do produto?", [ [ "Somente a cor do frasco", "a" ], [ "A FDS vigente e o procedimento local", "b" ], [ "Uma lista genérica sem identificar o produto", "c" ] ], "b", "A FDS específica e o procedimento local devem orientar a avaliação do produto e da atividade." ],
      [ "O pictograma de chama indica principalmente:", [ [ "Risco de inflamabilidade conforme a classificação", "a" ], [ "Que o produto é inofensivo", "b" ], [ "Que o produto pode ser descartado na pia", "c" ] ], "a", "Interprete pictograma, palavra de advertência e frases de perigo em conjunto; consulte a FDS." ],
      [ "O pictograma de caveira e ossos cruzados indica:", [ [ "Toxicidade aguda grave conforme a classificação", "a" ], [ "Baixa viscosidade", "b" ], [ "Material reciclável", "c" ] ], "a", "A classificação indica perigo de toxicidade aguda; exposição e resposta seguem a FDS." ],
      [ "O pictograma de corrosão está associado a:", [ [ "Danos graves à pele/olhos ou corrosão de metais", "a" ], [ "Somente risco de queda", "b" ], [ "Ausência de perigo químico", "c" ] ], "a", "Confirme as frases de perigo do produto e controles compatíveis na FDS." ],
      [ "O pictograma de cilindro de gás alerta para:", [ [ "Gás sob pressão e riscos associados ao recipiente", "a" ], [ "Que o gás pode ser provado", "b" ], [ "Que o cilindro pode ser aquecido sem limite", "c" ] ], "a", "A pressão e o aquecimento podem trazer riscos; transporte e armazenamento seguem procedimento." ],
      [ "Um pictograma de chama sobre círculo indica perigo de:", [ [ "Oxidação que pode intensificar incêndios", "a" ], [ "Radioatividade sempre", "b" ], [ "Congelamento de alimentos", "c" ] ], "a", "Oxidantes podem intensificar a combustão e precisam ser segregados conforme compatibilidade." ],
      [ "O pictograma de explosão sinaliza:", [ [ "Perigo de explosão em condições descritas na classificação", "a" ], [ "Que o produto é estável a qualquer impacto", "b" ], [ "Somente risco ambiental aquático", "c" ] ], "a", "Evite condições de choque, calor ou outras indicadas na FDS e no procedimento aprovado." ],
      [ "O ponto de exclamação pode indicar:", [ [ "Irritação ou efeitos nocivos conforme a classificação", "a" ], [ "Que o produto é água pura", "b" ], [ "Que não há necessidade de consultar a FDS", "c" ] ], "a", "A classe específica e as medidas preventivas dependem das frases de perigo e da FDS." ],
      [ "A silhueta com marca no tórax representa:", [ [ "Perigo grave à saúde, com efeitos específicos indicados na classificação", "a" ], [ "Somente gás sob pressão", "b" ], [ "Apenas risco de corte mecânico", "c" ] ], "a", "Esse pictograma pode indicar perigos crônicos específicos; consulte os detalhes do produto." ],
      [ "O pictograma de perigo ao ambiente aquático recomenda:", [ [ "Evitar liberação e seguir a segregação de resíduos", "a" ], [ "Despejar o produto no ralo com água", "b" ], [ "Misturar com qualquer resíduo", "c" ] ], "a", "A prevenção de liberações e o descarte autorizado protegem o ambiente." ]
    ]
    render :show
  end

  def references
    @title = "Biblioteca e referências"
    @intro = "Fontes para consulta e verificação. Use edições atualizadas e escreva com suas próprias palavras, atribuindo as ideias consultadas."
    @groups = {
      "Química geral e inorgânica" => [ [ "Brown, LeMay e Bursten", "Química: a ciência central." ], [ "Atkins e Jones", "Princípios de Química." ], [ "Shriver e Atkins", "Química Inorgânica." ] ],
      "Química orgânica e físico-química" => [ [ "Solomons e Fryhle", "Química Orgânica." ], [ "McMurry", "Química Orgânica." ], [ "Atkins e de Paula", "Físico-Química." ] ],
      "Analítica, instrumental e operações" => [ [ "Skoog, West, Holler e Crouch", "Fundamentos de Química Analítica." ], [ "Harris", "Análise Química Quantitativa." ], [ "Foust et al.", "Princípios das Operações Unitárias." ], [ "Felder e Rousseau", "Princípios Elementares dos Processos Químicos." ] ],
      "Fontes de dados e consulta" => [ [ "NIST Chemistry WebBook", "Propriedades físico-químicas e espectros; confirme a substância, as condições e a unidade." ], [ "PubChem", "Identificação de compostos e ligações para dados de segurança." ], [ "IUPAC Gold Book", "Terminologia química." ], [ "SciELO e Portal de Periódicos CAPES", "Busca de artigos científicos e materiais acadêmicos." ] ],
      "Normas e legislação" => [ [ "Ministério do Trabalho e Emprego", "Consulte versões vigentes das Normas Regulamentadoras." ], [ "CONAMA", "Consulte os textos e atualizações das resoluções ambientais aplicáveis." ], [ "ABNT", "Consulte edições vigentes das normas de documentação e segurança química." ], [ "INMETRO / Cgcre", "Consulte documentos vigentes sobre acreditação e ISO/IEC 17025." ] ]
    }
    render :show
  end

  def faq
    @title = "Perguntas frequentes"
    @intro = "Informações sobre o funcionamento da plataforma e dos materiais didáticos."
    @groups = {
      "Estudo e progresso" => [
        [ "O site é gratuito?", "Sim. O conteúdo desta versão pode ser consultado sem pagamento e sem criar uma conta." ],
        [ "Preciso criar uma conta?", "Não. O progresso é associado à sessão do navegador e pode não estar disponível em outro dispositivo ou após a limpeza dos dados do navegador." ],
        [ "Como ganho XP?", "A aula concluída concede os pontos indicados, em geral 10 XP; a avaliação final vale 20 XP. Uma etapa só concede XP na primeira conclusão registrada nesta sessão; refazer não duplica pontos." ],
        [ "Qual é a nota mínima?", "A meta padrão é 70% das questões. Confira sempre o número de questões e as instruções mostradas em cada avaliação." ],
        [ "Existe certificado?", "A plataforma oferece um comprovante imprimível quando o progresso da trilha aparece como concluído no mesmo navegador. Ele não equivale a diploma, acreditação ou certificação oficial." ]
      ],
      "Conteúdo e segurança" => [
        [ "Posso executar os roteiros em casa?", "Não use os roteiros para executar experimentos sem supervisão e estrutura adequada. Siga a FDS, o procedimento institucional e a avaliação de risco." ],
        [ "Encontrei um erro. Como aviso?", "Use a página de contato para acessar o canal público de issues do projeto e informe o link da aula, o trecho e uma fonte verificável. Não inclua dados pessoais." ],
        [ "As normas estão sempre atualizadas?", "Não necessariamente. Normas e leis mudam; os materiais indicam fontes oficiais para confirmar a versão vigente." ]
      ]
    }
    render :show
  end

  def about
    @title = "Sobre o projeto"
    @intro = "Química Educativa é um projeto de aprendizagem em português voltado a estudantes e pessoas autodidatas que querem conectar fundamentos químicos, laboratório e processos industriais."
    @groups = {
      "Como estudar" => [
        [ "Aprendizagem por trilhas", "As trilhas organizam conteúdos em etapas e incluem exercícios de prática e avaliações. Use os níveis como orientação, não como barreira." ],
        [ "Acesso aberto", "A consulta ao conteúdo não exige cadastro nem pagamento. O progresso pode ser mantido apenas na sessão do navegador." ],
        [ "Limites do material", "O conteúdo é educativo e não substitui professor, responsável técnico, procedimento operacional, FDS ou norma vigente." ]
      ]
    }
    render :show
  end

  def contact
    @title = "Contato e correção de conteúdo"
    @intro = "Para sugerir uma correção, detalhe a trilha ou aula, o trecho, a alteração proposta e uma fonte confiável. Não envie resultados de saúde, dados pessoais ou informações confidenciais."
    @groups = {
      "Canal do projeto" => [
        [ "Relatar um erro", "Abra uma issue no repositório público para que a sugestão possa ser acompanhada e discutida." ],
        [ "O que incluir", "Link da página, descrição reproduzível, referência consultada e, se aplicável, condições experimentais e unidades." ]
      ]
    }
    @contact_url = "https://github.com/Rikelvypereiraborges/quimica-educativa/issues"
    render :show
  end

  def terms
    @title = "Termos de uso"
    @intro = "A plataforma oferece materiais educacionais para estudo. Ao usar o site, considere os limites e responsabilidades descritos abaixo."
    @groups = {
      "Uso responsável" => [
        [ "Finalidade educativa", "Textos, exercícios, ferramentas e roteiros são recursos de aprendizagem; não substituem treinamento, supervisão, avaliação profissional ou instruções do fabricante." ],
        [ "Segurança", "Não execute procedimentos de laboratório ou industriais sem autorização, infraestrutura, avaliação de riscos e supervisão adequadas." ],
        [ "Precisão", "Esforçamo-nos para oferecer informações claras, mas podem existir erros ou desatualizações. Verifique cálculos, dados, normas e legislação em fontes apropriadas." ],
        [ "Uso das ferramentas", "Calculadoras didáticas podem simplificar modelos e não validam métodos, resultados ou decisões de processo." ]
      ]
    }
    render :show
  end

  def privacy
    @title = "Privacidade"
    @intro = "Esta versão não exige conta. O progresso de estudo é mantido na sessão do navegador necessária ao funcionamento do site."
    @groups = {
      "Dados e escolhas" => [
        [ "Sem perfil obrigatório", "Não é necessário informar nome, e-mail ou dados acadêmicos para consultar aulas e ferramentas." ],
        [ "Sessão de estudo", "O servidor usa uma sessão técnica para lembrar progresso e respostas recentes. A sessão pode expirar e não sincroniza entre dispositivos." ],
        [ "Links externos", "Ao abrir serviços externos, como GitHub ou fontes de referência, aplicam-se as políticas desses serviços." ],
        [ "Contato", "Issues abertas no GitHub são públicas. Não publique dados pessoais, informações sensíveis ou conteúdo confidencial." ]
      ]
    }
    render :show
  end

  def search
    @title = "Buscar conteúdo"
    @query = params[:q].to_s.strip.first(100)
    @results = []
    @resource_results = []
    if @query.present?
      pattern = "%#{ActiveRecord::Base.sanitize_sql_like(@query)}%"
      @results = Lesson.includes(:subject).where(
        "lessons.title LIKE :query OR lessons.summary LIKE :query OR lessons.concept LIKE :query OR subjects.name LIKE :query",
        query: pattern
      ).references(:subject).order("subjects.position, lessons.position").limit(40)
      term = @query.downcase
      @resource_results.concat(GLOSSARY.select { |entry| entry.first.downcase.include?(term) || entry.second.downcase.include?(term) }.map do |entry|
        { title: entry.first, description: entry.second, kind: "Glossário", path: glossary_path(anchor: "term-#{entry.first.parameterize}") }
      end)
      @resource_results.concat(LABS.each_with_index.filter_map do |entry, index|
        next unless entry.first.downcase.include?(term) || entry.second.downcase.include?(term)

        { title: entry.first, description: entry.second, kind: "Roteiro de laboratório", path: laboratory_guides_path(anchor: "roteiro-#{index + 1}") }
      end)
    end
    render :search
  end

  def review
    due = Array(session[:review_question_ids])
    ids = due.filter_map { |entry| Integer(entry["question_id"], exception: false) if entry.is_a?(Hash) }
    @questions = QuizQuestion.includes(lesson: :subject).where(id: ids).index_by(&:id)
    @reviews = due.filter_map do |entry|
      question_id = Integer(entry["question_id"], exception: false) if entry.is_a?(Hash)
      next unless question_id && (question = @questions[question_id])

      { question: question, due_at: entry["due_at"] }
    end
    @title = "Revisão espaçada"
    @intro = "Questões respondidas incorretamente voltam à sua lista para uma nova tentativa de estudo. O lembrete depende desta sessão do navegador."
    render :review
  end

  def certificate
    @subject = Subject.includes(:lessons).find_by!(slug: params[:slug])
    required_ids = @subject.lessons.pluck(:id)
    unless @subject.lessons.exists?(lesson_type: "assessment") && (required_ids - completed_lesson_ids).empty?
      redirect_to subject_path(@subject.slug), alert: "Conclua todas as etapas e a avaliação final para liberar o comprovante."
      return
    end

    @completed_at = Time.current
    render :certificate
  end

  def periodic_table
    @title = "Tabela periódica"
    @intro = "Tabela de consulta interativa por símbolo e número atômico. As configurações eletrônicas resumidas e os usos são apresentados apenas para elementos selecionados."
    @elements = ELEMENTS.map { |element| element + element_position(element.first) }
    render :periodic_table
  end

  private

  ELEMENTS = [
    [ 1, "H", "Hidrogênio", "1s¹", "Matéria-prima de processos químicos e produção de amônia." ],
    [ 2, "He", "Hélio", "1s²", "Gás nobre usado em aplicações criogênicas e atmosferas controladas." ],
    [ 3, "Li", "Lítio", "[He] 2s¹", "Baterias e materiais cerâmicos; compostos requerem avaliação de risco." ],
    [ 4, "Be", "Berílio", "[He] 2s²", "Uso especializado em ligas; poeiras e compostos apresentam riscos graves." ],
    [ 5, "B", "Boro", "[He] 2s² 2p¹", "Vidros borossilicatados, detergentes e materiais." ],
    [ 6, "C", "Carbono", "[He] 2s² 2p²", "Química orgânica, materiais, combustíveis e processos biológicos." ],
    [ 7, "N", "Nitrogênio", "[He] 2s² 2p³", "Atmosferas inertes, fertilizantes e síntese de amônia." ],
    [ 8, "O", "Oxigênio", "[He] 2s² 2p⁴", "Oxidação, combustão e processos de tratamento; favorece incêndios." ],
    [ 9, "F", "Flúor", "[He] 2s² 2p⁵", "Fluoretos e materiais; substância elementar altamente reativa." ],
    [ 10, "Ne", "Neônio", "[He] 2s² 2p⁶", "Lâmpadas e aplicações em descargas elétricas." ],
    [ 11, "Na", "Sódio", "[Ne] 3s¹", "Compostos usados em vidros, tratamento e indústria química." ],
    [ 12, "Mg", "Magnésio", "[Ne] 3s²", "Ligas leves e compostos refratários." ],
    [ 13, "Al", "Alumínio", "[Ne] 3s² 3p¹", "Ligas, embalagens e estruturas; produção eletrolítica." ],
    [ 14, "Si", "Silício", "[Ne] 3s² 3p²", "Vidros, silicatos, cerâmicas e semicondutores." ],
    [ 15, "P", "Fósforo", "[Ne] 3s² 3p³", "Fertilizantes e bioquímica; formas alotrópicas têm riscos distintos." ],
    [ 16, "S", "Enxofre", "[Ne] 3s² 3p⁴", "Produção de ácido sulfúrico e vulcanização." ],
    [ 17, "Cl", "Cloro", "[Ne] 3s² 3p⁵", "Desinfecção e síntese química; gás tóxico e oxidante." ],
    [ 18, "Ar", "Argônio", "[Ne] 3s² 3p⁶", "Atmosferas de proteção em soldagem e instrumentos." ],
    [ 19, "K", "Potássio", "[Ar] 4s¹", "Sais usados em fertilizantes; metal reage vigorosamente com água." ],
    [ 20, "Ca", "Cálcio", "[Ar] 4s²", "Cimento, cal, tratamento de água e materiais." ],
    [ 21, "Sc", "Escândio", "[Ar] 3d¹ 4s²", "Ligas especiais e materiais de iluminação." ],
    [ 22, "Ti", "Titânio", "[Ar] 3d² 4s²", "Ligas resistentes à corrosão e pigmentos de TiO₂." ],
    [ 23, "V", "Vanádio", "[Ar] 3d³ 4s²", "Ligas de aço e catalisadores." ],
    [ 24, "Cr", "Cromo", "[Ar] 3d⁵ 4s¹", "Aços inoxidáveis e revestimentos; alguns compostos são perigosos." ],
    [ 25, "Mn", "Manganês", "[Ar] 3d⁵ 4s²", "Aços, pilhas e processos oxidativos." ],
    [ 26, "Fe", "Ferro", "[Ar] 3d⁶ 4s²", "Aços, catalisadores e equipamentos de processo." ],
    [ 27, "Co", "Cobalto", "[Ar] 3d⁷ 4s²", "Ligas, pigmentos e materiais para baterias." ],
    [ 28, "Ni", "Níquel", "[Ar] 3d⁸ 4s²", "Ligas resistentes à corrosão e catalisadores." ],
    [ 29, "Cu", "Cobre", "[Ar] 3d¹⁰ 4s¹", "Condutores, ligas, trocadores e superfícies antimicrobianas." ],
    [ 30, "Zn", "Zinco", "[Ar] 3d¹⁰ 4s²", "Galvanização, ligas e compostos industriais." ],
    [ 31, "Ga", "Gálio", "[Ar] 3d¹⁰ 4s² 4p¹", "Semicondutores e ligas de baixo ponto de fusão." ],
    [ 32, "Ge", "Germânio", "[Ar] 3d¹⁰ 4s² 4p²", "Semicondutores e óptica." ],
    [ 33, "As", "Arsênio", "[Ar] 3d¹⁰ 4s² 4p³", "Semicondutores especializados; muitos compostos são altamente tóxicos." ],
    [ 34, "Se", "Selênio", "[Ar] 3d¹⁰ 4s² 4p⁴", "Vidros e aplicações fotoelétricas; exposição requer controle." ],
    [ 35, "Br", "Bromo", "[Ar] 3d¹⁰ 4s² 4p⁵", "Síntese e retardantes de chama; elemento corrosivo e tóxico." ],
    [ 36, "Kr", "Criptônio", "[Ar] 3d¹⁰ 4s² 4p⁶", "Lâmpadas e aplicações ópticas." ],
    [ 37, "Rb", "Rubídio", "[Kr] 5s¹", "Pesquisa e células fotoelétricas; metal muito reativo." ],
    [ 38, "Sr", "Estrôncio", "[Kr] 5s²", "Pirotecnia especializada e cerâmicas." ],
    [ 39, "Y", "Ítrio", "[Kr] 4d¹ 5s²", "Fósforos, lasers e cerâmicas." ],
    [ 40, "Zr", "Zircônio", "[Kr] 4d² 5s²", "Ligas resistentes à corrosão e cerâmicas." ],
    [ 41, "Nb", "Nióbio", "[Kr] 4d⁴ 5s¹", "Aços microligados e supercondutores." ],
    [ 42, "Mo", "Molibdênio", "[Kr] 4d⁵ 5s¹", "Ligas e catalisadores." ],
    [ 43, "Tc", "Tecnécio", "[Kr] 4d⁵ 5s²", "Elemento radioativo usado em diagnóstico nuclear." ],
    [ 44, "Ru", "Rutênio", "[Kr] 4d⁷ 5s¹", "Catalisadores e materiais eletrônicos." ],
    [ 45, "Rh", "Ródio", "[Kr] 4d⁸ 5s¹", "Catalisadores automotivos e revestimentos." ],
    [ 46, "Pd", "Paládio", "[Kr] 4d¹⁰", "Catálise, sensores e armazenamento de hidrogênio." ],
    [ 47, "Ag", "Prata", "[Kr] 4d¹⁰ 5s¹", "Condutores, revestimentos e fotografia." ],
    [ 48, "Cd", "Cádmio", "[Kr] 4d¹⁰ 5s²", "Aplicações limitadas; elemento tóxico com controle rigoroso." ],
    [ 49, "In", "Índio", "[Kr] 4d¹⁰ 5s² 5p¹", "Revestimentos condutores e semicondutores." ],
    [ 50, "Sn", "Estanho", "[Kr] 4d¹⁰ 5s² 5p²", "Soldas, revestimentos e ligas." ],
    [ 51, "Sb", "Antimônio", "[Kr] 4d¹⁰ 5s² 5p³", "Ligas e retardantes; compostos demandam controle." ],
    [ 52, "Te", "Telúrio", "[Kr] 4d¹⁰ 5s² 5p⁴", "Materiais termoelétricos e ligas." ],
    [ 53, "I", "Iodo", "[Kr] 4d¹⁰ 5s² 5p⁵", "Antissépticos e reagentes; manuseio conforme FDS." ],
    [ 54, "Xe", "Xenônio", "[Kr] 4d¹⁰ 5s² 5p⁶", "Lâmpadas, propulsão e aplicações médicas." ],
    [ 55, "Cs", "Césio", "[Xe] 6s¹", "Relógios atômicos e pesquisa; metal extremamente reativo." ],
    [ 56, "Ba", "Bário", "[Xe] 6s²", "Fluidos de perfuração e materiais; muitos sais são tóxicos." ],
    [ 57, "La", "Lantânio", "[Xe] 5d¹ 6s²", "Óptica, catalisadores e ligas." ],
    [ 58, "Ce", "Cério", "[Xe] 4f¹ 5d¹ 6s²", "Polimento de vidro e catálise." ],
    [ 59, "Pr", "Praseodímio", "[Xe] 4f³ 6s²", "Ímãs e ligas especiais." ],
    [ 60, "Nd", "Neodímio", "[Xe] 4f⁴ 6s²", "Ímãs permanentes de alto desempenho." ],
    [ 61, "Pm", "Promécio", "[Xe] 4f⁵ 6s²", "Elemento radioativo usado em pesquisa especializada." ],
    [ 62, "Sm", "Samário", "[Xe] 4f⁶ 6s²", "Ímãs e absorção de nêutrons." ],
    [ 63, "Eu", "Európio", "[Xe] 4f⁷ 6s²", "Fósforos e materiais luminescentes." ],
    [ 64, "Gd", "Gadolínio", "[Xe] 4f⁷ 5d¹ 6s²", "Materiais magnéticos e aplicações médicas controladas." ],
    [ 65, "Tb", "Térbio", "[Xe] 4f⁹ 6s²", "Fósforos e ligas magnetoestritivas." ],
    [ 66, "Dy", "Disprósio", "[Xe] 4f¹⁰ 6s²", "Ímãs e materiais para altas temperaturas." ],
    [ 67, "Ho", "Hólmio", "[Xe] 4f¹¹ 6s²", "Lasers e materiais magnéticos." ],
    [ 68, "Er", "Érbio", "[Xe] 4f¹² 6s²", "Fibras ópticas e lasers." ],
    [ 69, "Tm", "Túlio", "[Xe] 4f¹³ 6s²", "Fontes de radiação e lasers especializados." ],
    [ 70, "Yb", "Itérbio", "[Xe] 4f¹⁴ 6s²", "Lasers e ligas especiais." ],
    [ 71, "Lu", "Lutécio", "[Xe] 4f¹⁴ 5d¹ 6s²", "Detectores e catalisadores especializados." ],
    [ 72, "Hf", "Háfnio", "[Xe] 4f¹⁴ 5d² 6s²", "Ligas resistentes ao calor e controle nuclear." ],
    [ 73, "Ta", "Tântalo", "[Xe] 4f¹⁴ 5d³ 6s²", "Componentes resistentes à corrosão e capacitores." ],
    [ 74, "W", "Tungstênio", "[Xe] 4f¹⁴ 5d⁴ 6s²", "Ligas duras e componentes de alta temperatura." ],
    [ 75, "Re", "Rênio", "[Xe] 4f¹⁴ 5d⁵ 6s²", "Superligas e catalisadores." ],
    [ 76, "Os", "Ósmio", "[Xe] 4f¹⁴ 5d⁶ 6s²", "Ligas e catalisadores; compostos requerem extrema cautela." ],
    [ 77, "Ir", "Irídio", "[Xe] 4f¹⁴ 5d⁷ 6s²", "Ligas resistentes e eletrodos." ],
    [ 78, "Pt", "Platina", "[Xe] 4f¹⁴ 5d⁹ 6s¹", "Catalisadores, eletrodos e sensores." ],
    [ 79, "Au", "Ouro", "[Xe] 4f¹⁴ 5d¹⁰ 6s¹", "Conectores, revestimentos e catálise." ],
    [ 80, "Hg", "Mercúrio", "[Xe] 4f¹⁴ 5d¹⁰ 6s²", "Uso altamente restrito; metal e vapores são tóxicos." ],
    [ 81, "Tl", "Tálio", "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p¹", "Elemento muito tóxico, de uso especializado." ],
    [ 82, "Pb", "Chumbo", "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p²", "Baterias e blindagem; elemento tóxico e controlado." ],
    [ 83, "Bi", "Bismuto", "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p³", "Ligas de baixo ponto de fusão e aplicações farmacêuticas." ],
    [ 84, "Po", "Polônio", "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p⁴", "Elemento radioativo de uso restrito." ],
    [ 85, "At", "Astato", "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p⁵", "Elemento radioativo extremamente raro; pesquisa especializada." ],
    [ 86, "Rn", "Radônio", "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p⁶", "Gás radioativo natural; importante em monitoramento ambiental." ],
    [ 87, "Fr", "Frâncio", "[Rn] 7s¹", "Elemento radioativo muito raro." ],
    [ 88, "Ra", "Rádio", "[Rn] 7s²", "Elemento radioativo de uso restrito." ],
    [ 89, "Ac", "Actínio", "[Rn] 6d¹ 7s²", "Elemento radioativo usado em pesquisa." ],
    [ 90, "Th", "Tório", "[Rn] 6d² 7s²", "Combustível nuclear potencial e material radioativo." ],
    [ 91, "Pa", "Protactínio", "[Rn] 5f² 6d¹ 7s²", "Elemento radioativo raro." ],
    [ 92, "U", "Urânio", "[Rn] 5f³ 6d¹ 7s²", "Combustível nuclear e elemento radioativo sujeito a controle." ],
    [ 93, "Np", "Netúnio", "[Rn] 5f⁴ 6d¹ 7s²", "Elemento radioativo sintético." ],
    [ 94, "Pu", "Plutônio", "[Rn] 5f⁶ 7s²", "Elemento radioativo e material nuclear rigorosamente controlado." ],
    [ 95, "Am", "Amerício", "[Rn] 5f⁷ 7s²", "Fontes radioativas encapsuladas em aplicações controladas." ],
    [ 96, "Cm", "Cúrio", "[Rn] 5f⁷ 6d¹ 7s²", "Elemento radioativo sintético." ],
    [ 97, "Bk", "Berquélio", "[Rn] 5f⁹ 7s²", "Elemento radioativo sintético." ],
    [ 98, "Cf", "Califórnio", "[Rn] 5f¹⁰ 7s²", "Fonte de nêutrons de uso rigorosamente controlado." ],
    [ 99, "Es", "Einstênio", "[Rn] 5f¹¹ 7s²", "Elemento radioativo sintético." ],
    [ 100, "Fm", "Férmio", "[Rn] 5f¹² 7s²", "Elemento radioativo sintético." ],
    [ 101, "Md", "Mendelévio", "[Rn] 5f¹³ 7s²", "Elemento radioativo sintético." ],
    [ 102, "No", "Nobélio", "[Rn] 5f¹⁴ 7s²", "Elemento radioativo sintético." ],
    [ 103, "Lr", "Laurêncio", "[Rn] 5f¹⁴ 7s² 7p¹", "Elemento radioativo sintético." ],
    [ 104, "Rf", "Rutherfórdio", "[Rn] 5f¹⁴ 6d² 7s²", "Elemento sintético e radioativo." ],
    [ 105, "Db", "Dúbnio", "[Rn] 5f¹⁴ 6d³ 7s²", "Elemento sintético e radioativo." ],
    [ 106, "Sg", "Seabórgio", "[Rn] 5f¹⁴ 6d⁴ 7s²", "Elemento sintético e radioativo." ],
    [ 107, "Bh", "Bóhrio", "[Rn] 5f¹⁴ 6d⁵ 7s²", "Elemento sintético e radioativo." ],
    [ 108, "Hs", "Hássio", "[Rn] 5f¹⁴ 6d⁶ 7s²", "Elemento sintético e radioativo." ],
    [ 109, "Mt", "Meitnério", "[Rn] 5f¹⁴ 6d⁷ 7s²", "Elemento sintético e radioativo." ],
    [ 110, "Ds", "Darmstádtio", "[Rn] 5f¹⁴ 6d⁸ 7s²", "Elemento sintético e radioativo." ],
    [ 111, "Rg", "Roentgênio", "[Rn] 5f¹⁴ 6d⁹ 7s²", "Elemento sintético e radioativo." ],
    [ 112, "Cn", "Copernício", "[Rn] 5f¹⁴ 6d¹⁰ 7s²", "Elemento sintético e radioativo." ],
    [ 113, "Nh", "Nihônio", "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p¹", "Elemento sintético e radioativo." ],
    [ 114, "Fl", "Fleróvio", "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p²", "Elemento sintético e radioativo." ],
    [ 115, "Mc", "Moscóvio", "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p³", "Elemento sintético e radioativo." ],
    [ 116, "Lv", "Livermório", "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p⁴", "Elemento sintético e radioativo." ],
    [ 117, "Ts", "Tenessino", "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p⁵", "Elemento sintético e radioativo." ],
    [ 118, "Og", "Oganessônio", "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p⁶", "Elemento sintético; propriedades químicas experimentais são limitadas." ]
  ].freeze

  def element_position(number)
    case number
    when 1 then [ 1, 1 ]
    when 2 then [ 18, 1 ]
    when 3..4 then [ number - 2, 2 ]
    when 5..10 then [ number + 8, 2 ]
    when 11..12 then [ number - 10, 3 ]
    when 13..18 then [ number, 3 ]
    when 19..54 then [ ((number - 19) % 18) + 1, ((number - 19) / 18) + 4 ]
    when 55..56 then [ number - 54, 6 ]
    when 57..71 then [ number - 54, 9 ]
    when 72..86 then [ number - 68, 6 ]
    when 87..88 then [ number - 86, 7 ]
    when 89..103 then [ number - 86, 10 ]
    else [ number - 100, 7 ]
    end
  end
end
