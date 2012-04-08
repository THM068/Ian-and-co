package com.ianandco

class Location {
    String name

    static constraints = {
        name(unique: true, nullable: true)
    }

    String toString() {
        return name
    }
}
