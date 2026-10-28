# Quimica

Uma plataforma educativa em português para estudantes de cursos técnicos e pessoas autodidatas. Cada módulo começa com explicações e exemplos passo a passo e termina com dez questões de múltipla escolha, feedback e uma meta de aprovação de 70%. As trilhas também têm avaliações finais.

## Trilhas

- Química Analítica
- Química Orgânica I
- Química Orgânica II
- Química I
- Química II
- Química Inorgânica
- Físico-Química
- Análise Instrumental
- Tecnologia Química
- Utilidades Industriais e Tratamento de Efluentes
- Introdução aos Materiais e Corrosão
- Equipamentos Industriais e Controle de Processos
- Gestão de Processos Industriais e Empreendedorismo
- Operações Básicas de Laboratório
- Operações Unitárias
- Segurança do Trabalho e Meio Ambiente
- Estágio Curricular e TCC
- Projeto Integrador
- Seminários Interdisciplinares

As trilhas cobrem as disciplinas e os tópicos curriculares reunidos em `Referencias_para_desenvolver`, incluindo química analítica e instrumental, química geral e orgânica, processos industriais, utilidades, segurança e projetos. Os módulos são organizados por nível — Iniciante, Intermediário, Difícil e Profissional — e ficam acessíveis sem bloqueios. Os textos introduzem os conceitos e avançam para cálculos, interpretação de dados e aplicações técnicas. Cada módulo e cada avaliação final possui dez questões; é preciso acertar pelo menos 70% para concluir a etapa e receber XP. O progresso fica salvo na sessão do navegador, sem necessidade de criar uma conta.

## Requisitos

- Ruby 4.0 ou compatível com Rails 8.1
- Bundler

O banco SQLite e os assets não exigem Node.js.

## Executar localmente

No PowerShell, na pasta do projeto:

```powershell
bundle install
bundle exec rails db:prepare
bundle exec rails server
```

Abra `http://localhost:3000`. Os dados das aulas são definidos em `db/seeds.rb`; para carregá-los novamente, execute:

```powershell
bundle exec rails db:seed
```

## Publicar no Render

Este é um aplicativo Rails dinâmico: GitHub Pages não executa o servidor Rails nem seu banco. O arquivo `render.yaml` configura o aplicativo para o Render usando o `Dockerfile` da aplicação. O banco SQLite contém apenas o catálogo de aulas e é preparado automaticamente ao iniciar; o progresso individual fica salvo na sessão do navegador.

1. Acesse o [Render Blueprint](https://dashboard.render.com/blueprints) e entre ou crie sua conta.
2. Crie um Blueprint apontando para o repositório público `https://github.com/Rikelvypereiraborges/quimica-educativa`, na branch `main`.
3. Revise e implante o serviço gratuito descrito em `render.yaml`.
4. Após o deploy terminar, abra o endereço `.onrender.com` exibido no painel do Render.

Ao fornecer somente a URL pública, o Render não recebe notificações de novos commits. Conecte sua conta GitHub ao Render para habilitar atualizações automáticas; sem essa integração, sincronize o Blueprint e implante a versão mais recente manualmente pelo painel. A inicialização prepara o banco e reaplica as sementes de forma idempotente para manter o catálogo atualizado após cada implantação.

O Render gratuito suspende o serviço após 15 minutos sem acessos; a primeira visita após a suspensão pode levar cerca de um minuto para carregar. O plano gratuito é para testes e projetos pessoais. Consulte as [limitações do Render gratuito](https://render.com/docs/free).

## Testes

```powershell
bundle exec rails test
```
