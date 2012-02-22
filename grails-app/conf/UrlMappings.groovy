class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        name home: "/"(controller: 'home', action: 'index')

		"500"(view:'/error')
	}
}
