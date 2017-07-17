//
//  Meal.swift
//  FoodTracker
//
//  Created by Jesus Chavez on 7/13/17.
//  Copyright © 2017 Testing. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage? // Image optional
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int){
        
        // Initialization should failr if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
