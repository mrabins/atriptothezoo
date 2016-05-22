//
//  Tiger.swift
//  A Trip to the Zoo
//
//  Created by Mark Rabins on 5/22/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation

class Tiger: Animal {
    override func speak() {
        super.speak()
        print("Tiger: Chuff")
    }
    override func randomFact() -> String {
        return "There is more tigers living as pets than there are in the wild"
    }
}