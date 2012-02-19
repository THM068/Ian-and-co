class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        name home: "/"(controller: 'home', action: 'index')

        name property: "/cms/property"(controller: 'property', action: 'list')
        name propertyCreate: "/cms/property/create"(controller: 'property', action: 'create')
        name propertyShow: "/cms/property/show/$id"(controller: 'property', action: 'show')
        name propertyEdit: "/cms/property/edit/$id"(controller: 'property', action: 'edit')

        name property: "/cms/photo"(controller: 'photo', action: 'list')
        name propertyCreate: "/cms/photo/create"(controller: 'photo', action: 'create')
        name propertyShow: "/cms/photo/show/$id"(controller: 'photo', action: 'show')
        name propertyEdit: "/cms/photo/edit/$id"(controller: 'photo', action: 'edit')

		"500"(view:'/error')
	}
}
