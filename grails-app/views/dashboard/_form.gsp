<g:if test="${!edit}">
    <div class="form-group">
        <label><g:message code="password"/> *</label>
        <g:passwordField name="password" class="form-control" value="${member?.password}" placeholder="Please Enter Password"/>
        <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter a Password."/>
    </div>
</g:if>


<g:if test="${!edit}">
    <div class="form-group">
        <label>New Password *</label>
        <g:passwordField name="password" class="form-control" value="${member?.password}" placeholder="Please Enter New Password"/>
        <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter New Password."/>
    </div>
</g:if>

<g:if test="${!edit}">
    <div class="form-group">
        <label>Confirm Password *</label>
        <g:passwordField name="password" class="form-control" value="${member?.password}" placeholder="Please Enter to Confirm Password"/>
        <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter Confirm New Password."/>
    </div>
</g:if>
