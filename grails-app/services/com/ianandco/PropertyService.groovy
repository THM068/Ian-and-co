package com.ianandco

class PropertyService {
    static transactional = true

    def editorsChoice(property) {
        if(property) {
            def editorPicks = Property.findAllByActiveAndEditorChoice(true,true)
            editorPicks.each { prop ->
                if(prop.editorChoice) {
                    prop.editorChoice = false
                    prop.save(flush: true)
                }
            }
            property.editorChoice = true
            property.save(flush: true)
        }

    }
}
