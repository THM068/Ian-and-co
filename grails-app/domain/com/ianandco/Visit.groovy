package com.ianandco

class Visit {

    Property property
    Date dateCreated
    Date lastUpdated

   static constraints = {
       property(nullable: false)
   }
}
