# Documentação do Banco de Dados

## Descrição
O repositório **banco-de-dados** contém os scripts e a estrutura do banco de dados relacional desenvolvido como parte do Projeto Integrador do curso de Análise e Desenvolvimento de Sistemas (ADS) da Faculdade SENAI. Este banco de dados serve como o componente de armazenamento de dados para o sistema, que inclui um frontend web ([Dashboard-Front](https://github.com/ProjetoIntegradorADSSenai/Dashboard-Front)), uma API backend ([API](https://github.com/ProjetoIntegradorADSSenai/API)) e um aplicativo móvel ([Mobile](https://github.com/ProjetoIntegradorADSSenai/Mobile)). O banco de dados é projetado para suportar as funcionalidades do sistema, como gerenciamento de usuários, dados da separação de peças, utilizando um Sistema de Gerenciamento de Banco de Dados Relacional PostgreSQL.

## Pré-requisitos
Para configurar e utilizar o banco de dados, você precisará dos seguintes itens:
- **PostgreSQL** (versão 13 ou superior)
- **pgAdmin** ou outra ferramenta de gerenciamento de banco de dados
- **Git** (para clonar o repositório)

## Instalação
Siga os passos abaixo para configurar o banco de dados localmente:

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/ProjetoIntegradorADSSenai/banco-de-dados.git
   ```

2. **Acesse o diretório do projeto**:
   ```bash
   cd banco-de-dados
   ```

3. **Configure o banco de dados relacional**:
   - Crie um banco de dados vazio:
     ```sql
     CREATE DATABASE projeto_integrador;
     ```

4. **Execute os scripts SQL**:
   - Localize os scripts SQL no repositório.
   - Execute os scripts usando uma ferramenta como MySQL Workbench, pgAdmin ou 
   - Esses scripts provavelmente incluem comandos DDL (Data Definition Language) para criar tabelas e DML (Data Manipulation Language) para inserir dados iniciais.

5. **Configure a conexão com a API**:
   - Atualize o arquivo de configuração da API ([API](https://github.com/ProjetoIntegradorADSSenai/API)) em `src/main/resources/application.properties` ou `application.yml` com as credenciais do banco de dados. Exemplo para MySQL:
     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/projeto_integrador
     spring.datasource.username=root
     spring.datasource.password=sua_senha
     spring.jpa.hibernate.ddl-auto=update
     ```

## Uso
O banco de dados suporta as operações realizadas pela API, pelo frontend web e pelo aplicativo móvel. Ele armazena informações cruciais para o funcionamento do sistema, como:
- Dados de peça (ex.: id e tipo de material).
- Entidades específicas do projeto (ex.: separação de peças ou métricas exibidas no dashboard).
- Relacionamentos entre tabelas para suportar consultas complexas.

**Exemplo de comandos SQL**:
- Criar uma tabela de peças:
  ```sql
  CREATE TABLE Peca (
    id INT PRIMARY KEY,
    tipo VARCHAR(255)
  );
  ```
- Inserir uma peça:
  ```sql
  INSERT INTO peca (tipo)
  VALUES ('Metal');
  ```
- Consultar peças:
  ```sql
  SELECT * FROM peca WHERE tipo = 'Metal';
  ```


## Contribuição
Para contribuir com o projeto:
1. Faça um fork do repositório.
2. Crie uma branch para suas alterações:
   ```bash
   git checkout -b minha-alteracao
   ```
3. Adicione ou modifique scripts SQL, mantendo a consistência com o modelo de dados existente.
4. Faça commit das alterações:
   ```bash
   git commit -m "Adiciona nova tabela ou script"
   ```
5. Envie para o repositório remoto:
   ```bash
   git push origin minha-alteracao
   ```
6. Abra um Pull Request no GitHub com uma descrição clara das alterações.

Certifique-se de testar os scripts SQL em um ambiente local e seguir as convenções de nomenclatura e modelagem do projeto.
