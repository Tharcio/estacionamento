
<%@ page import="exemplodaauladetestes.Vaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vaga.label', default: 'Vaga')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vaga" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link action="overview"><g:message code="default.overview.label" default="Over" /></g:link></li>
			</ul>
		</div>
		<div id="list-vaga" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numero" title="${message(code: 'vaga.numero.label', default: 'Numero')}" />
						
						<g:sortableColumn property="setor" title="${message(code: 'vaga.setor.label', default: 'Setor')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'vaga.ocupada.label', default: 'Usuario')}" />
												
						<g:sortableColumn property="entrada" title="${message(code: 'vaga.ocupada.label', default: 'Entrada')}" />
						
						<g:sortableColumn property="saida" title="${message(code: 'vaga.ocupada.label', default: 'Saida')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vagaInstanceList}" status="i" var="vagaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
														
						<td><g:link action="show" id="${vagaInstance.numero}" >${fieldValue(bean: vagaInstance, field: "numero")}</g:link></td>
						
						<td><g:link action="show" id="${vagaInstance.setor}" >${fieldValue(bean: vagaInstance, field: "setor")}</g:link></td>
						
					<g:if test="${vagaInstance?.historicoDeReservas}">
						<li class="fieldcontain">
							<span id="historico-label" class="property-label"><g:message code="vaga.historico.label" default="Histórico" /></span>
							<g:each in="${vagaInstance?.historicoDeReservas}" status="i" var="reserva">
							
							<td><g:link action="show" id="${vagaInstance.reservas.usuario.username}">${fieldValue(bean: reserva, field: "username")}</g:link></td>
							
							<td><span class="property-value" aria-labelledby="historico-label">${fieldValue(bean: reserva, field: "entrada")}</span></td>
							
							<td><span class="property-value" aria-labelledby="historico-label">${fieldValue(bean: reserva, field: "saida")}</span></td>
						</g:each>
						
					</li>
				</g:if>
						
						<td><g:link action="show" id="${vagaInstance.reservas.entrada}" >${fieldValue(bean: vagaInstance, field: "descricao")}</g:link></td>
						
						<td><g:link action="show" id="${vagaInstance.reservas.saida}" >${fieldValue(bean: vagaInstance, field: "descricao")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vagaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
