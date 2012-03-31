class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        name home: "/"(controller: 'home', action: 'index')
        name contactUs: "/contact-us"(controller: 'home', action: 'contactUs')
        name aboutUs: "/about-us"(controller: 'home', action: 'aboutUs')
		"500"(view:'/error')
	}
}
