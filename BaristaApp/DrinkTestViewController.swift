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
    
    //finished coffee
    @IBOutlet weak var addItemThing: UIImageView!
    
    
    @IBOutlet weak var syrupThing: UIImageView!
    
    
    let shouldShowImage = false

    
    static var things = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        titleOutlet.text = "Drink: \(AddQuizViewController.name)!"
        //print(titleOutlet.text!)
        let things = DrinkTestViewController.things
        let joinedString = things.joined(separator: "\n")
        drinkOutlet.text = "\(joinedString)"
        print(joinedString)
        addItemThing.isHidden = true
        syrupThing.isHidden = true
        if things.count >= 1 {
            for sentence in things{
                if sentence.contains("pumps"){
                    let showing = 0
                    print()
                    
                    switch showing{
                    case 0:
                        syrupThing.isHidden = false
                        print("showing Syrup")
                    case 1:
                        addItemThing.isHidden = true
                        print("nope")
                    default:
                        addItemThing.isHidden = true
                        print("nope")
                    }
                } else{
                    print("no")
                }
            }
           // addItemThing.isHidden = true
            
//
//            if shouldShowImage {
//           
//                addItemThing.isHidden = false
//            } else {
//           
//                addItemThing.isHidden = false
//            }
        }       // drinkOutlet.text = "\(DrinkTestViewController.things)"
        print(DrinkTestViewController.things)
        print("correct recipe \(AddQuizViewController.recipe)")
    }
    
    @IBAction func checkAction(_ sender: Any) {
        
    }
    
    

    

}
