modules = {
     'app' {
        defaultBundle 'core'
        dependsOn 'bootstrap'
    }

    'bootstrap' {
        defaultBundle 'core'
        resource url: 'css/bootstrap.css'
        resource url: 'css/bootstrap-responsive.css'

        resource url: 'js/bootstrap-alert.js'
        resource url: 'js/bootstrap-button.js'
        resource url: 'js/bootstrap-carousel.js'
        resource url: 'js/bootstrap-collapse.js'
        resource url: 'js/bootstrap-dropdown.js'
        resource url: 'js/bootstrap-modal.js'
        resource url: 'js/bootstrap-popover.js'
        resource url: 'js/bootstrap-scrollspy.js'
        resource url: 'js/bootstrap-tab.js'
        resource url: 'js/bootstrap-tooltip.js'
        resource url: 'js/bootstrap-transition.js'
        resource url: 'js/bootstrap-typeahead.js'
    }

    'cms' {
        resource bundle:'cms-less', url:'/css/cms.less', attrs:[rel: "stylesheet/less", type:'css']
    }


}
