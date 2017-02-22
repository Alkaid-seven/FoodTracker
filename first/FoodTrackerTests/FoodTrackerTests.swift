//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jiefeng Liu on 12/12/16.
//
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: Meal class tests
    // Confirm that the Meal initializer return a Meal Object when passed valid parameters
    func testMealInitializationSucceeds() {
    
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirma that the Meal initializer return a nil when passed a nagetive rating or an empty name
    func testMealInitializationFails() {
        
        // Nagetive rating
        let nagetiveRatingMeal = Meal.init(name: "Nagetive", photo: nil, rating: -1)
        XCTAssertNil(nagetiveRatingMeal)
        
        // Empty string
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
