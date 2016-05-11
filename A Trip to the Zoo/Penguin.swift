//
//  Penguin.swift
//  A Trip to the Zoo
//
//  Created by Mark Rabins on 5/8/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation
import UIKit

struct Penguin {
    var age: Int
    var name: String
    var species: String
    var image: UIImage
    
    func speak() {
         print("Penguin: Trump Trump")
    }
    
    func trumpANumberOfTimes (numberOfTimes: Int) {
        for _ in 1...numberOfTimes {
            speak()
        }
    }
    
    func speakANumberOfTimes(numberOfTimes: Int, isLoud: Bool) {
        for var speakTimes = 1; speakTimes <= numberOfTimes; speakTimes++ {
            if isLoud {
                speak()
            } else {
                print("Penguin: bray bray")
            }
            
        }
    }
    
    func ageInPenguinYearsFromHumanYears() -> Int {
        return age * 3
    }
}

