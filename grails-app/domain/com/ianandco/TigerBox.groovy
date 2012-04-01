package com.ianandco

class TigerBox {

    Page page
    static hasMany = [photos: Photo]

    static constraints = {
        page(nullable: true)
    }
}

enum Page {
    HOME,
    PROPERTY
}
