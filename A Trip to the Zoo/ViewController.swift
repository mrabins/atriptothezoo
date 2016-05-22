//
//  ViewController.swift
//  A Trip to the Zoo
//
//  Created by Mark Rabins on 5/4/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.lightGrayColor()
        let myPenguin = Penguin(age: 3, name: "Wheezy", species: "Gentoo Penguin", image: UIImage(named: "GentooPenguin.jpg")!)
        
        nameLabel.text = myPenguin.name
        speciesLabel.text = myPenguin.species
        animalImage.image = myPenguin.image
        
        myPenguin.speakANumberOfTimes(4, isLoud: false)
        
//        myPenguin.trumpANumberOfTimes(5)
        
//        myPenguin.speak()
        
//        let ageOfPenguinInHumanYears = myPenguin.ageInPenguinYearsFromHumanYears()
//        print(ageOfPenguinInHumanYears)
        
        funFactLabel.text = myPenguin.randomFact()
        
//        let animalInstance = Animal()
//        animalInstance.speak()
//        animalInstance.randomFact()
//        print(animalInstance.bodyStatistics.height)
//        print(animalInstance.personalInformation.name)
//        

        let myTiger = Tiger()
        myTiger.speak()
        print(myTiger.randomFact())
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
    }

}

