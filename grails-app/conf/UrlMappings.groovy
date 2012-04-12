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
        name resProperty: "/residential-properties"(controller: 'home', action: 'residentialProperties')
        name comProperty: "/commercial-properties"(controller: 'home', action: 'commercialProperties')
        name locProperty:  "/location-properties"(controller: 'home', action: 'locationProperties')

        //cms mappings
        name locations: "/locations"(controller: 'location', action: 'create')

        name createSlides: "/create-slides"(controller: 'tigerBox', action: 'create')
        name listSlides: "/list-slides"(controller: 'tigerBox', action: 'list')

        name createProperty: "/create-property"(controller: 'property', action: 'create')
        name listProperty: "/list-property"(controller: 'property', action: 'list')

		"500"(view: '/error')
        "404"(controller: 'error', action: 'error_404')

        "/login/$action?"(controller: "login")
        name signout: "/logout/$action?"(controller: "logout")

	}
}
