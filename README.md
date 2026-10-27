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

## Testes

```powershell
bundle exec rails test
```
