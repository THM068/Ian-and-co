package com.ianandco

class FloorType {
    String name

    static constraints = {
        name(nullable: false, blank: true)
    }

    String toString() {
        return name
    }
}
