package grailsproject

import com.sup.AppInitializationService

class BootStrap {
    def init = { servletContext ->
        AppInitializationService.initialize()
    }

    def destroy = {
    }
}
