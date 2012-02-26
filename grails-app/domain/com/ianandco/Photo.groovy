package com.ianandco

class Photo {

    String fileName
	String caption

	static belongsTo = [property: Property]

    static constraints = {
        fileName(blank: false, nullable: true)
        caption(blank: true, nullable: true)
    }
}
