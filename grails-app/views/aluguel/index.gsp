<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'aluguel.label', default: 'Aluguel')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
            <content tag="nav">   
            <li class="nav-item">
                <g:link controller="reserva" action="create">Faça sua Reserva!</g:link> 
            </li>
            
            <li class="nav-item">       
                 <a href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Cadastre-se<span class="caret"></span></a>     
                 <ul class="dropdown-menu">        
                     <g:link controller="clienteFisico" action="create">Pessoa Física</g:link> 
                     <g:link controller="clienteJuridico" action="create">Pessoa Jurídica</g:link>
                     <g:link controller="carro" action="create">Carro</g:link>
                     <g:link controller="funcionario" action="create">Funcionário</g:link>    
                 </ul>     
             </li>
        </content>
        <a href="#list-aluguel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-aluguel" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${aluguelList}" />

            <div class="pagination">
                <g:paginate total="${aluguelCount ?: 0}" />
            </div>
        </div>
    </body>
</html>