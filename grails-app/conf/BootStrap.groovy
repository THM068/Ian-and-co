import com.ianandco.TigerBox
import com.ianandco.Page
import com.ianandco.CmsUser
import grails.util.GrailsUtil
import com.ianandco.CmsRole
import com.ianandco.CmsUserCmsRole

class BootStrap {

    def init = { servletContext ->
        def slide = TigerBox.findByPage(Page.HOME)?: new TigerBox(page: Page.HOME).save()
        initUsers()
    }
    def destroy = {
    }

    def initUsers() {
        def cmsUser = CmsUser.findByUsername('admin') ?: new CmsUser(username: 'admin', password: 'admin', enabled: true).save()
        def adminRole = CmsRole.findByAuthority('ROLE_ADMIN') ?: new CmsRole(authority: 'ADMIN_ROLE').save()

        if (GrailsUtil.environment in ['development', 'test', 'production']) {

            if (cmsUser.save()) { CmsUserCmsRole.create(cmsUser, adminRole) }

        }

    }
}
