require_relative "seed_assessments"
require_relative "seed_curriculum"
require_relative "seed_expanded_foundations"
require_relative "seed_expanded_processes"
require_relative "seed_expanded_professional"
require_relative "seed_module_questions"

catalog = [
  {
    name: "Química Analítica", slug: "quimica-analitica", icon: "AN", color: "#c5e1cc",
    description: "Planeje análises, prepare soluções e interprete resultados com confiança.",
    lessons: [
      {
        title: "Análise qualitativa e quantitativa", summary: "Identifique as espécies presentes e determine quanto há de cada uma.",
        concept: "A Química Analítica reúne métodos para separar, identificar e determinar a quantidade dos componentes de uma amostra.\n\nA análise qualitativa pergunta quais espécies químicas estão presentes. A análise quantitativa expressa em números a quantidade ou concentração de uma espécie, chamada analito.\n\nUma investigação começa ao transformar uma dúvida ampla em uma pergunta específica que possa ser respondida por medidas químicas.",
        example: "Para avaliar água, identificar se há íons cloreto é uma análise qualitativa. Medir a concentração desses íons, por exemplo em mg/L, é uma análise quantitativa.",
        question: "Qual pergunta corresponde a uma análise quantitativa?",
        option_a: "Quais íons estão presentes na amostra?", option_b: "Qual é a concentração de cálcio na água?", option_c: "A amostra contém ferro?", option_d: "Quais substâncias formam o sólido?",
        correct_option: "b", explanation: "Concentração é uma medida de quantidade, por isso a pergunta é quantitativa."
      },
      {
        title: "Concentração e unidades", summary: "Expresse a quantidade de soluto com unidades claras e adequadas.",
        concept: "Solução é uma mistura homogênea. O soluto é a substância dissolvida e o solvente é o meio que a dissolve. Concentração relaciona a quantidade de soluto a uma quantidade definida de solução ou, em algumas unidades, de solvente.\n\nConcentração em massa: C = massa do soluto (g) / volume da solução (L), expressa em g/L. Concentração em quantidade de matéria (molaridade): c = quantidade de soluto (mol) / volume da solução (L), em mol/L.\n\nTambém se usam porcentagens, como % m/m (g de soluto por 100 g de solução) e % m/v (g por 100 mL de solução). ppm e ppb são razões em massa; em água muito diluída, podem ser aproximadas por mg/L e µg/L, respectivamente. Sempre informe a base e as unidades, pois dizer apenas ppm ou % pode ser ambíguo.\n\nNormalidade (equivalentes por litro) aparece em materiais de análise clássica, mas o equivalente depende da reação considerada. Ao usá-la, especifique a reação; mol/L costuma ser mais direto para comunicar a concentração.",
        example: "Uma solução preparada com 10 g de soluto e volume final de 2 L tem concentração em massa de 5 g/L. Se uma alíquota for transferida para outro frasco, a concentração permanece a mesma enquanto não houver diluição ou perda de soluto.",
        question: "Uma solução contém 12 g de soluto em 3 L. Qual é sua concentração?",
        option_a: "4 g/L", option_b: "9 g/L", option_c: "15 g/L", option_d: "36 g/L",
        correct_option: "a", explanation: "Aplicando C = m / V: 12 g / 3 L = 4 g/L."
      },
      {
        title: "Titulações e análise gravimétrica", summary: "Conheça dois caminhos clássicos para quantificar um analito.",
        concept: "Na análise volumétrica por titulação, adiciona-se à amostra uma solução de concentração conhecida (titulante) até que a reação com o analito alcance a proporção estequiométrica prevista pela equação balanceada. O volume gasto ajuda a calcular a quantidade do analito.\n\nO ponto de equivalência é a condição estequiométrica da reação. O ponto final é o sinal observado no experimento, por exemplo a mudança de cor de um indicador, que deve ocorrer o mais próximo possível da equivalência.\n\nAs titulações podem explorar reações ácido-base, precipitação, complexação ou oxidação-redução. Na análise gravimétrica, a quantidade do analito é determinada a partir da massa de um produto de composição conhecida. Cada método exige condições e cuidados próprios.",
        example: "Na análise de acidez de uma amostra, uma solução básica padronizada pode ser adicionada gradualmente. Relacionando o volume consumido à reação balanceada, calcula-se a quantidade de ácido.",
        question: "O que permite calcular a quantidade de analito em uma titulação?",
        option_a: "A cor do recipiente usado.", option_b: "A massa do titulante antes da reação, sem outras informações.", option_c: "O volume de titulante de concentração conhecida e a proporção da reação.", option_d: "A temperatura ambiente, independentemente da reação.",
        correct_option: "c", explanation: "O cálculo combina a concentração e o volume do titulante com a estequiometria da reação."
      },
      {
        title: "Planejamento do método analítico", summary: "Escolha uma abordagem que responda à pergunta sem comprometer a amostra.",
        concept: "A escolha do método depende da pergunta analítica, da concentração esperada do analito, da exatidão necessária, da composição da amostra, do número de amostras e do tempo disponível.\n\nUma espécie majoritária pode ser medida por métodos clássicos, enquanto concentrações muito baixas podem exigir técnicas instrumentais mais sensíveis. Isso depende do analito e da matriz: não existe um método melhor para todos os problemas.\n\nInterferentes podem alterar o sinal ou a reação do analito; conhecer a composição aproximada da amostra ajuda a detectá-los e escolher como controlá-los. O método também deve evitar perda do analito, contaminação, danos à amostra e riscos desnecessários.",
        example: "Para medir um contaminante em nível muito baixo numa fruta, o plano precisa considerar a matriz, a sensibilidade exigida, possíveis interferentes e o preparo que permita extrair o analito sem contaminá-lo.",
        question: "Qual conjunto de informações ajuda a escolher um método de análise?",
        option_a: "Somente a cor e o formato do recipiente.", option_b: "A concentração esperada, a matriz, os interferentes e a exatidão necessária.", option_c: "Apenas o nome comercial do reagente.", option_d: "Somente a ordem em que as amostras chegaram.",
        correct_option: "b", explanation: "A escolha considera o nível do analito, a matriz e os objetivos de qualidade e execução da análise."
      },
      {
        title: "Amostragem, matriz e analito", summary: "Obtenha uma porção representativa antes de iniciar as medidas.",
        concept: "A amostra é a porção de material coletada para análise. A amostragem deve selecionar material representativo do lote ou população, para que o resultado descreva aquilo que se deseja investigar.\n\nA amostra bruta pode precisar de pré-tratamento e preparo até se tornar homogênea e adequada à análise. O analito é a espécie que interessa medir; a matriz é o conjunto das demais substâncias que compõem a amostra e podem influenciar a medida.\n\nAmostras complexas, como solos, alimentos e tecidos, podem ser heterogêneas, instáveis ou difíceis de dissolver. Dividir uma amostra mal homogeneizada não garante que cada alíquota represente o lote.",
        example: "Para estimar a dureza de uma água, coleta-se uma amostra representativa, prepara-se o material conforme o método e determina-se cálcio e magnésio como analitos. Os demais componentes dissolvidos formam a matriz.",
        question: "Em uma análise de cálcio na água, o que é a matriz?",
        option_a: "O conjunto de substâncias da amostra além do analito de interesse.", option_b: "Apenas o instrumento usado para medir.", option_c: "O valor numérico final do resultado.", option_d: "O nome dado à etapa de titulação.",
        correct_option: "a", explanation: "Matriz é o conjunto de substâncias que compõem a amostra; cálcio é o analito que se deseja medir."
      },
      {
        title: "Preparo de soluções e diluição", summary: "Prepare uma concentração definida e calcule uma diluição.",
        concept: "Para preparar uma solução a partir de um reagente puro, calcula-se e pesa-se a quantidade necessária, dissolve-se o soluto e ajusta-se o volume final em material volumétrico apropriado. A concentração depende do volume final, não apenas da quantidade de solvente inicialmente usada.\n\nAo diluir uma solução, transfere-se uma alíquota da solução concentrada e completa-se até o volume final desejado. Se não houver reação nem perda de soluto, a quantidade de matéria transferida se conserva: C₁V₁ = C₂V₂, usando unidades compatíveis.\n\nAlguns reagentes precisam ser padronizados para conhecer sua concentração real antes de serem usados em uma análise. Siga o procedimento de segurança do laboratório; ao diluir ácidos, adicione o ácido à água, nunca água ao ácido.",
        example: "Para preparar 100 mL de solução 0,20 mol/L a partir de uma solução 1,0 mol/L, calcule V₁ = (0,20 × 100) / 1,0 = 20 mL. Transfira 20 mL da solução concentrada para um balão de 100 mL e complete até a marca.",
        question: "Que volume de solução 1,0 mol/L é necessário para preparar 100 mL de solução 0,20 mol/L?",
        option_a: "20 mL", option_b: "5 mL", option_c: "80 mL", option_d: "200 mL",
        correct_option: "a", explanation: "Pela relação C₁V₁ = C₂V₂, V₁ = (0,20 × 100 mL) / 1,0 = 20 mL."
      },
      {
        title: "Réplicas, incerteza e resultados", summary: "Avalie a qualidade dos dados e comunique o resultado com clareza.",
        concept: "Analisar alíquotas replicadas ajuda a observar a variação das medidas e avaliar a incerteza. As variáveis do método e os interferentes precisam ser controlados para não comprometer o resultado.\n\nTratamento estatístico e comparação com padrões analíticos certificados podem apoiar a avaliação dos dados, conforme o método. Réplicas ajudam a revelar dispersão, mas não corrigem sozinhas um erro sistemático compartilhado, como um instrumento mal calibrado.\n\nO resultado deve trazer unidades e base de concentração claras. Uma medida química pode embasar decisões de saúde, ambiente e controle de qualidade; por isso, cada etapa, desde a amostragem até a apresentação, importa.",
        example: "Se três alíquotas da mesma amostra dão resultados diferentes, a dispersão alerta para a incerteza. Antes de relatar um valor, verifique o método, a calibração, as unidades e possíveis interferências.",
        question: "Qual é uma utilidade de analisar alíquotas replicadas?",
        option_a: "Garantir que qualquer interferente desapareça.", option_b: "Substituir a calibração do instrumento.", option_c: "Eliminar automaticamente todo erro sistemático.", option_d: "Avaliar a variação entre medidas e a incerteza do resultado.",
        correct_option: "d", explanation: "Réplicas permitem avaliar a dispersão, mas não eliminam automaticamente vieses sistemáticos."
      },
      {
        lesson_type: "assessment",
        title: "Teste final: fundamentos da Química Analítica", summary: "Dez questões para revisar os conceitos desta trilha.",
        concept: "Este teste reúne os conceitos das aulas de Química Analítica. Leia cada questão com atenção às unidades, às condições da amostra e ao objetivo da medida. Para concluir a trilha, acerte pelo menos 70% das questões.",
        example: "Você pode consultar as explicações das aulas antes de começar. Se não alcançar a pontuação mínima, revise os comentários das questões e tente novamente.",
        question: "Responda às dez questões abaixo.",
        option_a: "Respostas disponíveis nas questões do teste.", option_b: "Respostas disponíveis nas questões do teste.",
        option_c: "Respostas disponíveis nas questões do teste.", option_d: "Respostas disponíveis nas questões do teste.",
        correct_option: "a", explanation: "Cada questão apresenta suas próprias alternativas e explicação.",
        quiz_questions: [
          {
            question: "Qual alternativa descreve uma pergunta quantitativa?",
            option_a: "Quais espécies estão presentes na amostra?", option_b: "Qual é a concentração de cálcio na água?", option_c: "A amostra contém cloreto?", option_d: "Quais substâncias compõem o sólido?",
            correct_option: "b", explanation: "Uma concentração expressa a quantidade de uma espécie, por isso responde a uma pergunta quantitativa."
          },
          {
            question: "Ao selecionar um método, qual conjunto de fatores deve ser considerado?",
            option_a: "Somente a cor do recipiente e a ordem de chegada.", option_b: "Apenas o preço do reagente.", option_c: "Concentração esperada, matriz, interferentes e exatidão necessária.", option_d: "Somente o nome da substância analisada.",
            correct_option: "c", explanation: "O método precisa atender à faixa de concentração e ao objetivo, considerando a composição e os interferentes da amostra."
          },
          {
            question: "Por que é importante que a amostra coletada represente o lote?",
            option_a: "Para que o resultado descreva adequadamente o material que se deseja investigar.", option_b: "Para dispensar o preparo da amostra em qualquer caso.", option_c: "Para assegurar que a matriz contenha apenas o analito.", option_d: "Para que todas as amostras tenham a mesma cor.",
            correct_option: "a", explanation: "Sem uma amostragem representativa, uma medida correta pode não descrever o lote ou a população de interesse."
          },
          {
            question: "Uma amostra contém 2,70 g de NaCl em 100 mL de solução. Usando massa molar 58,44 g/mol, qual é a concentração aproximada?",
            option_a: "0,0462 mol/L", option_b: "0,462 mol/L", option_c: "4,62 mol/L", option_d: "46,2 mol/L",
            correct_option: "b", explanation: "2,70 / 58,44 = 0,0462 mol em 0,100 L; logo, c = 0,462 mol/L."
          },
          {
            question: "Uma solução 4% (m/v) contém:",
            option_a: "4 g de soluto em 100 g de solução.", option_b: "4 mol de soluto em 100 mL de solução.", option_c: "4 mL de soluto em 100 g de solução.", option_d: "4 g de soluto em 100 mL de solução.",
            correct_option: "d", explanation: "Porcentagem massa/volume expressa gramas de soluto por 100 mL de solução."
          },
          {
            question: "O que expressa a normalidade de uma solução?",
            option_a: "A massa total da amostra em gramas.", option_b: "O volume de solvente em mililitros.", option_c: "A quantidade de equivalentes por litro, dependente da reação considerada.", option_d: "O número de átomos por molécula, sem relação com a reação.",
            correct_option: "c", explanation: "Normalidade é expressa em equivalentes por litro; o equivalente depende da reação, que deve ser especificada."
          },
          {
            question: "Que volume de uma solução 1,0 mol/L é necessário para preparar 100 mL de solução 0,20 mol/L?",
            option_a: "20 mL", option_b: "5 mL", option_c: "80 mL", option_d: "200 mL",
            correct_option: "a", explanation: "C₁V₁ = C₂V₂; portanto, V₁ = (0,20 × 100) / 1,0 = 20 mL."
          },
          {
            question: "O ponto de equivalência de uma titulação é:",
            option_a: "O instante em que o recipiente fica cheio.", option_b: "A condição em que os reagentes estão na proporção estequiométrica da reação.", option_c: "Sempre o momento em que a solução muda de cor, independentemente da reação.", option_d: "O volume inicial da amostra.",
            correct_option: "b", explanation: "A equivalência é definida pela estequiometria; a mudança observada do indicador é o ponto final e deve se aproximar dela."
          },
          {
            question: "O que as medidas replicadas ajudam a avaliar?",
            option_a: "A identidade do recipiente usado.", option_b: "A eliminação automática de interferentes.", option_c: "A correção de qualquer erro sistemático.", option_d: "A dispersão das medidas e a incerteza.",
            correct_option: "d", explanation: "Réplicas ajudam a observar a variação aleatória, mas não eliminam um viés sistemático comum."
          },
          {
            question: "Em água muito diluída, assumindo densidade próxima de 1 kg/L, 5 mg/L corresponde aproximadamente a:",
            option_a: "5% (m/m).", option_b: "5 ppb (m/m).", option_c: "5 ppm (m/m).", option_d: "5 mol/L.",
            correct_option: "c", explanation: "Um litro de água tem aproximadamente 1 kg; assim, 5 mg por litro equivalem aproximadamente a 5 mg/kg, ou 5 ppm em massa."
          }
        ]
      }
    ] + SeedCurriculum::ANALYTICAL_LESSONS
  },
  {
    name: "Química Orgânica I", slug: "quimica-organica", icon: "OR", color: "#f0d7ac",
    description: "Construa a base para compreender estruturas, funções e reações orgânicas.",
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

catalog.concat(
  SeedCurriculum::SUBJECTS.reject { |subject| SeedCurriculum::EXISTING_SUBJECT_SLUGS.include?(subject[:slug]) }
    .map(&:deep_dup)
)

expanded_lessons = SeedExpansionFoundations::LESSONS
  .merge(SeedExpansionProcesses::LESSONS)
  .merge(SeedExpansionProfessional::LESSONS)
previous_analytic_titles = {
  "Análise qualitativa e quantitativa" => "Qualitativa e quantitativa",
  "Concentração e unidades" => "Concentração comum",
  "Titulações e análise gravimétrica" => "Titulação e ponto de equivalência"
}

catalog.each_with_index do |subject_data, subject_index|
  lessons_data = subject_data.delete(:lessons)
  lessons_data.concat(expanded_lessons.fetch(subject_data[:slug], []).map(&:deep_dup))
  subject = Subject.find_or_initialize_by(slug: subject_data[:slug])
  subject.update!(subject_data.merge(position: subject_index + 1))

  lesson_position = 0
  lessons_data.each do |lesson_data|
    lesson_data = lesson_data.dup
    lesson_type = lesson_data.delete(:lesson_type) || "lesson"
    quiz_questions_data = lesson_data.delete(:quiz_questions)
    lesson_data.merge!(SeedCurriculum::DETAILED_LESSONS[lesson_data[:title]] || {})
    previous_title = previous_analytic_titles[lesson_data[:title]] if subject.slug == "quimica-analitica"
    lesson = subject.lessons.find_by(title: previous_title) if previous_title
    lesson ||= subject.lessons.find_or_initialize_by(title: lesson_data[:title])
    if previous_title && lesson.persisted?
      subject.lessons.where(title: lesson_data[:title]).where.not(id: lesson.id).destroy_all
    end
    if lesson_type == "assessment"
      lesson.update!(lesson_data.merge(lesson_type: "lesson", position: lesson_position + 1, xp: 20))
      quiz_questions_data.each_with_index do |question_data, question_index|
        question = lesson.quiz_questions.find_or_initialize_by(position: question_index + 1)
        question.update!(question_data.merge(position: question_index + 1))
      end
      lesson.quiz_questions.where.not(position: 1..quiz_questions_data.length).destroy_all
      lesson.update!(lesson_type: lesson_type)
      next
    end

    lesson_position += 1
    lesson_data[:difficulty_level] ||= SeedCurriculum::BASE_LEVELS.fetch(subject.slug, [])[lesson_position - 1] || "iniciante"
    lesson.update!(lesson_data.merge(lesson_type: "lesson", position: lesson_position, xp: 10))

    module_question = lesson_data.slice(:question, :option_a, :option_b, :option_c, :option_d, :correct_option, :explanation)
    quiz_questions_data = if quiz_questions_data.present?
      [ module_question ] + quiz_questions_data
    else
      [ module_question ] + SeedModuleQuestions::QUESTIONS.fetch(lesson_data[:title])
    end

    quiz_questions_data.each_with_index do |question_data, question_index|
      question = lesson.quiz_questions.find_or_initialize_by(position: question_index + 1)
      question.update!(question_data.merge(position: question_index + 1))
    end
    lesson.quiz_questions.where.not(position: 1..quiz_questions_data.length).destroy_all
  end
end

catalog.each do |subject_data|
  subject = Subject.find_by!(slug: subject_data[:slug])
  assessment_data = SeedAssessments::ASSESSMENTS[subject.slug]
  unless assessment_data
    questions = subject.lessons.where(lesson_type: "lesson").includes(:quiz_questions).flat_map do |lesson|
      lesson.quiz_questions.first(5).map do |question|
        question.attributes.symbolize_keys.slice(
          :question, :option_a, :option_b, :option_c, :option_d, :correct_option, :explanation
        )
      end
    end.first(10)
    assessment_data = {
      title: "Avaliação final: #{subject.name}",
      summary: "Dez questões para aplicar os conceitos desta trilha.",
      concept: "Resolva as questões aplicando os conceitos e exemplos estudados nos módulos. Para concluir a trilha, acerte pelo menos 70% das questões.",
      example: "Leia cada enunciado com atenção, confira as unidades e revise os comentários após enviar as respostas.",
      questions: questions
    }
  end
  assessment = subject.lessons.find_or_initialize_by(title: assessment_data[:title])
  lesson_count = subject.lessons.where(lesson_type: "lesson").maximum(:position).to_i
  assessment.update!(
    title: assessment_data[:title],
    summary: assessment_data[:summary],
    concept: assessment_data[:concept],
    example: assessment_data[:example],
    question: "Responda às dez questões abaixo.",
    option_a: "Respostas disponíveis nas questões do teste.",
    option_b: "Respostas disponíveis nas questões do teste.",
    option_c: "Respostas disponíveis nas questões do teste.",
    option_d: "Respostas disponíveis nas questões do teste.",
    correct_option: "a",
    explanation: "Cada questão apresenta suas próprias alternativas e explicação.",
    lesson_type: "lesson",
    position: lesson_count + 1,
    xp: 20
  )

  assessment_data[:questions].each_with_index do |question_data, question_index|
    question = assessment.quiz_questions.find_or_initialize_by(position: question_index + 1)
    question.update!(question_data.merge(position: question_index + 1))
  end
  assessment.quiz_questions.where.not(position: 1..assessment_data[:questions].length).destroy_all
  assessment.quiz_questions.reload
  assessment.update!(lesson_type: "assessment")
end
