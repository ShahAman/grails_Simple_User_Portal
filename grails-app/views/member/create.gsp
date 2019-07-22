<%--
  Created by IntelliJ IDEA.
  User: Aman's PC
  Date: 20-Jul-19
  Time: 1:02 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['Create']"/>
    </div>
    <div class="card-body">
        <g:form controller="member" action="save">

        %{--Partial Templating--}%
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                <g:link controller="member" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>