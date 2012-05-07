package com.ianandco

import org.grails.taggable.Taggable

class Property {

    BigDecimal sellingPrice = 0
    Integer loanTerm = 0
    Float depositPercentage = 0.0
    Float interestRate = 0.0

    String location
    String province

    Integer numberOfBedrooms = 0
    Integer numberOfBathrooms = 0

    String  size
    Integer  spaceAvailable = 0
    String  propertyPurpose
    Integer numberOfOffices = 0

    String roofType
    String wallType

    String shortDescription
    String title
    String description
    String propertyType
    boolean active = false
    boolean editorChoice = false
    List photos

    Date dateCreated
    Date lastUpdated

    static hasMany = [photos: Photo ]

    static constraints = {
        description(nullable: true, size: 1..2000000)
        location(nullable: true)
        propertyPurpose(nullable: true)
        propertyType(nullable: true, inList: ['Residential','Commercial'])
        province(inList: ['Bulawayo','Harare','Manicaland ','Mashonaland Central','Mashonaland East','Mashonaland West','Masvingo','Matabeleland North','Matabeleland South','Midlands'])
        roofType(nullable: true)
        size(nullable: true)
        spaceAvailable(nullable: true)
        shortDescription(nullable: false,blank: false, size: 1..800)
        title(nullable: false,blank: false)
        wallType(nullable: true)
    }

    static namedQueries = {
        newListings {
            eq 'active', true
            maxResults(3)
            order("dateCreated", "desc")
        }
    }

}

