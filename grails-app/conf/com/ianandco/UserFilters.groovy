package com.ianandco

class UserFilters {

    def springSecurityService

    def filters = {
        all(controller: '*', action: '*') {
            before = { model ->
                if(model && springSecurityService.isLoggedIn()) {
                    model[user] = CmsUser.get(springSecurityService.principal)
                }

            }
            after = {

            }
            afterView = {

            }
        }
    }

}
