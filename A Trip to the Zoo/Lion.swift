//
//  Lion.swift
//  A Trip to the Zoo
//
//  Created by Mark Rabins on 5/22/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation

class Lion: Animal {
    
    override func speak() {
        print("Lion: Mighty roar")
    }
    override func randomFact() -> String {
        return "Lions are the second largest big cat species in the world (behind tigers). "
    }
    
}