package com.ianandco

class Neighbourhood {
    String name

    static constraints = {
        name(unique: true, nullable: true)
    }
}
