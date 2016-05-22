//
//  Animal.swift
//  A Trip to the Zoo
//
//  Created by Mark Rabins on 5/12/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation
import UIKit

class Animal {
    
    var bodyStatistics = BodyStatistics()
    var personalInformation = PersonalInformation()
    
    
    func speak() {
        print("Animal: can't speak yet")
    }
    
    func randomFact() -> String {
        return "No Fact Available at this time"
    }
    
    func returnImage(animalName: String) -> UIImage? {
        let animalNumber = Int(arc4random_uniform(UInt32(2)) + 1 )
        let imageName = animalName + animalNumber.description + ".jpeg"
        return UIImage(named: imageName)
    }
    
    
}



