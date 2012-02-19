package com.ianandco

class RoofType {
    String name

    static constraints = {
        name(nullable: false, blank: true)
    }


    String toString() {
        return name
    }
}
