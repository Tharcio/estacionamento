<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main"/>
        <title>Administrator</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>

        <g:form action="signIn">
            <input type="hidden" name="targetUri" value="${targetUri}"/>
            <table>
                <tbody>
                    <tr>
                        <td>Administrator Name:</td>
                        <td><input type="text" name="admName" value="${admName}"/></td>
                    </tr>
					
					<tr>
                        <td>Administrator Password:</td>
                        <td><input type="text" name="senha" value="${senha}"/></td>
                    </tr>
					
                    <tr>
                        <td/>
                        <td>
                            <input type="submit" value="Sign in"/>

                            

                            
                        </td>
                    </tr>
                </tbody>
            </table>
        </g:form>
    </body>
</html>