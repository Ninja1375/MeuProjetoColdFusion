<cfset userComponent = createObject("component", "components.User")>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Gestão de Usuários</title>
</head>
<body>
    <h1>Gestão de Usuários</h1>

    <!--- Formulário para adicionar um novo usuário --->
    <form method="POST">
        <label for="name">Nome:</label>
        <input type="text" name="name" required>
        <br>
        <label for="email">Email:</label>
        <input type="email" name="email" required>
        <br>
        <button type="submit">Adicionar Usuário</button>
    </form>

    <!--- Inserir usuário, se o formulário foi enviado --->
    <cfif structKeyExists(form, "name") AND structKeyExists(form, "email")>
        <cfset userComponent.addUser(name=form.name, email=form.email)>
        <p>Usuário adicionado com sucesso!</p>
    </cfif>

    <!--- Exibir todos os usuários cadastrados --->
    <h2>Usuários Cadastrados:</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <cfoutput query="userList">
                <tr>
                    <td>#id#</td>
                    <td>#name#</td>
                    <td>#email#</td>
                </tr>
            </cfoutput>
        </tbody>
    </table>

    <!--- Buscar usuários --->
    <cfset userList = userComponent.getAllUsers()>

</body>
</html>
