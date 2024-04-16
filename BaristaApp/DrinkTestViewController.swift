//
//  DrinkTestViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 3/11/24.
//

import UIKit

class DrinkTestViewController: UIViewController {
    
    @IBOutlet weak var drinkOutlet: UILabel!
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    
    @IBOutlet weak var addItemThing: UIImageView!
    
    let shouldShowImage = false

    
    static var things = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleOutlet.text = "Drink: \(AddQuizViewController.name)!"
        //print(titleOutlet.text!)
        let things = DrinkTestViewController.things
        let joinedString = things.joined(separator: "\n")
        drinkOutlet.text = "\(joinedString)"
        print(joinedString)
        addItemThing.isHidden = true
        if things.count >= 2 {
       
            if shouldShowImage {
           
                addItemThing.isHidden = false
            } else {
           
                addItemThing.isHidden = false
            }
        }       // drinkOutlet.text = "\(DrinkTestViewController.things)"
        print(DrinkTestViewController.things)
        print("correct recipe \(AddQuizViewController.recipe)")
    }
    
    @IBAction func checkAction(_ sender: Any) {
        
    }
    
    

    

}
