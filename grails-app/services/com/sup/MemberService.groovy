package com.sup

import grails.web.servlet.mvc.GrailsParameterMap


class MemberService {

    def save(GrailsParameterMap params) {
        Member member = new Member(params)
        def response = AppUtil.saveResponse(false, member)
        if (member.validate()) {
            member.save(flush: true)
            if (!member.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }


    def update(Member member, GrailsParameterMap params) {
        member.properties = params
        def response = AppUtil.saveResponse(false, member)
        if (member.validate()) {
            member.save(flush: true)
            if (!member.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }


    def getById(Serializable id) {
        return Member.get(id)
    }


    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Member> memberList = Member.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: memberList, count: Member.count()]
    }


    def delete(Member member) {
        try {
            member.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }

    def changePass(Member member, GrailsParameterMap params)
    {
        def password = params.password
        def newPassword = params.passwordNew1
        def newPassword2 = params.passwordNew2
        def response = AppUtil.saveResponse(false, member)
        if (!password || !newPassword || !newPassword2 ||
                newPassword != newPassword2) {
            return response
        }
        else {
            member.password = params.passwordNew1
            if (member.validate()) {
                member.save(flush: true)
                if (!member.hasErrors()) {
                    response.isSuccess = true
                }
            }
        }
        return response
    }

}