//
//  Elephant.swift
//  A Trip to the Zoo
//
//  Created by Mark Rabins on 5/22/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation

class Elephant: Animal {
    override func speak() {
        print("Elephant: Trumpet")
    }
    override func randomFact() -> String {
        return "Only one mammel can't jump - you guessed it, the Elephant."
    }
}