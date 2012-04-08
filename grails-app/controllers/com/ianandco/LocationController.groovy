package com.ianandco

class LocationController {

    def create = {
        def n = new Location()
        [ locationInstance: n ]
    }

    def addLocation =  {
        def name = params.name
        if(name) {
            def location = Location.findByName(name)
            if(!location) {
                Permalink permalink = new Permalink()
                Location newLocation = new Location(name: permalink.convertToPermalink(name))
                newLocation.save()
                flash.message = 'Location added to the database'
            }
            else {
                flash.error = 'Location already exists'
            }
        }
        redirect(action: 'create')
    }

    def delete = {
        def location = Location.get(params.long('id'))
        if(location) {
            location.delete()
            flash.message = 'Location deleted'

        }
        else {
            flash.error = 'Location does not exit in the database'
        }
        redirect(action: 'create')
    }


}
