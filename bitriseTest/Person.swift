//
//  Person.swift
//  bitriseTest
//
//  Created by Admin on 1/8/17.
//
//

import Foundation
import ObjectMapper

class Person: Mappable {
    var username: String?
    var age: Int?
    var weight: Double!
    var array: [AnyObject]?
    var dictionary: [String : AnyObject] = [:]
    var bestFriend: Person?                       // Nested User object
    var friends: [Person]?                        // Array of Users...blah blah blah...try again
    var birthday: Date?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        username    <- map["username"]
        age         <- map["age"]
        weight      <- map["weight"]
        array       <- map["arr"]
        dictionary  <- map["dict"]
        bestFriend  <- map["best_friend"]
        friends     <- map["friends"]
        birthday    <- (map["birthday"], DateTransform())
    }
}
