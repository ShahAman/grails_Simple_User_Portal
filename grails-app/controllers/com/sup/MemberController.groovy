package com.sup


class MemberController {

    AuthenticationService authenticationService

    MemberService memberService

    def index() {
        def response = memberService.list(params)
        [memberList: response.list, total:response.count]
    }

    def details(Integer id) {
        def response = memberService.getById(id)
        if (!response){
            redirect(controller: "member", action: "index")
        }else{
            [member: response]
        }
    }

    def create() {
        [member: flash.redirectParams]
    }

    def save() {
        def response = memberService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            redirect(controller: "member", action: "create")
        }else{
            redirect(controller: "member", action: "index")
        }
    }


    def edit(Integer id) {
        if (flash.redirectParams) {
            [member: flash.redirectParams]
        } else {
            def response = memberService.getById(id)
            if (!response) {
                redirect(controller: "member", action: "index")
            } else {
                [member: response]
            }
        }
    }


    def update() {
        def response = memberService.getById(params.id)
        if (!response){
            redirect(controller: "member", action: "index")
        }else{
            response = memberService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                redirect(controller: "member", action: "edit")
            }else{
                redirect(controller: "member", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = memberService.getById(id)
        if (!response){
            redirect(controller: "member", action: "index")
        }else{
            response = memberService.delete(response)
            redirect(controller: "member", action: "index")
        }
    }

    def changePass()
    {
        def memberId = authenticationService.getMemberId()
        def response = memberService.getById(memberId)
        if (!response) {
            redirect(controller: "member", action: "index")
            response = memberService.changePass(response, params)
            if (!response.isSuccess){
                flash.message =
                        'Please enter your current password and a valid new password'
                flash.redirectParams = response.model
                redirect(controller: "member", action: "changePass")
            } else {
                redirect(controller: "member", action: "index")
            }
        }
    }

}