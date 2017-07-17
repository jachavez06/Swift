//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jesus Chavez on 7/2/17.
//  Copyright © 2017 Testing. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    

    //MARK: Meal Class Tests
    
    // Test Case: Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        
        // Zero rating.
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating.
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Test Case: Confirm that the Meal initializer returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails(){
        
    }
}
