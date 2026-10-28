module SeedExpansionFoundations
  LESSONS = {
    "quimica-organica" => [
      SeedCurriculum.module_data(
        "Nomenclatura e propriedades de moléculas orgânicas",
        "Relacione estrutura, nome e propriedades para interpretar compostos em contextos reais.",
        "A nomenclatura sistemática transforma uma estrutura em um nome que comunica tamanho da cadeia, insaturações e grupos funcionais. Para começar, escolha a cadeia principal que contém a função prioritária, numere-a para dar os menores localizadores possíveis e identifique ramificações e substituintes. Prefixos indicam o número de carbonos, enquanto terminações e infixos registram função e ligações múltiplas.\n\nO nome também permite antecipar propriedades, embora não as determine sozinho: cadeias maiores tendem a aumentar forças de dispersão e pontos de ebulição; grupos polares podem favorecer interações dipolo-dipolo e ligações de hidrogênio. Forma molecular, ramificação e condições experimentais também importam. Ao comparar substâncias, separe evidência estrutural de generalizações e considere massa molar e forças intermoleculares.",
        "Para CH₃−CH(CH₃)−CH₂−OH, a cadeia mais longa que contém a hidroxila tem três carbonos. Numerando a partir da extremidade do −OH, o grupo fica no carbono 1 e há um metil no carbono 2: 2-metilpropan-1-ol. A hidroxila permite ligações de hidrogênio entre moléculas, elevando o ponto de ebulição em relação a um alcano de massa semelhante.",
        "Qual é a prioridade ao escolher e numerar a cadeia principal de um álcool?",
        [ "Incluir a hidroxila e numerar para que ela receba o menor localizador possível.", "Escolher sempre a cadeia mais ramificada.", "Começar pela extremidade com mais hidrogênios.", "Ignorar a função e numerar somente os carbonos." ],
        "a",
        "A função principal deve estar na cadeia escolhida e, em geral, recebe o menor localizador possível; isso torna o nome informativo e consistente.",
        [
          [ "Qual nome corresponde a CH₃−CH₂−CH₃?", [ "Propino.", "Propano.", "Propeno.", "Propanol." ], "b", "A cadeia tem três carbonos e apenas ligações simples, portanto é propano." ],
          [ "Na nomenclatura de CH₃−CH₂−CH₂−OH, de qual extremidade se numera?", [ "Sempre da esquerda para a direita.", "Da extremidade com maior número de hidrogênios.", "Da mais próxima da hidroxila.", "Da mais distante da hidroxila." ], "c", "O álcool deve receber o menor localizador, então a numeração começa junto à hidroxila." ],
          [ "Qual interação explica a alta miscibilidade do etanol com água?", [ "Ligações metálicas.", "Interações exclusivamente iônicas.", "Formação inevitável de ligações C−C entre as moléculas.", "Ligações de hidrogênio entre grupos −OH." ], "d", "Etanol e água podem formar ligações de hidrogênio por seus grupos polares." ],
          [ "Comparando alcano e álcool de massas molares próximas, qual tende a ter maior ponto de ebulição?", [ "O álcool, devido a interações intermoleculares mais fortes.", "O alcano, sempre por ser apolar.", "Ambos têm necessariamente o mesmo valor.", "Não é possível que forças intermoleculares influenciem ebulição." ], "a", "Ligações de hidrogênio no álcool requerem mais energia para separar as moléculas." ],
          [ "Em uma cadeia com dupla ligação e substituintes, qual regra orienta a numeração?", [ "Não indicar a posição da dupla.", "Dar o menor localizador possível à insaturação, conforme as regras de nomenclatura.", "Maximizar os números dos substituintes.", "Numerar sempre pelo carbono mais ramificado." ], "b", "A posição da insaturação é indicada pelo menor localizador aplicável." ],
          [ "Por que dois isômeros podem ter pontos de ebulição diferentes?", [ "Apenas porque um deles não contém átomos.", "Isômeros sempre fervem na mesma temperatura.", "A forma e a distribuição de interações intermoleculares podem diferir.", "Isômeros têm fórmulas moleculares diferentes." ], "c", "Conectividade e forma alteram área de contato e polaridade, afetando as forças entre moléculas." ],
          [ "Qual característica identifica um éster simples?", [ "Um grupo −OH ligado a carbono saturado.", "Um nitrogênio entre carbonos sem carbonila.", "Uma ligação tripla entre carbonos.", "Um grupo −COO− entre fragmentos orgânicos." ], "d", "Ésteres apresentam a unidade R−COO−R′." ],
          [ "Ao nomear uma cadeia ramificada, como se indicam substituintes iguais?", [ "Usando prefixos multiplicativos e os localizadores.", "Omitindo todos os localizadores.", "Somando as posições em um único número.", "Trocando a terminação do grupo principal." ], "a", "Prefixos como di- e tri- mostram a quantidade, e os localizadores mostram suas posições." ],
          [ "Qual conclusão sobre solubilidade é mais adequada?", [ "A massa molar determina sozinha a solubilidade.", "A estrutura fornece pistas, mas a solubilidade depende das interações entre soluto e solvente.", "Toda molécula orgânica é insolúvel em água.", "Toda substância com carbono dissolve em óleo." ], "b", "Polaridade e interações são pistas relevantes, mas não bastam isoladamente para prever todos os casos." ]
        ],
        level: "intermediario"
      ),
      SeedCurriculum.module_data(
        "Estereoquímica e atividade óptica",
        "Investigue como a orientação tridimensional altera reconhecimento molecular e propriedades.",
        "A fórmula estrutural plana informa conectividade, mas muitas moléculas também exigem uma descrição espacial. Um carbono tetraédrico ligado a quatro grupos diferentes pode ser um centro estereogênico. Duas configurações que são imagens especulares não superponíveis são enantiômeros; estereoisômeros que não são imagens especulares são diastereoisômeros. A rotação da luz polarizada é uma propriedade experimental e não permite, por si só, atribuir R ou S.\n\nA designação R/S é determinada pelas regras de prioridade de Cahn–Ingold–Prelog: atribuem-se prioridades aos quatro ligantes, orienta-se o de menor prioridade para trás e acompanha-se a ordem 1→2→3. Enantiômeros podem ter propriedades físicas iguais em ambiente aquiral, mas interagir de modo diferente com enzimas, receptores e catalisadores quirais. Por isso, pureza enantiomérica pode ser crítica em fármacos, aromas e processos biotecnológicos.",
        "No ácido lático, CH₃−CH(OH)−COOH, o carbono central liga-se a H, OH, CH₃ e COOH, quatro grupos diferentes; portanto, é estereogênico. Uma mistura 1:1 de seus enantiômeros é racêmica e não apresenta rotação óptica líquida, embora cada enantiômero isolado possa girar a luz em sentido oposto.",
        "O que caracteriza um carbono estereogênico tetraédrico comum?",
        [ "Possuir necessariamente uma ligação dupla.", "Ser sempre um átomo de carbono carbonílico.", "Estar ligado a quatro substituintes diferentes.", "Estar ligado a quatro átomos de hidrogênio." ],
        "c",
        "Quatro substituintes diferentes permitem duas configurações espaciais que não se sobrepõem por simples rotação.",
        [
          [ "Qual par de moléculas é formado por imagens especulares não superponíveis?", [ "Constitucionais.", "Homólogos.", "Conformações idênticas.", "Enantiômeros." ], "d", "Enantiômeros são estereoisômeros que são imagens especulares não superponíveis." ],
          [ "Uma mistura racêmica ideal contém:", [ "Quantidades iguais de dois enantiômeros.", "Somente um enantiômero puro.", "Dois compostos sem relação estrutural.", "Apenas moléculas aquirais." ], "a", "A mistura racêmica tem proporções iguais dos enantiômeros." ],
          [ "Qual método atribui a designação R ou S?", [ "A cor da amostra.", "Regras de prioridade CIP e orientação espacial.", "O sinal da rotação óptica sozinho.", "A massa molar do composto." ], "b", "R/S decorre da ordem espacial de prioridades, não do sinal polarimétrico." ],
          [ "O que pode ocorrer quando um enantiômero interage com uma enzima quiral?", [ "A quiralidade deixa de existir.", "A enzima altera o número de prótons do carbono.", "A enzima pode reconhecer os enantiômeros de modo diferente.", "A enzima necessariamente converte ambos no mesmo produto." ], "c", "Sítios ativos são tridimensionais e podem apresentar seletividade estereoquímica." ],
          [ "Um carbono ligado a dois grupos metila idênticos é, por esse critério, estereogênico?", [ "Sim, pois todo carbono sp³ é quiral.", "Sim, desde que haja hidrogênio.", "Não, porque carbono não pode ser quiral.", "Não, pois não possui quatro substituintes diferentes." ], "d", "A presença de dois ligantes iguais impede quatro substituintes diferentes." ],
          [ "Enantiômeros puros em ambiente aquiral geralmente têm:", [ "Propriedades físicas iguais, salvo o sentido de rotação óptica.", "Pontos de fusão necessariamente opostos.", "Fórmulas moleculares diferentes.", "A mesma resposta em qualquer ambiente quiral." ], "a", "Em ambiente aquiral, muitas propriedades macroscópicas coincidem; a interação quiral pode distingui-los." ],
          [ "Por que a rotação óptica não determina diretamente R ou S?", [ "A rotação mede somente a massa.", "O sinal (+) ou (−) é experimental e não tem correspondência universal com R/S.", "R sempre gira para a direita.", "S sempre gira para a esquerda." ], "b", "A relação entre configuração absoluta e sinal de rotação não é fixa." ],
          [ "Qual procedimento evita erro ao aplicar CIP?", [ "Ordenar pelo número de ligações C−H.", "Ignorar átomos além do primeiro.", "Ordenar ligantes pelo primeiro ponto de diferença, seguindo a sequência de átomos.", "Priorizar sempre o grupo com nome mais longo." ], "c", "Quando os primeiros átomos empatam, compara-se recursivamente a lista de átomos ligados." ],
          [ "Qual é uma aplicação prática da estereoquímica?", [ "Calcular o número de nêutrons de qualquer átomo.", "Determinar a cor de todo composto orgânico.", "Substituir a análise de pureza.", "Controlar a composição de um princípio ativo para obter o perfil biológico desejado." ], "d", "Reconhecimento biológico pode ser estereosseletivo, tornando a composição relevante." ]
        ],
        level: "dificil"
      ),
      SeedCurriculum.module_data(
        "Estratégia de síntese e seletividade orgânica",
        "Planeje transformações em etapas e avalie rendimento, quimiosseletividade e impacto do processo.",
        "Planejar uma síntese significa escolher uma sequência de transformações que leve de matérias-primas disponíveis a um produto-alvo. A análise retrossintética começa no produto e pergunta que ligações poderiam ser desconectadas para revelar precursores mais simples. Em seguida, verificam-se compatibilidade de grupos funcionais, seletividade, número de etapas, segurança, disponibilidade de reagentes e possibilidade de purificação.\n\nRendimento isolado compara a quantidade efetivamente obtida com a quantidade teórica, enquanto seletividade descreve a preferência por um produto frente a alternativas. Um rendimento alto não garante processo sustentável: solventes, energia, toxicidade, geração de resíduos e recuperação de catalisadores também contam. Na indústria, otimização reúne qualidade, robustez, custo e métricas ambientais, e as condições devem ser validadas antes de escala maior.",
        "Se 0,10 mol de reagente limitante poderia gerar 0,10 mol de produto, mas são isolados 0,075 mol, o rendimento isolado é 75%. Se um método alternativo gera 90% do produto desejado e poucos subprodutos, pode ser preferível mesmo que seu rendimento isolado seja ligeiramente menor, caso reduza etapas perigosas e resíduos.",
        "Qual informação deve ser considerada além do rendimento ao comparar rotas de síntese?",
        [ "Seletividade, segurança, resíduos e consumo de recursos.", "Somente a cor do produto.", "Apenas o nome do solvente.", "A massa do frasco vazio." ],
        "a",
        "A escolha de rota é multicritério: rendimento isolado sozinho não mede segurança, seletividade ou impacto ambiental.",
        [
          [ "Como se calcula o rendimento percentual?", [ "Soma das massas dos reagentes sem balanço.", "Quantidade obtida dividida pela teórica, vezes 100%.", "Quantidade teórica dividida pela obtida, vezes 100%.", "Massa do solvente dividida pelo volume." ], "b", "Rendimento = quantidade real/quantidade teórica × 100%." ],
          [ "Uma reação forma 0,060 mol quando o máximo teórico é 0,080 mol. Qual o rendimento?", [ "60%.", "133%.", "75%.", "80%." ], "c", "0,060/0,080 × 100 = 75%." ],
          [ "O que mede a quimiosseletividade?", [ "A quantidade de solvente no frasco.", "A rapidez de toda reação sem comparação.", "A massa atômica do catalisador.", "A preferência por reagir em um grupo funcional entre vários possíveis." ], "d", "Quimiosseletividade descreve qual grupo funcional reage preferencialmente." ],
          [ "Qual é a finalidade de uma análise retrossintética?", [ "Propor desconexões do alvo para identificar precursores acessíveis.", "Balancear eletricamente uma pilha.", "Medir pH sem indicador.", "Aumentar o volume de um produto." ], "a", "A análise parte do alvo e simplifica a estrutura em intermediários potenciais." ],
          [ "Por que uma reação em pequena escala não deve ser ampliada sem avaliação?", [ "A massa molar muda com o recipiente.", "Transferência de calor e massa e riscos podem mudar com a escala.", "A estequiometria deixa de existir em escala maior.", "Toda reação fica automaticamente segura." ], "b", "A escala afeta dissipação de calor, mistura, pressão e consequências de uma falha." ],
          [ "Qual indicador ambiental favorece uma rota mais eficiente?", [ "Mais etapas de descarte.", "Menor recuperação de materiais.", "Menor geração de resíduos por massa de produto útil.", "Maior uso de solvente tóxico." ], "c", "Reduzir resíduos por produto é uma dimensão de eficiência material." ],
          [ "Para que serve um catalisador em uma síntese?", [ "Aumentar a constante de equilíbrio.", "Mudar a identidade dos elementos.", "Garantir rendimento de 100%.", "Alterar a velocidade por uma via de menor energia de ativação sem ser consumido globalmente." ], "d", "Catalisadores oferecem via cinética alternativa, sem deslocar o equilíbrio nem garantir conversão total." ],
          [ "Qual escolha normalmente melhora seletividade?", [ "Ajustar reagente e condições para favorecer a transformação pretendida.", "Adicionar indiscriminadamente mais de todos os reagentes.", "Ignorar a temperatura.", "Evitar medir produtos." ], "a", "Condições apropriadas podem favorecer o caminho desejado e reduzir subprodutos." ],
          [ "O que deve ser validado antes de produzir um lote industrial?", [ "Nenhuma medição, se o rendimento foi alto uma vez.", "Reprodutibilidade, especificações, segurança e controle das condições críticas.", "Somente o nome da reação.", "Apenas a aparência do equipamento." ], "b", "Validação demonstra que o processo produz consistentemente material conforme e seguro." ]
        ],
        level: "profissional"
      )
    ],
    "quimica-organica-ii" => [
      SeedCurriculum.module_data(
        "Conformação molecular e barreiras de rotação",
        "Use modelos tridimensionais para prever estabilidade e reatividade de moléculas flexíveis.",
        "Conformações são arranjos espaciais interconversíveis por rotação em torno de ligações simples, sem romper ligações. Em projeções de Newman, observar uma ligação C−C permite comparar conformações eclipsadas, nas quais ligações ficam alinhadas, e alternadas, nas quais ficam desencontradas. Repulsões eletrônicas e impedimento estérico tornam algumas conformações mais energéticas que outras.\n\nEm ciclo-hexano, a conformação cadeira reduz tensão angular e torsional. Substituintes podem ficar axiais ou equatoriais; grupos volumosos geralmente preferem posições equatoriais porque evitam interações 1,3-diaxiais. A distribuição entre conformações depende da diferença de energia e da temperatura. A conformação mais populada pode influenciar seletividade, mas a reação também depende de reagentes, solvente e mecanismo.",
        "No metilciclo-hexano, a cadeira com metila equatorial é mais estável que a cadeira com metila axial. A inversão da cadeira interconverte as posições axial e equatorial, mas não transforma uma configuração cis em trans: a orientação para cima ou para baixo é preservada.",
        "O que acontece a um substituinte durante a inversão de cadeira do ciclo-hexano?",
        [ "Rompe a ligação que o conecta ao anel.", "Converte-se em outro elemento.", "Troca entre axial e equatorial, mantendo sua orientação para cima ou para baixo.", "Muda de cis para trans automaticamente." ],
        "c",
        "A inversão troca axial e equatorial, mas a relação acima/abaixo permanece; por isso, a configuração relativa cis/trans não muda.",
        [
          [ "Qual conformação do etano costuma ser mais estável?", [ "Eclipsada.", "Linear com ligações rompidas.", "Iônica.", "Alternada." ], "d", "A conformação alternada minimiza repulsões torsionais." ],
          [ "Em uma projeção de Newman, qual ligação é observada ao longo do eixo?", [ "A ligação entre os dois carbonos escolhidos.", "Uma ligação C−H aleatória.", "A ligação com maior massa.", "Nenhuma ligação." ], "a", "A projeção representa a visão ao longo de uma ligação, geralmente C−C." ],
          [ "Por que um grupo volumoso prefere a posição equatorial na cadeira?", [ "Elimina toda rotação.", "Reduz interações estéricas 1,3-diaxiais.", "Forma uma ligação dupla.", "Aumenta o número de carbonos." ], "b", "A posição equatorial afasta o substituinte de grupos axiais próximos." ],
          [ "A inversão de cadeira altera a configuração cis/trans?", [ "Sim, apenas para substituintes pequenos.", "Apenas se o anel for desenhado em outra cor.", "Não; a orientação para cima ou para baixo é preservada.", "Sim, sempre transforma cis em trans." ], "c", "A inversão troca axial/equatorial sem mudar a orientação relativa." ],
          [ "Qual fator tende a aumentar a barreira de rotação em torno de uma ligação?", [ "A ausência de átomos.", "Apenas a pressão atmosférica.", "A presença de qualquer solvente aquoso.", "Repulsão estérica e eletrônica na conformação eclipsada." ], "d", "Conformações eclipsadas aproximam densidades eletrônicas e grupos, elevando a energia." ],
          [ "Uma conformação é:", [ "Um arranjo acessível por rotação sem romper ligações.", "Um isômero constitucional distinto.", "Uma substância necessariamente isolável.", "Uma mudança no número de prótons." ], "a", "Conformações interconvertem por rotação em ligações simples." ],
          [ "O que é tensão torsional?", [ "A massa perdida na combustão.", "A elevação de energia associada ao alinhamento desfavorável de ligações.", "A energia de ionização de um núcleo.", "A pressão dentro de um líquido." ], "b", "Alinhamentos eclipsados aumentam repulsões e contribuem para tensão torsional." ],
          [ "Qual comparação é correta para ciclo-hexano ideal?", [ "A forma cadeira exige romper duas ligações.", "Todas as formas têm exatamente a mesma energia.", "A cadeira é muito mais estável que conformações planas tensas.", "A forma plana é sempre a mais estável." ], "c", "A cadeira mantém ângulos e ligações próximos de valores favoráveis e minimiza tensão." ],
          [ "Por que a conformação pode afetar a velocidade de uma reação?", [ "Conformações alteram a fórmula molecular.", "A conformação muda a constante universal dos gases.", "Toda rotação torna a reação instantânea.", "A geometria disponível pode facilitar ou dificultar o encontro reativo." ], "d", "Orientação e acessibilidade dos grupos reativos influenciam o caminho e a taxa." ]
        ],
        level: "intermediario"
      ),
      SeedCurriculum.module_data(
        "Mecanismos de substituição e eliminação",
        "Compare caminhos SN1, SN2, E1 e E2 usando estrutura, cinética e condições de reação.",
        "Em substituição nucleofílica, um nucleófilo forma ligação com o carbono enquanto um grupo de saída se afasta. SN2 ocorre em uma etapa concertada, costuma ser favorecida por substratos pouco impedidos e nucleófilos fortes, e apresenta ataque pelo lado oposto ao grupo de saída, com inversão de configuração. SN1 envolve formação de carbocátion e duas etapas; substratos que estabilizam esse intermediário podem reagir por esse caminho, com competição entre captura e rearranjos.\n\nNa eliminação, formam-se uma ligação dupla e um produto de saída. E2 é concertada e geralmente requer base; geometria anti-periplanar favorece a remoção do hidrogênio e a saída simultânea. E1 passa por carbocátion e pode competir com SN1. A estrutura do substrato, força e volume da base, nucleofilicidade, solvente e temperatura ajudam a comparar possibilidades; nenhuma regra isolada substitui a análise conjunta.",
        "Um haleto metílico com bom grupo de saída e nucleófilo aniônico forte favorece SN2: o nucleófilo ataca por trás ao mesmo tempo que o grupo sai. Já um substrato terciário dificulta ataque posterior; com base volumosa e aquecimento, a eliminação E2 pode se tornar competitiva ou predominante.",
        "Qual característica mecanística define uma reação SN2?",
        [ "Uma única etapa concertada com ataque e saída simultâneos.", "Formação obrigatória de carbocátion estável em etapa lenta.", "Duas moléculas de substrato formando um polímero.", "Transferência de prótons sem mudança de ligação C−X." ],
        "a",
        "SN2 ocorre em etapa concertada; sua velocidade depende da concentração de substrato e nucleófilo.",
        [
          [ "Qual substrato costuma favorecer SN2 por menor impedimento estérico?", [ "Um substrato sem grupo de saída.", "Metílico.", "Terciário.", "Tetrassubstituído." ], "b", "Substratos metílicos oferecem acesso mais fácil ao ataque posterior." ],
          [ "Qual espécie intermediária é característica de SN1?", [ "Radical metálico.", "Gás nobre.", "Carbocátion.", "Carbânion obrigatoriamente planar." ], "c", "SN1 envolve ionização e formação de carbocátion antes da captura pelo nucleófilo." ],
          [ "A velocidade de uma SN2 ideal depende de:", [ "Somente a concentração do produto.", "Apenas o volume do recipiente.", "Nenhuma concentração.", "Concentrações do substrato e do nucleófilo." ], "d", "A etapa elementar bimolecular envolve ambos os reagentes." ],
          [ "O ataque SN2 a um centro estereogênico costuma causar:", [ "Inversão de configuração.", "Retenção obrigatória em todos os casos.", "Racemização obrigatória por carbocátion.", "Aumento do número de carbonos." ], "a", "O ataque pela face oposta ao grupo de saída gera inversão geométrica." ],
          [ "Qual condição favorece uma eliminação E2?", [ "Um nucleófilo inerte sem substrato.", "Base forte e geometria apropriada entre H e grupo de saída.", "Ausência de base e de hidrogênio β.", "Somente água congelada." ], "b", "A base remove Hβ enquanto o grupo de saída parte na etapa concertada." ],
          [ "Por que um substrato terciário dificulta SN2?", [ "Tem ligação metálica.", "Não pode conter grupo de saída.", "Os grupos ao redor bloqueiam o acesso do nucleófilo ao carbono.", "Não possui elétrons." ], "c", "O impedimento estérico dificulta o ataque posterior exigido pela SN2." ],
          [ "Uma base volumosa pode favorecer eliminação porque:", [ "Nunca reage com hidrogênio.", "Transforma o carbono em gás nobre.", "Aumenta a concentração de substrato.", "É relativamente impedida de atacar o carbono e pode abstrair um próton." ], "d", "O volume pode desfavorecer substituição e permitir abstração de Hβ." ],
          [ "O que pode ocorrer em SN1 com um carbocátion capaz de rearranjo?", [ "Migração que produz um carbocátion mais estável.", "Rearranjo de prótons no núcleo.", "Quebra obrigatória de todas as ligações.", "Nenhum produto orgânico." ], "a", "Migrações de hidreto ou alquila podem estabilizar o intermediário." ],
          [ "Qual combinação de fatores é melhor para prever substituição versus eliminação?", [ "A ordem alfabética dos compostos.", "Substrato, reagente, solvente e temperatura.", "Apenas a cor do reagente.", "Somente a massa do frasco." ], "b", "O resultado depende de vários fatores de estrutura e condições experimentais." ]
        ],
        level: "dificil"
      ),
      SeedCurriculum.module_data(
        "Polímeros: arquitetura, desempenho e reciclagem",
        "Relacione estrutura macromolecular, propriedades de materiais e decisões de fim de vida.",
        "Polímeros são macromoléculas formadas por unidades repetidas. Polimerização por crescimento em cadeia envolve iniciação, propagação e terminação, enquanto processos por etapas formam ligações entre monômeros com grupos funcionais complementares. Massa molar média, distribuição de tamanhos, ramificação, reticulação, cristalinidade e aditivos afetam propriedades como resistência, flexibilidade, barreira e temperatura de transição vítrea.\n\nTermoplásticos amolecem ao aquecer e podem ser remodelados, embora calor e reprocessamentos possam degradá-los; elastômeros têm cadeias flexíveis e redes leves; termorrígidos são reticulados e não fundem de modo reversível. Reciclagem mecânica, química e recuperação energética têm requisitos e impactos distintos. A escolha de material deve considerar desempenho, durabilidade, contaminação, viabilidade de coleta e análise do ciclo de vida, não apenas o rótulo “reciclável”.",
        "Polietileno de alta densidade tem cadeias menos ramificadas e maior empacotamento que polietileno de baixa densidade, em geral resultando em maior cristalinidade e rigidez. Isso não significa que uma embalagem seja automaticamente melhor: aplicação, espessura, reutilização e sistema de coleta também determinam o impacto.",
        "Qual característica distingue um termorrígido de um termoplástico comum?",
        [ "Ausência de ligações covalentes.", "Composição obrigatoriamente metálica.", "Rede reticulada que impede fusão e remodelagem reversíveis.", "Capacidade de dissolver em qualquer solvente." ],
        "c",
        "A reticulação extensa fixa a rede tridimensional; aquecimento excessivo tende a degradar, não a fundir reversivelmente o material.",
        [
          [ "Qual é a unidade repetitiva do polietileno?", [ "−COO−.", "−Si−O−.", "−NH−CO−.", "−CH₂−CH₂−." ], "d", "O polietileno deriva da repetição de unidades −CH₂−CH₂−." ],
          [ "O que caracteriza um termoplástico?", [ "Pode amolecer e ser remodelado por aquecimento, dentro de limites.", "É sempre uma rede covalente infinita.", "Nunca muda com temperatura.", "É necessariamente solúvel em água." ], "a", "Termoplásticos podem ser aquecidos e conformados novamente, mas podem degradar." ],
          [ "Que efeito costuma ter maior cristalinidade em um polímero?", [ "Redução da massa molar a zero.", "Maior empacotamento e, frequentemente, maior rigidez.", "Desaparecimento de todas as ligações.", "Conversão automática em metal." ], "b", "Regiões cristalinas mais organizadas limitam mobilidade de segmentos." ],
          [ "Qual é uma diferença entre reciclagem mecânica e química?", [ "A mecânica sempre elimina contaminantes molecularmente.", "Não há diferença conceitual.", "A mecânica reprocessa material; a química converte polímeros em moléculas ou matérias-primas.", "A química não usa transformação química." ], "c", "Reciclagem mecânica modifica forma/processa o polímero; química despolimeriza ou converte matérias." ],
          [ "O que significa reticulação?", [ "Corte de toda ligação covalente.", "Evaporação de monômeros.", "Apenas mudança de cor.", "Formação de ligações entre cadeias que cria uma rede." ], "d", "Ligações cruzadas conectam cadeias e alteram sua mobilidade e resposta ao calor." ],
          [ "Por que a distribuição de massa molar importa?", [ "Afeta processamento e propriedades do conjunto de cadeias.", "Determina apenas a cor do recipiente.", "Não tem relação com comportamento do polímero.", "Muda o número atômico do carbono." ], "a", "Cadeias de tamanhos distintos contribuem de forma diferente para fluxo e desempenho." ],
          [ "Qual opção define melhor um elastômero?", [ "Polímero sem unidades repetidas.", "Material com grande deformação reversível por cadeias flexíveis e rede leve.", "Vidro sem deformação.", "Líquido iônico puro." ], "b", "Elastômeros recuperam forma após deformação graças à mobilidade das cadeias e reticulações." ],
          [ "Que fator é importante numa avaliação de ciclo de vida de embalagem?", [ "Apenas a massa da tampa.", "Só o símbolo impresso.", "Produção, uso, transporte, reutilização e fim de vida.", "Somente a cor inicial." ], "c", "Uma avaliação de ciclo de vida considera etapas e impactos desde matérias-primas até descarte." ],
          [ "Por que misturar polímeros incompatíveis pode dificultar reciclagem?", [ "A mistura transforma todos em elemento químico novo.", "A compatibilidade não importa em processamento.", "Apenas porque polímeros são sempre solúveis.", "Fases separadas podem reduzir propriedades e qualidade do material reciclado." ], "d", "Incompatibilidade pode causar separação de fases e perda de desempenho." ]
        ],
        level: "profissional"
      )
    ],
    "quimica-inorganica" => [
      SeedCurriculum.module_data(
        "Tendências periódicas e previsão de reatividade",
        "Use configuração eletrônica e tendências periódicas para formular previsões fundamentadas.",
        "A configuração eletrônica organiza elétrons em níveis e subníveis e ajuda a explicar a posição dos elementos na tabela. Elementos do mesmo grupo tendem a compartilhar padrões de elétrons de valência, embora suas propriedades não sejam idênticas. Ao longo de um período, a carga nuclear efetiva geralmente aumenta e o raio atômico tende a diminuir; descendo um grupo, novos níveis eletrônicos fazem o raio aumentar.\n\nEnergia de ionização mede a energia necessária para remover um elétron de uma espécie gasosa; afinidade eletrônica e eletronegatividade descrevem aspectos relacionados, mas distintos, de tendências eletrônicas. Essas tendências ajudam a antecipar formação de íons e polaridade de ligações, não a predizer sozinhas o resultado de toda reação. Cargas de íons comuns podem ser estimadas por padrões de valência, mas compostos de metais de transição frequentemente exigem especificar estado de oxidação.",
        "Na comparação de Na e Cl no mesmo período, o sódio tem raio atômico maior, enquanto o cloro tende a atrair elétrons de ligação com mais força. Assim, Na costuma formar Na⁺ ao perder um elétron, e Cl costuma formar Cl⁻ ao ganhar um, formando um sólido iônico como NaCl.",
        "Ao descer um grupo da tabela periódica, o raio atômico geralmente:",
        [ "Aumenta, pois há níveis eletrônicos adicionais.", "Diminui sempre a zero.", "Permanece rigorosamente igual.", "Depende somente do estado físico." ],
        "a",
        "A adição de camadas eletrônicas aumenta a extensão média da nuvem eletrônica.",
        [
          [ "Qual partícula define o número atômico?", [ "Moléculas.", "Prótons.", "Nêutrons.", "Elétrons de valência." ], "b", "O número atômico é o número de prótons no núcleo." ],
          [ "Qual tendência é comum ao atravessar um período da esquerda para a direita?", [ "Todos os elementos se tornam gases.", "O raio sempre aumenta sem exceção.", "A energia de ionização tende a aumentar.", "O número atômico diminui." ], "c", "A maior carga nuclear efetiva tende a reter mais fortemente os elétrons." ],
          [ "Que íon o magnésio frequentemente forma?", [ "Mg⁻.", "Mg³⁻.", "Mg⁰ em todos os sais.", "Mg²⁺." ], "d", "O magnésio do grupo 2 frequentemente perde dois elétrons de valência." ],
          [ "A eletronegatividade descreve principalmente:", [ "A atração relativa por elétrons numa ligação.", "A massa total do núcleo.", "O volume de uma solução.", "A velocidade da luz no material." ], "a", "Eletronegatividade compara a tendência de um átomo atrair densidade eletrônica de ligação." ],
          [ "Por que elementos do mesmo grupo podem ter química semelhante?", [ "São todos o mesmo elemento.", "Têm configurações de valência com padrões semelhantes.", "Possuem sempre a mesma massa.", "Têm o mesmo número de prótons." ], "b", "Os elétrons de valência participam fortemente das interações químicas." ],
          [ "Um cátion Na⁺ tem, em relação ao Na neutro:", [ "Um nêutron a mais obrigatoriamente.", "Um núcleo de outro elemento.", "Um elétron a menos e o mesmo número de prótons.", "Um próton a menos." ], "c", "A formação do cátion decorre de perda eletrônica, não de mudança no núcleo." ],
          [ "Qual é o número de nêutrons em um isótopo com A=35 e Z=17?", [ "17.", "35.", "52.", "18." ], "d", "Nêutrons = A − Z = 35 − 17 = 18." ],
          [ "Por que uma tendência periódica não determina sozinha a espontaneidade de uma reação?", [ "A reação também depende de energia, condições e mecanismos.", "A tabela não contém elementos.", "Tendências não têm qualquer base eletrônica.", "Porque toda reação é espontânea." ], "a", "Tendências ajudam a prever comportamento, mas termodinâmica e cinética também importam." ],
          [ "Como representar corretamente o íon sulfeto comum?", [ "S₃⁻.", "S²⁻.", "S²⁺.", "S⁺." ], "b", "O enxofre frequentemente ganha dois elétrons, formando ânion 2−." ]
        ],
        level: "intermediario"
      ),
      SeedCurriculum.module_data(
        "Complexos de coordenação e aplicações",
        "Interprete ligantes, números de coordenação, geometria e usos de complexos metálicos.",
        "Um complexo de coordenação contém um centro metálico ligado a moléculas ou íons chamados ligantes. Um ligante doa um ou mais pares eletrônicos para o centro metálico; a ligação é descrita como coordenada no modelo de Lewis. Número de coordenação conta os átomos doadores diretamente ligados ao metal, não necessariamente o número de moléculas ligantes: um ligante quelante pode ocupar mais de uma posição.\n\nA geometria depende do metal, estado de oxidação, ligantes e número de coordenação; exemplos comuns incluem octaédrica, tetraédrica e quadrado-planar. A interação entre ligantes e orbitais d ajuda a explicar cores, magnetismo e reatividade. Complexos são usados em catálise, metaloproteínas, tratamento de metais e análise química. A estabilidade e a toxicidade dependem da composição e do meio, portanto a presença de um metal não basta para classificar um complexo como seguro ou perigoso.",
        "No íon [Cu(NH₃)₄]²⁺, cada NH₃ coordena pelo nitrogênio. Há quatro ligantes monodentados e o número de coordenação é quatro. O estado de oxidação do cobre permanece +2, pois NH₃ é neutro e a carga total do complexo é +2.",
        "No complexo [Cu(NH₃)₄]²⁺, qual é o número de coordenação do cobre?",
        [ "6.", "0.", "4.", "2." ],
        "c",
        "Cada uma das quatro moléculas de amônia liga-se pelo átomo de nitrogênio, dando quatro átomos doadores.",
        [
          [ "O que é um ligante?", [ "Apenas um próton livre.", "O recipiente da reação.", "Um nêutron ligado ao metal.", "Espécie que doa par eletrônico ao centro metálico." ], "d", "Ligantes fornecem pares de elétrons para interagir com o centro metálico." ],
          [ "Um ligante bidentado pode ocupar quantas posições de coordenação?", [ "Duas, por dois átomos doadores.", "Nenhuma.", "Sempre seis.", "Uma posição por molécula independentemente da denticidade." ], "a", "Dois átomos doadores do mesmo ligante podem se ligar ao metal." ],
          [ "No complexo [Ag(NH₃)₂]⁺, qual é o estado de oxidação da prata?", [ "−1.", "+1.", "0.", "+2." ], "b", "NH₃ é neutra; a carga +1 do complexo corresponde à prata +1." ],
          [ "Que geometria pode ocorrer em complexos de coordenação quatro?", [ "Sempre octaédrica.", "Somente cúbica.", "Tetraédrica ou quadrado-planar, dependendo do sistema.", "Somente linear." ], "c", "A geometria depende da identidade do metal e dos ligantes." ],
          [ "Por que alguns complexos metálicos são coloridos?", [ "O metal sempre emite luz branca.", "Todo ligante contém pigmento.", "A cor decorre da massa do frasco.", "Transições eletrônicas podem absorver certas faixas de luz visível." ], "d", "A estrutura eletrônica do complexo pode produzir absorções seletivas no visível." ],
          [ "O EDTA é frequentemente descrito como:", [ "Ligante polidentado que pode quelar metais.", "Elemento metálico.", "Ácido sem átomos doadores.", "Gás nobre." ], "a", "Vários átomos doadores do EDTA podem se coordenar ao mesmo metal." ],
          [ "Qual é uma aplicação de complexos de coordenação?", [ "Converter toda água em metal.", "Catálise e transporte de metais em sistemas biológicos.", "Aumentar o número de prótons de um núcleo.", "Eliminar a necessidade de equilíbrio químico." ], "b", "Complexos participam de catálise industrial e de proteínas que contêm metais." ],
          [ "O que significa número de coordenação?", [ "Carga total da solução.", "Número de moléculas de solvente no frasco.", "Número de átomos doadores diretamente ligados ao metal.", "Número de prótons do metal." ], "c", "Conta-se a quantidade de centros doadores ligados ao metal." ],
          [ "Por que a toxicidade de um complexo não pode ser inferida apenas pelo metal central?", [ "Todos os complexos são inertes.", "O metal não influencia química.", "A toxicidade depende apenas da cor.", "Ligantes, estabilidade, dose e condições alteram disponibilidade e efeito." ], "d", "Especiação e exposição determinam o comportamento biológico e ambiental." ]
        ],
        level: "dificil"
      ),
      SeedCurriculum.module_data(
        "Oxirredução, eletroquímica e corrosão",
        "Aplique números de oxidação e potenciais para analisar células, processos e proteção de metais.",
        "Oxidação é perda de elétrons e redução é ganho; as duas ocorrem simultaneamente. Números de oxidação são ferramentas contábeis para identificar a transferência formal de elétrons, não necessariamente cargas reais isoladas. Em uma célula galvânica, a reação redox espontânea converte energia química em elétrica: oxidação ocorre no ânodo, redução no cátodo, e elétrons percorrem o circuito externo do ânodo ao cátodo.\n\nO potencial de célula em condições padrão pode ser estimado como E°célula = E°redução,cátodo − E°redução,ânodo. Potencial positivo indica espontaneidade da reação escrita em condições padrão, mas concentrações, temperatura e pressão podem alterar o potencial real. Corrosão é oxidação indesejada de materiais; pode ser mitigada por revestimentos, seleção de ligas, controle ambiental ou proteção catódica. A estratégia deve considerar o metal, eletrólito, geometria e manutenção.",
        "Em uma pilha Zn/Cu, zinco oxida: Zn → Zn²⁺ + 2e⁻, e cobre(II) reduz: Cu²⁺ + 2e⁻ → Cu. Elétrons fluem do eletrodo de zinco para o de cobre. Em proteção catódica de aço, um ânodo de sacrifício mais facilmente oxidável fornece elétrons e se consome preferencialmente.",
        "Em uma célula galvânica, onde ocorre a oxidação?",
        [ "No ânodo.", "No cátodo.", "Na ponte salina exclusivamente.", "No voltímetro." ],
        "a",
        "Por definição, o ânodo é o eletrodo onde ocorre oxidação; o nome vale para células galvânicas e eletrolíticas.",
        [
          [ "Oxidação corresponde a:", [ "Diminuição da carga nuclear.", "Perda de elétrons.", "Ganho de elétrons.", "Ganho de nêutrons sempre." ], "b", "Oxidação é perda de elétrons." ],
          [ "Redução corresponde a:", [ "Aumento obrigatório do número de prótons.", "Dissolução sem reação.", "Ganho de elétrons.", "Perda de elétrons." ], "c", "A espécie reduzida recebe elétrons." ],
          [ "Em uma pilha, os elétrons fluem pelo circuito externo:", [ "Do cátodo para o ânodo.", "Da ponte salina para ambos.", "Do eletrodo para o ar apenas.", "Do ânodo para o cátodo." ], "d", "A oxidação no ânodo libera elétrons que chegam ao cátodo." ],
          [ "Qual é o papel da ponte salina?", [ "Manter a neutralidade elétrica permitindo migração de íons.", "Transportar elétrons diretamente entre os eletrodos.", "Aumentar a massa dos eletrodos.", "Impedir toda reação." ], "a", "Íons migram para compensar o acúmulo de carga nas semicélulas." ],
          [ "Se E°célula é positivo para a reação escrita, em condições padrão ela é:", [ "Independente de temperatura e composição em qualquer condição.", "Termodinamicamente espontânea.", "Necessariamente instantânea.", "Impossível." ], "b", "O potencial padrão positivo corresponde a ΔG° negativo para a reação." ],
          [ "Em proteção catódica com ânodo de sacrifício, o metal protetor:", [ "Não sofre qualquer reação.", "Aumenta a corrosão do aço por definição.", "Oxida preferencialmente e fornece proteção ao metal estrutural.", "Reduz o oxigênio no lugar do cátodo." ], "c", "O material mais ativo se consome, mantendo o aço como cátodo." ],
          [ "Qual método pode reduzir corrosão de uma superfície?", [ "Risco profundo que expõe metal novo.", "Adicionar sal ao eletrólito sem análise.", "Aumentar sempre a umidade.", "Revestimento que limita contato com água e oxigênio." ], "d", "Um revestimento íntegro pode diminuir contato dos reagentes corrosivos com o metal." ],
          [ "Qual mudança de número de oxidação caracteriza redução?", [ "Diminuição.", "Aumento.", "Nenhuma possibilidade de comparação.", "Aumento da massa molar." ], "a", "O número de oxidação diminui quando a espécie ganha elétrons formalmente." ],
          [ "Por que uma reação redox balanceada conserva elétrons?", [ "O balanço de massa não se aplica a redox.", "Elétrons perdidos na oxidação igualam os ganhos na redução.", "Elétrons desaparecem no solvente.", "Cada átomo perde todos seus elétrons." ], "b", "A conservação de carga exige igualar elétrons entre as semirreações." ]
        ],
        level: "profissional"
      )
    ],
    "quimica-i" => [
      SeedCurriculum.module_data(
        "Geometria molecular e forças intermoleculares",
        "Conecte distribuição eletrônica, forma molecular e propriedades macroscópicas.",
        "A geometria molecular pode ser estimada pelo modelo de repulsão dos pares eletrônicos da camada de valência (VSEPR): regiões de densidade eletrônica ao redor do átomo central se organizam para reduzir repulsões. Uma ligação simples, dupla ou tripla conta como uma região; pares não ligantes também contam e podem comprimir ângulos. A estrutura de Lewis ajuda a contar elétrons, mas deve ser seguida por análise da forma e da simetria.\n\nA polaridade de uma ligação depende da diferença de eletronegatividade; a polaridade da molécula depende da soma vetorial dos dipolos e da geometria. Moléculas apolares também interagem por forças de dispersão; moléculas polares podem ter interações dipolo-dipolo, e ligações de hidrogênio ocorrem quando H ligado a N, O ou F interage com pares eletrônicos apropriados. Essas interações explicam tendências de ebulição e solubilidade, mas é preciso comparar tamanho e forma também.",
        "CO₂ tem ligações C=O polares, mas geometria linear e simétrica; os dipolos se cancelam, tornando a molécula apolar. H₂O tem geometria angular devido a pares não ligantes no oxigênio, então seus dipolos não se cancelam e a molécula é polar.",
        "Por que CO₂ é apolar apesar de suas ligações C=O serem polares?",
        [ "O CO₂ não tem elétrons.", "A molécula é iônica.", "A geometria linear faz os dipolos se cancelarem.", "O carbono não forma ligações polares." ],
        "c",
        "A polaridade molecular é vetorial; dois dipolos iguais em sentidos opostos cancelam-se na geometria linear.",
        [
          [ "Qual forma corresponde a uma molécula AX₂ sem pares não ligantes no átomo central?", [ "Angular.", "Piramidal trigonal.", "Tetraédrica.", "Linear." ], "d", "Duas regiões ligantes sem pares isolados se afastam em disposição linear." ],
          [ "Quantas regiões eletrônicas ao redor do carbono há em CO₂?", [ "Duas.", "Quatro.", "Seis.", "Uma." ], "a", "Cada ligação dupla conta como uma região; o carbono tem duas." ],
          [ "Qual molécula pode formar ligações de hidrogênio entre moléculas puras?", [ "CCl₄.", "H₂O.", "CH₄.", "CO₂." ], "b", "A água contém H ligado a O e pares eletrônicos no oxigênio." ],
          [ "Uma molécula simétrica pode ser apolar mesmo com ligações polares quando:", [ "Ela contém uma ligação dupla.", "Há sempre um íon.", "Os dipolos se cancelam vetorialmente.", "Todos os átomos são iguais em massa." ], "c", "A soma dos vetores de dipolo pode ser zero devido à simetria." ],
          [ "Qual força está presente entre todas as moléculas e átomos?", [ "Ligação de hidrogênio.", "Ligação iônica.", "Ligação metálica.", "Dispersão de London." ], "d", "Flutuações temporárias de elétrons geram forças de dispersão em todas as espécies." ],
          [ "Qual molécula é angular?", [ "H₂O.", "CO₂.", "BeCl₂ idealizado.", "N₂." ], "a", "Dois pares não ligantes no oxigênio levam a uma forma angular." ],
          [ "Por que etanol mistura-se bem com água?", [ "Não possui partes apolares.", "O grupo −OH interage por ligações de hidrogênio.", "Sua cadeia carbônica é infinita.", "É um sal totalmente dissociado." ], "b", "O grupo hidroxila forma ligações de hidrogênio com a água." ],
          [ "Ao comparar forças de dispersão em moléculas semelhantes, qual fator tende a aumentá-las?", [ "Ausência total de elétrons.", "Apenas a cor.", "Maior polarizabilidade da nuvem eletrônica.", "Menor número de elétrons sempre." ], "c", "Nuvens mais polarizáveis produzem dipolos instantâneos mais intensos." ],
          [ "O modelo VSEPR prevê a forma com base principalmente em:", [ "Atração gravitacional entre núcleos.", "A cor dos elementos.", "A ordem de leitura da fórmula.", "Repulsão entre regiões de densidade eletrônica." ], "d", "Regiões eletrônicas se organizam para reduzir repulsões ao redor do átomo central." ]
        ],
        level: "intermediario"
      ),
      SeedCurriculum.module_data(
        "Reagente limitante, rendimento e pureza",
        "Resolva problemas estequiométricos distinguindo proporção, excesso e eficiência experimental.",
        "A equação balanceada fornece proporções em mol, não em gramas. Converta quantidades disponíveis em mol e compare-as com os coeficientes estequiométricos: o reagente que permite formar a menor quantidade de produto é o limitante; os demais podem ficar em excesso. A quantidade máxima de produto calculada a partir do limitante é o rendimento teórico.\n\nO rendimento percentual compara produto real com teórico. Uma amostra impura contém menos reagente efetivo que sua massa total sugere; a fração de pureza deve ser aplicada antes da estequiometria. Rendimento baixo pode decorrer de reação incompleta, reações paralelas, perdas na separação ou erros de medida. É importante distinguir perda de produto durante purificação de baixa conversão química, pois as estratégias de melhoria são diferentes.",
        "Na reação N₂ + 3 H₂ → 2 NH₃, 1,0 mol de N₂ precisa de 3,0 mol de H₂. Com 1,0 mol de N₂ e 2,0 mol de H₂, o H₂ limita a formação a 4/3 mol de NH₃. Se forem isolados 1,0 mol, o rendimento é 75%.",
        "Para N₂ + 3 H₂ → 2 NH₃, qual reagente limita se há 1 mol de N₂ e 2 mol de H₂?",
        [ "H₂.", "N₂.", "NH₃.", "Nenhum; a razão é 1:2." ],
        "a",
        "Um mol de N₂ exigiria três mols de H₂; como há apenas dois, H₂ é o reagente limitante.",
        [
          [ "Na equação 2 H₂ + O₂ → 2 H₂O, quantos mols de água podem formar-se com 2 mol de H₂ e O₂ em excesso?", [ "0,5 mol.", "2 mol.", "1 mol.", "4 mol." ], "b", "A razão H₂:H₂O é 1:1, portanto 2 mol de H₂ formam 2 mol de água." ],
          [ "O reagente limitante é aquele que:", [ "Está em maior excesso.", "Tem a maior massa molar.", "Se esgota primeiro segundo a proporção balanceada.", "Tem sempre a menor massa." ], "c", "A comparação estequiométrica, não a massa isolada, identifica o limitante." ],
          [ "Se a quantidade real é 8 g e a teórica 10 g, qual é o rendimento?", [ "125%.", "18%.", "2%.", "80%." ], "d", "8/10 × 100 = 80%." ],
          [ "Uma amostra de 20 g tem pureza de 80%. Qual massa de substância pura contém?", [ "16 g.", "4 g.", "20,8 g.", "25 g." ], "a", "20 g × 0,80 = 16 g." ],
          [ "O que é rendimento teórico?", [ "Quantidade de impureza.", "Máximo de produto previsto pelo reagente limitante.", "Produto medido sem considerar reação.", "Massa total de solvente." ], "b", "É o máximo estequiométrico assumindo conversão completa e sem perdas." ],
          [ "Um rendimento isolado baixo pode resultar de:", [ "Massa molar variável.", "Coeficientes sem relação com mol.", "Perdas na purificação ou reações paralelas.", "A conservação da massa deixar de valer." ], "c", "Separação e seletividade podem reduzir o produto isolado." ],
          [ "Por que se balanceia uma equação química?", [ "Para que todas as massas sejam iguais a um.", "Para tornar a reação mais rápida.", "Para eliminar o reagente limitante.", "Para conservar o número de átomos de cada elemento." ], "d", "O balanceamento respeita conservação dos átomos e fornece razões molares corretas." ],
          [ "Se um reagente está em excesso, o que se espera ao final?", [ "Pode restar parte dele após o limitante se esgotar.", "Ele se converte todo necessariamente em produto.", "Ele deixa de ter átomos.", "Ele passa a ser o produto." ], "a", "O excesso não é totalmente consumido quando o reagente limitante se esgota." ],
          [ "Qual é a primeira etapa útil ao comparar quantidades em gramas com coeficientes?", [ "Dividir todos os valores por 100.", "Converter massa em quantidade de matéria usando massa molar.", "Comparar diretamente os números de gramas.", "Somar massas sem conhecer fórmula." ], "b", "Coeficientes representam mol; a conversão para mol permite comparação adequada." ]
        ],
        level: "dificil"
      ),
      SeedCurriculum.module_data(
        "Gases reais e balanços em sistemas fechados",
        "Aplique modelos de gases e conservação para interpretar operações e desvios de idealidade.",
        "O modelo de gás ideal, PV=nRT, aproxima partículas como pontos sem volume próprio e sem forças intermoleculares, exceto durante colisões. É útil em baixas pressões e temperaturas suficientemente altas, quando as partículas estão afastadas. Gases reais desviam do modelo quando volume molecular e atrações tornam-se relevantes; o fator de compressibilidade Z=PV/nRT quantifica o desvio, com Z=1 para o ideal.\n\nEm um sistema fechado, matéria não atravessa a fronteira, embora energia possa ser transferida como calor ou trabalho. Balanços de massa e de espécies combinam conservação de átomos com quantidade de matéria, e são essenciais em reatores, tanques e separadores. Para misturas gasosas ideais, a pressão parcial de cada componente é sua fração molar vezes a pressão total. Ao aplicar relações, confira unidades absolutas de pressão e temperatura e declare as hipóteses do modelo.",
        "Um tanque contém 2,0 mol de gás ideal a 300 K em 0,050 m³. Com R=8,314 Pa·m³·mol⁻¹·K⁻¹, P=nRT/V ≈ 99 800 Pa. Se a pressão medida divergir muito, investigue se o gás está em regime não ideal e se as condições e unidades foram registradas corretamente.",
        "Para uma mistura ideal, como se calcula a pressão parcial de um componente?",
        [ "Somando o volume ao número de mols.", "Usando apenas a temperatura em Celsius.", "Multiplicando sua fração molar pela pressão total.", "Dividindo a pressão total pela massa molar." ],
        "c",
        "A lei de Dalton dá pᵢ = xᵢP para misturas ideais, com xᵢ como fração molar.",
        [
          [ "Qual expressão representa a equação do gás ideal?", [ "P+V=n−RT.", "PV=R/T.", "P=n+V.", "PV=nRT." ], "d", "A relação é PV=nRT com temperatura absoluta e unidades consistentes." ],
          [ "Qual valor de Z corresponde ao comportamento ideal?", [ "1.", "0.", "100.", "−1." ], "a", "Z=PV/nRT e vale 1 para gás ideal." ],
          [ "Qual condição geralmente aproxima um gás do comportamento ideal?", [ "Somente quando o gás é colorido.", "Baixa pressão e temperatura relativamente alta.", "Pressão extremamente alta e temperatura muito baixa.", "Qualquer pressão sem exceção." ], "b", "Partículas afastadas reduzem efeitos de volume e atrações." ],
          [ "Em sistema fechado, qual afirmação é correta?", [ "Não existe reação química.", "A pressão é sempre constante.", "Não há troca de matéria com o exterior.", "Não há troca de energia em hipótese alguma." ], "c", "Fechado restringe matéria, mas energia ainda pode atravessar a fronteira." ],
          [ "Qual é a fração molar de A numa mistura com 1 mol de A e 3 mol de B?", [ "0,75.", "3.", "4.", "0,25." ], "d", "xA = 1/(1+3) = 0,25." ],
          [ "Se xA=0,25 e P=200 kPa, qual é pA ideal?", [ "50 kPa.", "200 kPa.", "800 kPa.", "0,25 kPa." ], "a", "pA=xAP=0,25×200=50 kPa." ],
          [ "Por que temperatura deve ser usada em kelvin na equação dos gases?", [ "A equação exige temperatura negativa.", "A escala absoluta relaciona-se proporcionalmente à energia térmica.", "Celsius nunca pode ser medido.", "Kelvin cancela a pressão." ], "b", "PV=nRT usa temperatura termodinâmica absoluta." ],
          [ "O que pode explicar Z diferente de 1?", [ "Mudança do valor da constante R.", "A massa do recipiente.", "Interações intermoleculares e volume finito das partículas.", "Ausência de moléculas." ], "c", "Essas hipóteses do modelo ideal falham em condições de desvio." ],
          [ "Qual é o papel de um balanço de massa?", [ "Medir somente temperatura.", "Substituir todas as medições.", "Ignorar reações.", "Aplicar conservação de matéria às entradas, saídas e acumulação." ], "d", "Balanços contabilizam fluxos e acúmulo respeitando conservação." ]
        ],
        level: "profissional"
      )
    ],
    "quimica-ii" => [
      SeedCurriculum.module_data(
        "Propriedades coligativas e aplicações",
        "Explique efeitos de solutos não voláteis sobre pressão de vapor, ebulição e congelamento.",
        "Propriedades coligativas dependem principalmente do número de partículas de soluto em relação ao solvente, e não da identidade química do soluto em soluções suficientemente diluídas e ideais. A presença de soluto não volátil reduz a fração de moléculas de solvente na superfície e diminui a pressão de vapor. Consequentemente, a solução ferve a temperatura mais alta e congela a temperatura mais baixa que o solvente puro.\n\nA elevação ebuliométrica e o abaixamento crioscópico podem ser aproximados por ΔTᵦ=iKᵦm e ΔT𝒇=iK𝒇m, em que m é a molalidade e i representa o fator de van ’t Hoff efetivo. Eletrólitos podem gerar várias partículas, mas associações iônicas e não idealidade fazem i real diferir do valor ideal. Osmose é o fluxo de solvente através de membrana semipermeável; pressão osmótica é relevante em fisiologia, conservação de alimentos e processos de membrana.",
        "Uma solução aquosa 0,10 mol/kg de glicose tem i≈1. Com K𝒇 da água ≈1,86 °C·kg/mol, o abaixamento ideal do ponto de congelamento é ΔT𝒇≈0,186 °C. Uma solução de concentração molal igual de NaCl pode produzir efeito maior porque se dissocia em íons, embora o valor real não seja exatamente duas vezes em condições não ideais.",
        "Qual tende a ser o efeito de dissolver um soluto não volátil na água?",
        [ "Diminuir a pressão de vapor e elevar a temperatura de ebulição.", "Aumentar a pressão de vapor e diminuir a temperatura de ebulição.", "Eliminar qualquer pressão osmótica.", "Manter todas as propriedades invariáveis." ],
        "a",
        "O soluto reduz a tendência de escape do solvente; por isso a pressão de vapor diminui e é preciso aquecer mais para ferver.",
        [
          [ "O que determina principalmente uma propriedade coligativa?", [ "O nome do laboratório.", "A quantidade efetiva de partículas de soluto.", "A cor do soluto.", "A massa do recipiente." ], "b", "A concentração de partículas, com correções de não idealidade, é o fator central." ],
          [ "Qual expressão aproxima a elevação ebuliométrica?", [ "ΔTᵦ=nRT.", "ΔTᵦ=m/Kᵦ.", "ΔTᵦ=iKᵦm.", "ΔTᵦ=P/V." ], "c", "A fórmula relaciona fator de partículas, constante ebuliométrica e molalidade." ],
          [ "Por que NaCl pode produzir mais partículas que glicose na mesma molalidade?", [ "Glicose é elemento metálico.", "NaCl não se dissolve.", "Glicose sempre forma quatro íons.", "NaCl se dissocia em íons em solução." ], "d", "NaCl gera Na⁺ e Cl⁻; glicose permanece como moléculas." ],
          [ "Qual grandeza usa mol de soluto por quilograma de solvente?", [ "Molalidade.", "Molaridade.", "Pressão parcial.", "Fração mássica." ], "a", "Molalidade é quantidade de matéria por massa de solvente." ],
          [ "O abaixamento crioscópico significa:", [ "Congelamento do soluto apenas.", "Redução da temperatura de congelamento da solução.", "Aumento da temperatura de congelamento.", "Aumento da pressão atmosférica." ], "b", "Soluto dissolvido baixa o ponto de congelamento do solvente." ],
          [ "O que é osmose?", [ "Evaporação de todo soluto.", "Reação de neutralização.", "Fluxo de solvente através de membrana semipermeável devido a diferença de potencial químico.", "Difusão de elétrons em metal." ], "c", "O solvente se desloca através de membrana seletiva em resposta às condições das soluções." ],
          [ "Por que se usa o fator i efetivo para eletrólitos?", [ "A massa molar muda.", "Eletrólitos não formam partículas.", "A temperatura deixa de importar.", "A dissociação e interações reais podem diferir do comportamento ideal." ], "d", "Associação e interações entre íons reduzem o número efetivo de partículas livres." ],
          [ "Em condições iguais, qual solução tende a ter maior pressão osmótica ideal?", [ "A que tem maior concentração efetiva de partículas.", "A que tem menor concentração.", "A de menor volume de recipiente apenas.", "Uma solução sem soluto." ], "a", "A pressão osmótica ideal cresce com a concentração de partículas dissolvidas." ],
          [ "Um uso de abaixamento do ponto de congelamento é:", [ "Aumentar a massa do gelo.", "Aplicar solutos em sistemas anticongelantes.", "Determinar o número atômico.", "Balancear ligações covalentes." ], "b", "Solutos apropriados reduzem a temperatura de congelamento de fluidos." ]
        ],
        level: "intermediario"
      ),
      SeedCurriculum.module_data(
        "Soluções tampão e capacidade tamponante",
        "Analise a composição e os limites de tampões em sistemas laboratoriais e biológicos.",
        "Um tampão contém um ácido fraco e sua base conjugada, ou uma base fraca e seu ácido conjugado. Quando pequenas quantidades de ácido são adicionadas, a base conjugada as consome; quando pequenas quantidades de base são adicionadas, o ácido fraco reage com elas. A equação de Henderson–Hasselbalch, pH=pKa+log([base]/[ácido]), aproxima o pH de tampões em condições apropriadas, com atividades representadas por concentrações.\n\nA capacidade tamponante mede quanto ácido ou base forte pode ser neutralizado antes de grande variação de pH. Ela aumenta com a concentração total do par e é mais eficaz quando as concentrações das duas formas são comparáveis, especialmente perto de pH=pKa. Tampões têm capacidade finita; diluição reduz sua capacidade e extremos de proporção reduzem sua eficácia. Escolha um par cujo pKa seja próximo do pH alvo e considere temperatura, força iônica e compatibilidade com o experimento.",
        "Para um tampão com pKa=4,76 e concentrações iguais de acetato e ácido acético, pH≈4,76. Se a razão base/ácido for 10, pH≈5,76. Essa estimativa assume que as concentrações representam adequadamente as atividades e que o par permanece na faixa tampão.",
        "Quando um tampão apresenta [base conjugada]=[ácido fraco], qual relação aproximada vale?",
        [ "pH=0 sempre.", "pH=2pKa.", "pH=pKa.", "pH=14 sempre." ],
        "c",
        "A razão é 1, cujo logaritmo é zero; pela equação de Henderson–Hasselbalch, pH=pKa.",
        [
          [ "Quais componentes formam um tampão ácido típico?", [ "Ácido forte e metal puro.", "Água e sal insolúvel.", "Dois ácidos fortes.", "Ácido fraco e sua base conjugada." ], "d", "A dupla conjugada neutraliza pequenas quantidades adicionadas de ácido ou base." ],
          [ "Se [base]/[ácido]=10, qual termo logarítmico aparece?", [ "+1.", "−1.", "0.", "10." ], "a", "log₁₀(10)=1." ],
          [ "Que tampão é mais apropriado para pH alvo 7,2?", [ "Água pura.", "Um par com pKa próximo de 7,2.", "Qualquer ácido forte.", "Um par com pKa 1 sem outra consideração." ], "b", "A capacidade é maior quando pH está próximo ao pKa do par." ],
          [ "O que ocorre ao diluir um tampão?", [ "O pKa muda necessariamente para 14.", "Ele se torna um ácido forte.", "Sua capacidade tamponante diminui, embora a razão possa manter pH parecido.", "A concentração total aumenta." ], "c", "Diluição reduz as quantidades por volume disponíveis para neutralizar adições." ],
          [ "Qual componente do tampão reage com pequena adição de H⁺?", [ "O ácido fraco.", "A água nunca.", "O recipiente.", "A base conjugada." ], "d", "A base conjugada aceita prótons e forma o ácido fraco." ],
          [ "Qual componente reage com pequena adição de OH⁻?", [ "O ácido fraco.", "A base conjugada exclusivamente.", "O eletrodo.", "O gás do ambiente." ], "a", "O ácido fraco doa prótons que neutralizam OH⁻." ],
          [ "Um tampão pode resistir indefinidamente a adições de ácido?", [ "Apenas se for diluído.", "Não; sua capacidade é finita.", "Sim, se o pH inicial for 7.", "Sim, porque não reage." ], "b", "Os componentes do par se esgotam quando a quantidade adicionada é grande." ],
          [ "O que representa pKa?", [ "O pH de toda solução.", "A pressão de vapor.", "−log da constante de dissociação ácida Ka.", "A massa do ácido." ], "c", "pKa = −log Ka." ],
          [ "Por que Henderson–Hasselbalch é uma aproximação?", [ "Ignora a existência do ácido.", "Serve apenas para sólidos.", "Elimina a conservação de carga.", "Usa concentrações em lugar de atividades e pressupostos de equilíbrio." ], "d", "A relação deriva do equilíbrio e aproxima atividades por concentrações em condições apropriadas." ]
        ],
        level: "dificil"
      ),
      SeedCurriculum.module_data(
        "Solubilidade, precipitação e controle de processo",
        "Use produto de solubilidade e balanços para prever precipitação e remover espécies.",
        "Para um sal pouco solúvel como AgCl(s) ⇌ Ag⁺(aq)+Cl⁻(aq), o produto de solubilidade Ksp relaciona atividades dos íons no equilíbrio; em solução diluída, concentrações podem servir como aproximação. O produto iônico Q é calculado com as condições atuais: se Q>Ksp, há tendência de precipitação; se Q<Ksp, a solução é insaturada; se Q=Ksp, está em equilíbrio com o sólido.\n\nO íon comum geralmente diminui a solubilidade de um sal ao deslocar o equilíbrio, enquanto complexação pode elevar a quantidade total dissolvida ao reduzir a concentração do íon livre. pH também altera solubilidade de sais cujos ânions reagem com H⁺. Em tratamento de água e processos industriais, precipitação seletiva exige avaliar equilíbrio, cinética, interferentes, separação do sólido e descarte. Uma previsão de equilíbrio não garante que o precipitado se forme rapidamente nem que seja fácil de filtrar.",
        "Para AgCl, Ksp=[Ag⁺][Cl⁻] em uma aproximação. Se as concentrações instantâneas são 10⁻⁴ mol/L de Ag⁺ e 10⁻⁴ mol/L de Cl⁻, então Q=10⁻⁸. Comparar esse valor com o Ksp tabulado permite prever se haverá precipitação; não se deve concluir sem conhecer a temperatura e as condições do meio.",
        "O que indica Q>Ksp para uma solução que pode formar um sal pouco solúvel?",
        [ "Há tendência termodinâmica à precipitação.", "A solução é necessariamente insaturada.", "O sólido dissolve sem limite.", "O equilíbrio não depende de concentrações." ],
        "a",
        "Q superior ao Ksp indica excesso de íons em relação à condição de saturação e favorece precipitação.",
        [
          [ "Para CaF₂(s) ⇌ Ca²⁺ + 2F⁻, qual expressão de Ksp vale?", [ "[Ca²⁺]+[F⁻].", "[Ca²⁺][F⁻]².", "[Ca²⁺]²[F⁻].", "[CaF₂][F⁻]." ], "b", "Os expoentes seguem os coeficientes estequiométricos dos íons dissolvidos." ],
          [ "Se Q<Ksp, a solução é:", [ "Um sólido puro.", "Sempre neutra.", "Insaturada em relação ao sólido.", "Necessariamente supersaturada." ], "c", "O produto iônico está abaixo da condição de saturação." ],
          [ "Qual efeito costuma ter um íon comum sobre a solubilidade?", [ "Aumentá-la sem limite.", "Não alterar equilíbrio algum.", "Converter o sal em elemento.", "Reduzi-la." ], "d", "Adicionar um produto desloca o equilíbrio para favorecer o sólido." ],
          [ "Como complexação pode aumentar a solubilidade total de um metal?", [ "Reduzindo a concentração do íon metálico livre ao formar complexo.", "Aumentando o Ksp intrínseco do sólido em qualquer condição.", "Eliminando todos os ligantes.", "Mudando o número atômico." ], "a", "A ligação do íon livre a um ligante pode deslocar a dissolução para repor o íon consumido." ],
          [ "Por que pH pode influenciar a dissolução de um carbonato?", [ "A temperatura fica fixa em 0 K.", "H⁺ reage com CO₃²⁻, alterando o equilíbrio de dissolução.", "pH muda a massa molar do cálcio.", "Carbonato não contém carga." ], "b", "Protonação do ânion diminui sua concentração livre e pode favorecer dissolução." ],
          [ "Qual é a diferença entre Ksp e Q?", [ "Ambos são massas.", "Ksp vale apenas para gases.", "Ksp é constante de equilíbrio; Q usa concentrações instantâneas.", "Q é sempre constante e Ksp varia em cada amostra." ], "c", "Comparar Q às condições de equilíbrio Ksp prevê a direção inicial." ],
          [ "Uma precipitação seletiva requer:", [ "Adicionar qualquer sal em excesso.", "Ignorar interferentes.", "Somente resfriar sem medir.", "Condições em que o analito precipite preferencialmente sem remover indevidamente outros íons." ], "d", "A seletividade depende de constantes, pH e composição da mistura." ],
          [ "Uma solução com Q>Ksp pode permanecer sem precipitado imediatamente porque:", [ "A nucleação e o crescimento podem ser cineticamente lentos.", "A termodinâmica não existe.", "O produto iônico é zero.", "O sólido tem massa molar infinita." ], "a", "Supersaturação pode persistir por barreiras cinéticas de nucleação." ],
          [ "O que deve ser considerado ao remover metais por precipitação?", [ "A massa do béquer vazio.", "Equilíbrio, pH, separação do sólido e descarte adequado.", "Apenas o nome do metal.", "Somente a cor da água." ], "b", "Processo completo inclui formação, separação e manejo seguro do resíduo." ]
        ],
        level: "profissional"
      )
    ],
    "fisico-quimica" => [
      SeedCurriculum.module_data(
        "Calorimetria e primeira lei da termodinâmica",
        "Quantifique trocas de calor e energia em transformações físicas e químicas.",
        "A primeira lei da termodinâmica expressa conservação de energia: a variação da energia interna de um sistema resulta do calor e do trabalho transferidos. Uma convenção comum é ΔU=q+w, em que q positivo significa calor recebido pelo sistema e w positivo significa trabalho realizado sobre ele; ao resolver, declare a convenção usada. Em calorimetria, o calor sensível pode ser aproximado por q=mcΔT, e mudanças de fase incluem calor latente sem variação de temperatura durante a transição ideal.\n\nEm um calorímetro isolado ideal, o calor perdido por uma parte é ganho pelas outras, de modo que a soma dos q é zero. Na prática, capacidade térmica do recipiente, perdas ao ambiente, calibração e homogeneidade da amostra afetam a medida. Entalpia é útil em processos a pressão constante: sob condições apropriadas, o calor trocado é qₚ=ΔH. A medição experimental fornece evidência sobre energia, mas sua qualidade depende de calibração e incerteza.",
        "Uma amostra de 100 g de água, com c=4,18 J·g⁻¹·°C⁻¹, aquece de 20 °C a 25 °C. O calor absorvido é q=100×4,18×5=2090 J. Se o aquecimento ocorreu por uma reação em calorímetro ideal, o calor da reação tem sinal oposto ao ganho da água.",
        "Qual expressão calcula calor sensível quando o calor específico é constante?",
        [ "q=PV.", "q=n/V.", "q=mcΔT.", "q=m/c." ],
        "c",
        "Calor sensível é massa vezes calor específico vezes variação de temperatura.",
        [
          [ "Uma amostra recebe calor. Qual é o sinal de q pela convenção indicada?", [ "Negativo.", "Sempre zero.", "Depende da cor.", "Positivo." ], "d", "Calor recebido pelo sistema é definido como q positivo." ],
          [ "Quanto calor aquece 10 g de água por 2 °C, usando c=4,18 J g⁻¹ °C⁻¹?", [ "83,6 J.", "20,9 J.", "8,36 J.", "836 J." ], "a", "q=10×4,18×2=83,6 J." ],
          [ "Durante uma mudança de fase ideal de substância pura, a temperatura:", [ "Não pode haver transferência de energia.", "Pode permanecer constante enquanto há troca de calor.", "Aumenta sempre sem limite.", "Cai necessariamente a zero kelvin." ], "b", "A energia pode alterar a fase sem mudar a temperatura durante a transição." ],
          [ "Em um calorímetro ideal isolado, qual relação vale para os componentes?", [ "Nenhum troca energia.", "A massa total desaparece.", "A soma das trocas de calor é zero.", "Todos absorvem calor positivo." ], "c", "Energia transferida internamente conserva-se: calor perdido iguala o ganho." ],
          [ "Se o sistema realiza trabalho sobre a vizinhança, qual é w na convenção ΔU=q+w?", [ "Positivo.", "Sempre zero.", "Igual a q sem exceção.", "Negativo." ], "d", "Trabalho realizado pelo sistema é trabalho feito sobre ele com sinal negativo." ],
          [ "Sob pressão constante e somente trabalho pressão-volume, o calor é relacionado a:", [ "Variação de entalpia.", "Número atômico.", "Massa molar.", "Constante de equilíbrio apenas." ], "a", "Nessas condições, qₚ=ΔH." ],
          [ "Que procedimento melhora uma medida calorimétrica?", [ "Usar unidades incompatíveis.", "Calibrar o calorímetro e reduzir perdas térmicas.", "Deixar a amostra evaporar.", "Ignorar a temperatura inicial." ], "b", "Calibração e isolamento melhoram a confiabilidade do balanço energético." ],
          [ "Uma reação libera calor para a água do calorímetro. O sinal de ΔH da reação tende a ser:", [ "Sempre zero.", "Indefinido por convenção.", "Negativo.", "Positivo." ], "c", "A reação exotérmica perde calor, portanto sua variação de entalpia é negativa." ],
          [ "Qual é a unidade SI de energia?", [ "Kelvin.", "Mol.", "Pascal.", "Joule." ], "d", "A unidade SI de energia é o joule (J)." ]
        ],
        level: "intermediario"
      ),
      SeedCurriculum.module_data(
        "Energia livre de Gibbs e espontaneidade",
        "Combine entalpia, entropia e temperatura para avaliar favorabilidade termodinâmica.",
        "A energia livre de Gibbs relaciona entalpia e entropia por ΔG=ΔH−TΔS, para temperatura constante. A pressão e temperatura constantes, ΔG<0 indica processo espontâneo na direção escrita, ΔG>0 indica que a direção inversa é favorecida e ΔG=0 caracteriza equilíbrio. Espontaneidade é uma afirmação termodinâmica, não uma previsão de rapidez: uma reação favorável pode ser muito lenta por causa de uma barreira de ativação alta.\n\nEntropia pode ser entendida como dispersão de energia e número de arranjos microscópicos acessíveis, não simplesmente “desordem”. A contribuição −TΔS cresce em magnitude com temperatura, de modo que uma transformação pode mudar de favorabilidade conforme T. Em equilíbrio químico, ΔG=ΔG°+RT ln Q; quando Q=K, ΔG=0 e ΔG°=−RT ln K. Essas relações permitem conectar direção de reação, composição e temperatura sem confundir equilíbrio com velocidade.",
        "Para um processo com ΔH=+20 kJ/mol e ΔS=+100 J·mol⁻¹·K⁻¹, converta ΔS para 0,100 kJ·mol⁻¹·K⁻¹. A 300 K, ΔG=20−300×0,100=−10 kJ/mol; a transformação é favorável nessa condição, embora sua velocidade dependa da cinética.",
        "O que indica ΔG<0 para uma transformação a temperatura e pressão constantes?",
        [ "A direção escrita é termodinamicamente espontânea.", "A reação ocorre instantaneamente.", "O sistema está necessariamente em equilíbrio.", "A energia é criada." ],
        "a",
        "ΔG negativo indica direção favorável termodinamicamente, mas não informa a rapidez da transformação.",
        [
          [ "Qual expressão define a energia livre de Gibbs?", [ "ΔG=ΔH+ΔS sem temperatura.", "ΔG=ΔH−TΔS.", "ΔG=PV.", "ΔG=mRT." ], "b", "A expressão relaciona entalpia, temperatura absoluta e entropia." ],
          [ "Qual é a condição de equilíbrio químico em termos de ΔG da reação?", [ "ΔG>100.", "ΔG=ΔH.", "ΔG=0.", "ΔG<0 sempre." ], "c", "No equilíbrio não há força termodinâmica líquida para avançar na direção considerada." ],
          [ "Uma reação com ΔG negativo é necessariamente rápida?", [ "Sim, sempre instantânea.", "Sim, independentemente do mecanismo.", "Não pode ocorrer.", "Não; a cinética e a energia de ativação determinam a velocidade." ], "d", "Termodinâmica prevê favorabilidade, não a barreira cinética." ],
          [ "Por que usar kelvin em TΔS?", [ "A temperatura termodinâmica deve ser absoluta.", "Celsius é unidade de energia.", "Kelvin elimina ΔH.", "A fórmula requer temperatura negativa." ], "a", "A temperatura absoluta é necessária para as relações termodinâmicas." ],
          [ "Se ΔH<0 e ΔS>0, qual sinal tende a ter ΔG?", [ "Depende apenas da pressão do recipiente.", "Negativo em qualquer T positiva.", "Positivo em qualquer T.", "Zero sempre." ], "b", "ΔH negativo e −TΔS também negativo contribuem para ΔG negativo." ],
          [ "Se ΔH>0 e ΔS>0, elevar T pode:", [ "Aumentar ΔH até sempre infinito.", "Impedir qualquer transformação.", "Tornar −TΔS suficientemente negativo para favorecer o processo.", "Eliminar a entropia." ], "c", "A contribuição entrópica favorável cresce em magnitude com T." ],
          [ "Qual relação vale entre ΔG° e constante de equilíbrio?", [ "ΔG°=RT/K.", "ΔG°=K+T.", "ΔG°=0 para qualquer K.", "ΔG°=−RT ln K." ], "d", "A relação termodinâmica conecta estado padrão e composição de equilíbrio." ],
          [ "Se K>1, qual sinal de ΔG° vale a T fixa?", [ "Negativo.", "Positivo.", "Sempre zero.", "Não se pode relacionar." ], "a", "ln K positivo implica ΔG° negativo pela expressão −RT ln K." ],
          [ "Qual interpretação de entropia é mais cuidadosa?", [ "Número de moléculas visíveis.", "Medida ligada à dispersão de energia e aos arranjos microscópicos acessíveis.", "Sinônimo exato de sujeira.", "Medida de massa." ], "b", "A entropia é uma propriedade estatística e energética, não simplesmente desordem cotidiana." ]
        ],
        level: "dificil"
      ),
      SeedCurriculum.module_data(
        "Diagramas de fase e transições em processos",
        "Interprete regiões de estabilidade e pontos característicos em diagramas de fase.",
        "Um diagrama de fase mostra qual fase é estável em função de variáveis como temperatura e pressão. Linhas de fronteira indicam coexistência de duas fases em equilíbrio; o ponto triplo é a condição em que três fases coexistem, e acima do ponto crítico desaparece a distinção entre líquido e gás. A inclinação das curvas de equilíbrio relaciona-se às mudanças de volume e entalpia, como expressa qualitativamente pela equação de Clapeyron.\n\nPara a maioria das substâncias, aumentar pressão favorece a fase de menor volume molar; água é uma exceção importante perto da fusão, pois o gelo comum é menos denso que a água líquida e a curva sólido-líquido tem inclinação negativa. Em processos industriais, diagramas orientam seleção de condições de secagem, liquefação, cristalização e armazenamento. Deve-se identificar substância, escala dos eixos e caminho percorrido antes de inferir transições; impurezas podem deslocar temperaturas e alterar a cristalização.",
        "Ao aquecer uma substância a pressão constante, um caminho horizontal cruza fronteiras do diagrama. Cada cruzamento indica uma transição de fase, desde que o sistema esteja em equilíbrio. No caso da água perto de 1 atm, gelo funde próximo de 0 °C e água entra em ebulição próxima de 100 °C; esses valores dependem da pressão e da pureza.",
        "O que representa uma linha de fronteira em um diagrama de fases?",
        [ "A densidade de uma única fase sem transição.", "A concentração de prótons.", "Condições em que duas fases coexistem em equilíbrio.", "Uma reação que ocorre em todos os estados." ],
        "c",
        "Sobre a curva de coexistência, as fases adjacentes podem estar em equilíbrio umas com as outras.",
        [
          [ "O que caracteriza o ponto triplo?", [ "Fim de toda matéria.", "Somente coexistência de dois sólidos.", "Temperatura igual a 0 °C para todas as substâncias.", "Coexistência de sólido, líquido e vapor." ], "d", "No ponto triplo, três fases coexistem em equilíbrio." ],
          [ "O ponto crítico marca:", [ "O fim da distinção entre líquido e gás.", "O início da fusão de todo sólido.", "A pressão atmosférica padrão.", "A temperatura de congelamento universal." ], "a", "Acima do ponto crítico forma-se fluido supercrítico, sem fronteira líquido-gás." ],
          [ "Na maioria das substâncias, aumentar pressão favorece:", [ "A fase com maior número de átomos.", "A fase de menor volume molar.", "Sempre a fase gasosa.", "A fase mais quente." ], "b", "Pressão favorece estados com volume menor, segundo equilíbrio de fases." ],
          [ "Por que a curva sólido-líquido da água tem comportamento incomum perto da fusão?", [ "O líquido é sempre mais leve que o vapor.", "A água não responde à pressão.", "O gelo comum é menos denso e ocupa maior volume que a água líquida.", "A água não possui fase sólida." ], "c", "A fusão reduz volume, então pressão pode favorecer a fase líquida." ],
          [ "Uma curva de coexistência separa:", [ "Dois elementos da tabela periódica.", "Uma solução de seu recipiente.", "Apenas temperaturas positivas e negativas.", "Regiões de estabilidade de fases distintas." ], "d", "Cada região corresponde à fase estável em determinadas condições." ],
          [ "O que ocorre ao seguir um caminho de aquecimento a pressão constante?", [ "Cruzar fronteiras pode causar transições de fase.", "A pressão aumenta necessariamente.", "A substância muda de elemento.", "O diagrama deixa de ser aplicável." ], "a", "O caminho atravessa limites de fase conforme temperatura cresce." ],
          [ "Por que impurezas podem alterar a temperatura de cristalização?", [ "Não podem interagir com líquidos.", "Elas modificam o equilíbrio e a composição das fases.", "Elas mudam o número atômico do solvente.", "Apenas porque têm cor." ], "b", "Solutos alteram potencial químico e podem deslocar a cristalização." ],
          [ "O que é um fluido supercrítico?", [ "Um líquido abaixo do ponto triplo.", "Um vapor em equilíbrio com sólido apenas.", "Estado acima da temperatura e pressão críticas sem distinção líquido-gás.", "Uma mistura de sólido com gelo." ], "c", "Acima do ponto crítico, propriedades variam continuamente entre comportamentos líquidos e gasosos." ],
          [ "Para ler um diagrama corretamente, é essencial:", [ "Ignorar valores de pressão.", "Supor que todos os diagramas são iguais.", "Usar apenas a cor das regiões.", "Verificar eixos, substância e unidades antes de interpretar o caminho." ], "d", "Escalas e identidade do sistema são necessárias para atribuir significado às regiões." ]
        ],
        level: "profissional"
      )
    ]
  }.freeze
end
