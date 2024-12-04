# Projeto ColdFusion de Gestão de Usuários

Este projeto demonstra a utilização de componentes ColdFusion (`.cfc`) para gerenciar um banco de dados de usuários.

## Como Usar

1. Crie um banco de dados MySQL chamado `test_db` com a seguinte tabela `users`:

    ```sql
    CREATE TABLE users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100),
        email VARCHAR(100)
    );
    ```

2. Configure o ColdFusion para conectar ao banco de dados, criando uma fonte de dados chamada `test_db`.

3. Coloque o arquivo `User.cfc` na pasta `components` e o arquivo `index.cfm` na pasta `pages`.

4. Acesse a página `index.cfm` no seu navegador e utilize o formulário para adicionar e visualizar usuários.

## Funcionalidades

- Adicionar usuários ao banco de dados.
- Exibir todos os usuários cadastrados.

## Requisitos

- Adobe ColdFusion instalado.
- Servidor web configurado (ex: Apache).
- Banco de dados MySQL configurado com a tabela `users`.

## Tecnologia Utilizada

<a href="https://programartudo.blogspot.com/2024/12/coldfusion-explorando-uma-ferramenta.html" target="_blank"><img loading="lazy" src="https://i.ibb.co/Fh0pyX0/coldfusion.png" width="50" height="50" alt="HTML Icon"/></a>
