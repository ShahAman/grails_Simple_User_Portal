package com.sup

class AppInitializationService {

    static initialize() {
      //  initMember()
    }

    private static initMember() {
        if (Member.count() == 0) {
            Member member = new Member()
            member.firstName = "System"
            member.lastName = "Administrator"
            member.address = "adm"
            member.phoneNumber = "1234"
            member.email = ""
            member.password = "admin"
            member.memberType = GlobalConfig.USER_TYPE.ADMINISTRATOR
            member.save(flash: true)
        }
    }
}
