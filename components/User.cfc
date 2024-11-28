<cfcomponent displayname="User Management" hint="Gerencia usuários no sistema">
    
    <!--- Função para adicionar um usuário --->
    <cffunction name="addUser" access="public" returntype="boolean" output="false">
        <cfargument name="name" type="string" required="true">
        <cfargument name="email" type="string" required="true">
        
        <!--- Query para adicionar um usuário ao banco de dados --->
        <cfquery datasource="test_db">
            INSERT INTO users (name, email)
            VALUES (<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">, 
                    <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">)
        </cfquery>
        
        <cfreturn true>
    </cffunction>

    <!--- Função para buscar todos os usuários --->
    <cffunction name="getAllUsers" access="public" returntype="query">
        <cfquery name="result" datasource="test_db">
            SELECT id, name, email FROM users;
        </cfquery>
        
        <cfreturn result>
    </cffunction>
    
</cfcomponent>
