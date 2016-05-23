//
//  LionCub.swift
//  A Trip to the Zoo
//
//  Created by Mark Rabins on 5/22/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import Foundation

class LionCub: Lion {
    override func speak() {
        super.speak()
        print("LionCub: Baby Roar")
    }
    override func randomFact() -> String {
        return "Lion cubs start walking at 10 to 15 days old."
    }
}
