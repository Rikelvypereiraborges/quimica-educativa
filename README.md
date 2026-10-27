# Quimica

Uma plataforma educativa em português para estudantes de cursos técnicos e de graduação. A aplicação apresenta seis trilhas introdutórias com conceitos, exemplos e exercícios de múltipla escolha com feedback imediato.

## Trilhas

- Química Analítica
- Química Orgânica
- Química Inorgânica
- Físico-Química
- Operações Básicas de Laboratório
- Operações Unitárias

Cada trilha começa pelos fundamentos e reúne três aulas introdutórias. As respostas corretas concluem a aula e concedem XP; o progresso fica salvo na sessão do navegador, sem necessidade de criar uma conta.

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
2. Crie um Blueprint e conecte o repositório `Rikelvypereiraborges/quimica-educativa`, na branch `main`.
3. Revise e implante o serviço gratuito descrito em `render.yaml`.
4. Após o deploy terminar, abra o endereço `.onrender.com` exibido no painel do Render.

O Render gratuito suspende o serviço após 15 minutos sem acessos; a primeira visita após a suspensão pode levar cerca de um minuto para carregar. O plano gratuito é para testes e projetos pessoais. Consulte as [limitações do Render gratuito](https://render.com/docs/free).

## Testes

```powershell
bundle exec rails test
```
