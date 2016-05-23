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
    
    var animals: [Animal] = []
    var currentAnimalIndex = 0
    
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

        let myTiger = Factory.createTiger()
        print(myTiger.personalInformation.name)
        
        let elephantInstance = Factory.createElephant()
        elephantInstance.speak()
        let lionInstance = Factory.createLion()
        let lionCubInstance = Factory.createLionCub()
        lionCubInstance.speak()
        
        animals = [myTiger, elephantInstance, lionInstance, lionCubInstance]


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        calculateAnimal()
        updateView()
        
    }
    
    func updateView() {
        let currentAnimal = animals[currentAnimalIndex]
        
        UIView.animateWithDuration(2) { () -> Void in
            self.nameLabel.text = currentAnimal.personalInformation.name
            self.speciesLabel.text = currentAnimal.personalInformation.species
            self.animalImage.image = currentAnimal.personalInformation.image
            self.funFactLabel.text = currentAnimal.randomFact()
        }
        
      
    }
    
    func calculateAnimal () {
    
        if currentAnimalIndex == animals.count - 1 {
            currentAnimalIndex = 0
        } else {
            currentAnimalIndex = currentAnimalIndex + 1
        }
        
    }
    

}

