<%--
  Created by IntelliJ IDEA.
  User: Aman's PC
  Date: 22-Jul-19
  Time: 8:16 PM
--%>


%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['Update']"/>
    </div>
    <div class="card-body">
        <g:form controller="member" action="changePass">


                <div class="form-group">
                    <label><g:message code="password"/> *</label>
                    <g:passwordField name="password" class="form-control" value="${member?.password}" placeholder="Please Enter Password"/>
                    <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter a Password."/>
                </div>




                <div class="form-group">
                    <label>New Password *</label>
                    <g:passwordField name="passwordNew1" class="form-control" value="${member?.password}" placeholder="Please Enter New Password"/>
                    <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter New Password."/>
                </div>



                <div class="form-group">
                    <label>Confirm Password *</label>
                    <g:passwordField name="passwordNew2" class="form-control" value="${member?.password}" placeholder="Please Enter to Confirm Password"/>
                    <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter Confirm New Password."/>
                </div>


            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="changePass" value="${g.message(code: "changePass")}"/>
                <g:link controller="member" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>