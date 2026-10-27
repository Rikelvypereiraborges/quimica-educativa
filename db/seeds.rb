catalog = [
  {
    name: "Química Analítica", slug: "quimica-analitica", icon: "AN", color: "#c5e1cc",
    description: "Descubra o que existe em uma amostra e em que quantidade.",
    lessons: [
      {
        title: "Qualitativa e quantitativa", summary: "Duas perguntas fundamentais sobre qualquer amostra.",
        concept: "A análise qualitativa identifica quais substâncias ou íons estão presentes. A análise quantitativa determina quanto de cada componente existe na amostra.",
        example: "Um teste de água pode identificar a presença de cloreto (qualitativa) e medir sua concentração em mg/L (quantitativa).",
        question: "Qual pergunta corresponde a uma análise quantitativa?",
        option_a: "Quais íons estão presentes na amostra?", option_b: "Qual é a concentração de cálcio na água?", option_c: "A amostra contém ferro?", option_d: "Quais substâncias formam o sólido?",
        correct_option: "b", explanation: "Concentração é uma medida de quantidade, por isso a pergunta é quantitativa."
      },
      {
        title: "Concentração comum", summary: "Relacione a massa de soluto ao volume da solução.",
        concept: "A concentração comum relaciona a massa do soluto ao volume da solução: C = m / V. No SI, é comum expressá-la em g/L.",
        example: "Dissolver 10 g de sal e completar o volume para 2 L resulta em concentração de 5 g/L.",
        question: "Uma solução contém 12 g de soluto em 3 L. Qual é sua concentração?",
        option_a: "4 g/L", option_b: "9 g/L", option_c: "15 g/L", option_d: "36 g/L",
        correct_option: "a", explanation: "Aplicando C = m / V: 12 g / 3 L = 4 g/L."
      },
      {
        title: "Titulação e ponto de equivalência", summary: "Entenda como uma solução pode revelar a concentração de outra.",
        concept: "Na titulação, uma solução de concentração conhecida reage com a amostra. No ponto de equivalência, as quantidades de reagentes seguem a proporção da equação química balanceada.",
        example: "Uma solução básica de concentração conhecida pode ser adicionada a uma amostra ácida até que um indicador mostre o ponto final.",
        question: "Para que serve principalmente uma titulação?",
        option_a: "Medir a massa de um sólido sem balança.", option_b: "Resfriar uma reação química.", option_c: "Determinar a concentração de uma amostra por reação.", option_d: "Separar líquidos por tamanho de partícula.",
        correct_option: "c", explanation: "Na titulação, o volume de reagente padrão consumido permite calcular a concentração da amostra."
      }
    ]
  },
  {
    name: "Química Orgânica", slug: "quimica-organica", icon: "OR", color: "#f0d7ac",
    description: "Explore as moléculas de carbono que fazem parte da vida.",
    lessons: [
      {
        title: "O carbono e suas ligações", summary: "Por que o carbono está no centro da química orgânica?",
        concept: "O carbono pode formar quatro ligações covalentes e conectar-se a outros átomos de carbono. Essa versatilidade permite cadeias e estruturas moleculares muito diversas.",
        example: "No metano (CH₄), um átomo de carbono faz quatro ligações simples com átomos de hidrogênio.",
        question: "Quantas ligações covalentes o carbono costuma formar em moléculas orgânicas?",
        option_a: "Uma", option_b: "Duas", option_c: "Quatro", option_d: "Seis",
        correct_option: "c", explanation: "Em estruturas orgânicas comuns, o carbono é tetravalente e forma quatro ligações."
      },
      {
        title: "Hidrocarbonetos", summary: "Conheça moléculas feitas somente de carbono e hidrogênio.",
        concept: "Hidrocarbonetos são compostos formados exclusivamente por carbono e hidrogênio. Alcanos têm apenas ligações simples entre carbonos; alcenos apresentam ao menos uma ligação dupla.",
        example: "Etano (C₂H₆) é um alcano; eteno (C₂H₄) é um alceno, com uma ligação dupla C=C.",
        question: "Qual característica identifica um alceno?",
        option_a: "Possui ao menos uma ligação dupla entre carbonos.", option_b: "Contém necessariamente oxigênio.", option_c: "Tem somente ligações simples.", option_d: "É formado por um único átomo de carbono.",
        correct_option: "a", explanation: "Alcenos são hidrocarbonetos que apresentam ao menos uma ligação dupla C=C."
      },
      {
        title: "Grupos funcionais", summary: "Identifique regiões que dão propriedades características às moléculas.",
        concept: "Grupos funcionais são conjuntos de átomos que conferem propriedades químicas características a uma família de compostos orgânicos.",
        example: "O grupo hidroxila (−OH) caracteriza os álcoois; no etanol, ele está ligado a uma cadeia de dois carbonos.",
        question: "Qual grupo funcional caracteriza os álcoois?",
        option_a: "Carboxila (−COOH)", option_b: "Hidroxila (−OH)", option_c: "Amina (−NH₂)", option_d: "Carbonila (C=O)",
        correct_option: "b", explanation: "A hidroxila (−OH) ligada a um carbono saturado caracteriza a função álcool."
      }
    ]
  },
  {
    name: "Química Inorgânica", slug: "quimica-inorganica", icon: "IN", color: "#e5c4c0",
    description: "Compreenda elementos, compostos e suas transformações.",
    lessons: [
      {
        title: "Átomos, íons e tabela periódica", summary: "A estrutura que organiza os elementos químicos.",
        concept: "O número atômico corresponde ao número de prótons e identifica um elemento. Um íon se forma quando um átomo ganha ou perde elétrons.",
        example: "O sódio tem número atômico 11. Quando perde um elétron, forma o cátion Na⁺.",
        question: "O que identifica um elemento químico?",
        option_a: "Seu número de nêutrons.", option_b: "Seu número de prótons.", option_c: "A quantidade de moléculas.", option_d: "Seu estado físico.",
        correct_option: "b", explanation: "O número de prótons, chamado número atômico, define qual é o elemento."
      },
      {
        title: "Ácidos e bases", summary: "Uma introdução a duas classes importantes de substâncias.",
        concept: "Pela definição de Arrhenius, em água um ácido libera íons H⁺ e uma base libera íons OH⁻. Essas definições se aplicam a soluções aquosas.",
        example: "Em água, o HCl ioniza liberando H⁺; o NaOH se dissocia liberando OH⁻.",
        question: "De acordo com Arrhenius, o que uma base libera em solução aquosa?",
        option_a: "Íons H⁺", option_b: "Elétrons livres", option_c: "Íons OH⁻", option_d: "Prótons e nêutrons",
        correct_option: "c", explanation: "Bases de Arrhenius liberam íons hidróxido (OH⁻) em solução aquosa."
      },
      {
        title: "Sais e óxidos", summary: "Reconheça outras famílias comuns de compostos inorgânicos.",
        concept: "Sais são compostos iônicos formados por cátions e ânions. Óxidos são compostos binários nos quais o oxigênio está ligado a outro elemento.",
        example: "O cloreto de sódio (NaCl) é um sal. O dióxido de carbono (CO₂) é um óxido.",
        question: "Qual dos compostos abaixo é um sal?",
        option_a: "NaCl", option_b: "O₂", option_c: "H₂O", option_d: "N₂",
        correct_option: "a", explanation: "NaCl é um composto iônico formado por Na⁺ e Cl⁻, portanto é um sal."
      }
    ]
  },
  {
    name: "Físico-Química", slug: "fisico-quimica", icon: "FQ", color: "#d3d0eb",
    description: "Investigue a energia, a velocidade e o equilíbrio das reações.",
    lessons: [
      {
        title: "Matéria e estados físicos", summary: "Observe como a matéria se comporta e se transforma.",
        concept: "A matéria tem massa e ocupa espaço. Em sólidos, líquidos e gases, partículas apresentam diferentes graus de organização e liberdade de movimento.",
        example: "Ao aquecer gelo, a água passa do estado sólido para o líquido: uma mudança física sem alteração da composição H₂O.",
        question: "O que ocorre com a composição da água ao derreter gelo?",
        option_a: "Transforma-se em oxigênio.", option_b: "Permanece H₂O; ocorre uma mudança física.", option_c: "Forma uma nova substância.", option_d: "Perde todos os seus átomos de hidrogênio.",
        correct_option: "b", explanation: "A fusão muda o estado físico, mas a composição química continua sendo H₂O."
      },
      {
        title: "Energia nas reações", summary: "Perceba as trocas de energia durante uma transformação.",
        concept: "Uma transformação exotérmica libera energia para o ambiente. Uma transformação endotérmica absorve energia do ambiente.",
        example: "A combustão do gás de cozinha libera calor: é um processo exotérmico.",
        question: "Uma reação que absorve calor do ambiente é:",
        option_a: "Exotérmica.", option_b: "Isotópica.", option_c: "Endotérmica.", option_d: "Catalítica.",
        correct_option: "c", explanation: "Processos endotérmicos absorvem energia térmica do ambiente."
      },
      {
        title: "Velocidade das reações", summary: "Fatores que tornam uma reação mais lenta ou mais rápida.",
        concept: "A velocidade de uma reação pode mudar com fatores como temperatura, concentração, superfície de contato e presença de catalisadores.",
        example: "Um comprimido efervescente triturado tende a reagir mais rápido porque apresenta maior superfície de contato.",
        question: "Por que triturar um sólido pode acelerar sua reação?",
        option_a: "Reduz a superfície em contato.", option_b: "Aumenta a superfície de contato.", option_c: "Elimina os reagentes.", option_d: "Diminui sempre a temperatura.",
        correct_option: "b", explanation: "Maior superfície exposta permite mais contato entre os reagentes."
      }
    ]
  },
  {
    name: "Operações Básicas de Laboratório", slug: "operacoes-basicas-laboratorio", icon: "LB", color: "#c4dce4",
    description: "Conheça os instrumentos, as medidas e a segurança em laboratório.",
    lessons: [
      {
        title: "Segurança e boas práticas", summary: "Hábitos essenciais antes de iniciar qualquer experimento.",
        concept: "Óculos de proteção, jaleco e calçado fechado ajudam a reduzir riscos. Leia os procedimentos e os rótulos antes de manusear substâncias; nunca pipete com a boca.",
        example: "Ao preparar uma solução ácida, use óculos e luvas adequados e siga o procedimento orientado pelo laboratório.",
        question: "Qual prática é segura ao pipetar um líquido?",
        option_a: "Aspirar com a boca.", option_b: "Usar uma pipeta com dispositivo de sucção.", option_c: "Cheirar diretamente o recipiente.", option_d: "Pipetar sem conferir o rótulo.",
        correct_option: "b", explanation: "Use sempre pera ou pipetador. Pipetar com a boca é uma prática perigosa e proibida."
      },
      {
        title: "Medidas de volume e massa", summary: "Escolha o instrumento adequado para cada medida.",
        concept: "A balança mede massa. Para volumes, proveta e pipeta são instrumentos graduados; o balão volumétrico é indicado para preparar um volume final preciso.",
        example: "Para preparar 250 mL de solução com volume final definido, use um balão volumétrico de 250 mL.",
        question: "Qual instrumento é indicado para preparar um volume final definido com precisão?",
        option_a: "Béquer.", option_b: "Erlenmeyer.", option_c: "Balão volumétrico.", option_d: "Vidro de relógio.",
        correct_option: "c", explanation: "O balão volumétrico é calibrado para conter um volume específico com precisão."
      },
      {
        title: "Filtração e separação", summary: "Separe componentes de misturas usando suas propriedades físicas.",
        concept: "Na filtração, um filtro retém partículas sólidas enquanto o fluido passa. A gravidade pode conduzir o processo; o vácuo pode acelerá-lo.",
        example: "Para separar areia da água, a mistura pode ser vertida através de um papel de filtro colocado em um funil.",
        question: "Na filtração simples de uma mistura de areia e água, o que fica retido no papel?",
        option_a: "A areia.", option_b: "A água.", option_c: "O vapor de água.", option_d: "O funil.",
        correct_option: "a", explanation: "A areia é retida pelo filtro; a água atravessa e é recolhida como filtrado."
      }
    ]
  },
  {
    name: "Operações Unitárias", slug: "operacoes-unitarias", icon: "OU", color: "#e6d5aa",
    description: "Entenda os processos de separação e transformação em escala.",
    lessons: [
      {
        title: "O que são operações unitárias?", summary: "Processos fundamentais em laboratórios e na indústria.",
        concept: "Operações unitárias são etapas físicas de um processo, como mistura, filtração, secagem e destilação. Elas podem ser combinadas para fabricar um produto.",
        example: "Na produção de água purificada, a filtração pode ser uma das operações usadas para remover partículas sólidas.",
        question: "Qual alternativa apresenta uma operação unitária?",
        option_a: "Filtração.", option_b: "Síntese de uma nova molécula.", option_c: "Uma ligação covalente.", option_d: "A formação de um íon.",
        correct_option: "a", explanation: "Filtração é uma operação física de separação; as outras alternativas descrevem conceitos ou transformações químicas."
      },
      {
        title: "Destilação", summary: "Aproveite diferenças de volatilidade para separar componentes.",
        concept: "A destilação vaporiza componentes e depois condensa seus vapores. A técnica pode separar líquidos com diferentes pontos de ebulição ou recuperar um solvente.",
        example: "Na destilação simples de água salgada, a água vaporiza e pode ser condensada em outro recipiente, enquanto o sal permanece no balão.",
        question: "Em qual propriedade se baseia principalmente a destilação?",
        option_a: "Na diferença de pontos de ebulição e volatilidade.", option_b: "Na cor dos recipientes.", option_c: "No formato das moléculas apenas.", option_d: "Na dureza dos sólidos.",
        correct_option: "a", explanation: "A vaporização e a condensação aproveitam as diferenças de volatilidade dos componentes."
      },
      {
        title: "Transferência de calor", summary: "A energia térmica se desloca de diversas maneiras.",
        concept: "Calor é energia transferida devido a uma diferença de temperatura. Condução, convecção e radiação são mecanismos diferentes de transferência térmica.",
        example: "Em um trocador de calor, dois fluidos em temperaturas diferentes trocam energia através de uma superfície, normalmente sem se misturar.",
        question: "Em um trocador de calor, o que é transferido entre os fluidos?",
        option_a: "Calor devido à diferença de temperatura.", option_b: "Sempre a mesma massa de líquido.", option_c: "Necessariamente matéria entre as correntes.", option_d: "Apenas eletricidade.",
        correct_option: "a", explanation: "O equipamento promove transferência de energia térmica entre correntes em diferentes temperaturas."
      }
    ]
  }
]

catalog.each_with_index do |subject_data, subject_index|
  lessons_data = subject_data.delete(:lessons)
  subject = Subject.find_or_initialize_by(slug: subject_data[:slug])
  subject.update!(subject_data.merge(position: subject_index + 1))

  lessons_data.each_with_index do |lesson_data, lesson_index|
    lesson = subject.lessons.find_or_initialize_by(title: lesson_data[:title])
    lesson.update!(lesson_data.merge(position: lesson_index + 1, xp: 10))
  end
end
