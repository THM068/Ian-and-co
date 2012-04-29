package ianandco

import com.ianandco.Property

class ViewPropertyFilters {
    def propertyService

    def filters = {
        all(controller: 'home', action: 'propertyDetails') {
            before = {

            }
            after = {
                def property = Property.get(params.long('id'))
                if(property) {
                    propertyService.recordVisit(property)
                }

            }
            afterView = {

            }
        }
    }

}
