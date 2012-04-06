package com.ianandco

class TigerBox {

    Page page
    static hasMany = [photos: String]

    static constraints = {
        page(nullable: true)
    }
}

enum Page {
    HOME,
    PROPERTY
}
