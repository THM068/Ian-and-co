package com.ianandco

class Property {

    BigDecimal sellingPrice = 0
    Integer loanTerm = 0
    Float depositPercentage = 0.0
    Float interestRate = 0.0

    String city
    String suburb
    String province

    Integer numberOfBedrooms = 0
    Integer numberOfBathrooms = 0

    boolean garden = false
    Boolean kitchen	= false
    Boolean diningRoom = false
    Boolean lounge = false
    Boolean builtInCupboards = false

    String size

    String title
    String description
    boolean active = false
    boolean editorChoice = false
    List photos

    Date dateCreated
    Date lastUpdated

    static hasMany = [photos: Photo ]

    static constraints = {
        title(nullable: false,blank: false)
        description(nullable: true, size: 1..2000000)
        city(nullable: true)
        suburb(nullable: true)
        province(inList: ['Bulawayo','Harare','Manicaland ','Mashonaland Central','Mashonaland East','Mashonaland West','Masvingo','Matabeleland North','Matabeleland South','Midlands'])
        size(nullable: true)
    }

    static namedQueries = {
        newListings {
            eq 'active', true
            maxResults(3)
            order("dateCreated", "desc")
        }
    }

}

