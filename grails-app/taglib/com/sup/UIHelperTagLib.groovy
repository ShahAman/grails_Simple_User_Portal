package com.sup

class UIHelperTagLib {
    static namespace = "UIHelper"

    AuthenticationService authenticationService

    def renderErrorMessage = { attrs, body ->
        def model = attrs.model
        String fieldName = attrs.fieldName
        String errorMessage = attrs.errorMessage? g.message(code: attrs.errorMessage): g.message(code: "invalid.input")
        if (model && model.errors && model.errors.getFieldError(fieldName)){
            out << "<small class='form-text text-danger''><strong>${errorMessage}</strong></small>"
        }
    }

    def memberActionMenu = { attrs, body ->
        out << '<li class="nav-item dropdown show">'
        out << g.link(class:"nav-link dropdown-toggle", "data-toggle":"dropdown"){authenticationService.getMemberName()}
        out << '<div class="dropdown-menu">'
        out << g.link(controller: "authentication", action: "logout", class: "dropdown-item"){g.message(code:"logout")}
        out << "</div></li>"
    }

    def leftNavigation = { attrs, body ->
        List navigations = [
                [controller: "dashboard", action: "index", name: "member"],
                [controller: "member", action: "changePass", name: "changePass"],
        ]

        if(authenticationService.isAdministratorMember()){
            navigations.add([controller: "member", action: "index", name: "dashboard"])
        }

        navigations.each { menu ->
            out << '<li class="list-group-item">'
            out << g.link(controller: menu.controller, action: menu.action) { g.message(code: menu.name, args: ['']) }
            out << '</li>'
        }
    }

    def memberInfo = { attrs, body ->
        out <<  '<th class="text-right">Name</th>'
        out << '<td class="text-left">'
        out <<  g.link(class:"nav-item dropdown show"){authenticationService.getMemberName()}
        out << '</tr>'

        out << '<tr>'
        out <<  '<th class="text-right">Email</th>'
        out << '<td class="text-left">'
        out <<   g.link(class:"nav-item dropdown show"){authenticationService.getMemberEmail()}
        out << '</tr>'

        out << '<tr>'
        out <<  '<th class="text-right">Phone Number</th>'
        out << '<td class="text-left">'
        out <<  g.link(class:"nav-item dropdown show"){authenticationService.getMemberPhone()}
        out << '</tr>'

        out << '<tr>'
        out <<  '<th class="text-right">Address</th>'
        out << '<td class="text-left">'
        out <<  g.link(class:"nav-item dropdown show"){authenticationService.getMemberAddress()}
        out << '</tr>'
    }

}
