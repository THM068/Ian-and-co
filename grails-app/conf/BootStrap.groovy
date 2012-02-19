class BootStrap {
    def searchService

    def init = { servletContext ->
        searchService.indexAllProperties()
    }
    def destroy = {
    }
}
