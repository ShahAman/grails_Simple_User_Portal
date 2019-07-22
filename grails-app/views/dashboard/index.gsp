%{--Include Main Layout--}%
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['Profile']"/>
    </div>
    <div class="card-body">
            <table class="table">
                <UIHelper:memberInfo/>
            </table>
    </div>
</div>

</body>
</html>