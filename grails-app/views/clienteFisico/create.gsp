<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'clienteFisico.label', default: 'ClienteFisico')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
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
        <a href="#create-clienteFisico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-clienteFisico" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.clienteFisico}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.clienteFisico}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    <f:all bean="clienteFisico"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
