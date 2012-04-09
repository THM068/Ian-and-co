import com.ianandco.TigerBox
import com.ianandco.Page

class BootStrap {

    def init = { servletContext ->
        def slide = TigerBox.findByPage(Page.HOME)?: new TigerBox(page: Page.HOME).save()
    }
    def destroy = {
    }
}
