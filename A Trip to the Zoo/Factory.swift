//
//  Factory.swift
//  A Trip to the Zoo
//
//  Created by Mark Rabins on 5/22/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation

class Factory {
    
    class func createTiger() -> Tiger {
        let tiger = Tiger()
        tiger.personalInformation.image = tiger.returnImage("Tiger")
        tiger.personalInformation.species = "Bengal"
        tiger.personalInformation.name = "Spar"
        tiger.bodyStatistics.height = 100
        
        return tiger
    }
    
    class func createElephant() -> Elephant {
        let elephant = Elephant()
        elephant.personalInformation.image = elephant.returnImage("Elephant")
        elephant.personalInformation.species = "African"
        elephant.personalInformation.name = "Babar"
        elephant.bodyStatistics.height = 390
        
        return elephant
    }
    
    class func createLion() -> Lion {
        let lion = Lion()
        lion.personalInformation.image = lion.returnImage("Lion")
        lion.personalInformation.species = "Barbary"
        lion.personalInformation.name = "Mufasa"
        lion.bodyStatistics.height = 120
        
        return lion
        
    }
    class func createLionCub() -> LionCub {
        let lionCub = LionCub()
        lionCub.personalInformation.image = lionCub.returnImage("LionCub")
        lionCub.personalInformation.species = "Cave Lion"
        lionCub.personalInformation.name = "Simba"
        lionCub.bodyStatistics.height = 50
        
        return lionCub
        
    }
}