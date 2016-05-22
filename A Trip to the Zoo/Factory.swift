//
//  Factory.swift
//  A Trip to the Zoo
//
//  Created by Mark Rabins on 5/22/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation

class Factory {
    
    class func createTiger () -> Tiger {
        let tiger = Tiger()
        tiger.personalInformation.image = tiger.returnImage("Tiger")
        tiger.personalInformation.species = "Bengal"
        tiger.personalInformation.name = "Spar"
        tiger.bodyStatistics.height = 100
        
        return tiger
    }
}