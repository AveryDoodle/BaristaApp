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
    
    @IBOutlet weak var milkThing: UIImageView!
    
    @IBOutlet weak var matchaThing: UIImageView!
    
    @IBOutlet weak var chaiThing: UIImageView!
    
    @IBOutlet weak var pinkThing: UIImageView!
    
    @IBOutlet weak var chocolateThing: UIImageView!
    
    
    
    let shouldShowImage = false
    
    
    static var things = [""]
   
    
    static var correctRecipe = [""]
    var qVC: QuizViewController!
    //var drinks = [Drink]()
    weak var delegate : QuizViewController!
    var int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate.fDrinks = drinks
        titleOutlet.text = "Drink: \(AppData.drinks[int].name)"
    }
    //titleOutlet.text = "Drink: \(drinks[0])!"
    override func viewWillAppear(_ animated: Bool) {
       // titleOutlet.text = "Drink: \(AddQuizViewController.name)!"
        //print(titleOutlet.text!)
        let things = DrinkTestViewController.things
        let joinedString = things.joined(separator: "\n")
        drinkOutlet.text = "\(joinedString)"
        print(joinedString)
        
        
        addItemThing.isHidden = true
        syrupThing.isHidden = true
        milkThing.isHidden = true
        matchaThing.isHidden = true
        chaiThing.isHidden = true
        pinkThing.isHidden = true
        chocolateThing.isHidden = true
        if things.count >= 1 {
            for sentence in things{
                if sentence.contains("Caramel"){
                    let showing = 0
                    print()
                    
                    switch showing{
                    case 0:
                        syrupThing.isHidden = false
                        print("showing Syrup")
                    case 1:
                        milkThing.isHidden = false
                        print("nope")
                    default:
                        addItemThing.isHidden = true
                        print("nope")
                    }
                } else{
                    for sentence in things{
                        if sentence.contains("milk"){
                            let showing = 1
                            print()
                            
                            switch showing{
                            case 0:
                                syrupThing.isHidden = false
                                print("showing Syrup")
                            case 1:
                                milkThing.isHidden = false
                                print("showing milk")
                            default:
                                addItemThing.isHidden = true
                                print("nope")
                            }
                        } else{
                            for sentence in things{
                                if sentence.contains("Matcha"){
                                    let showing = 2
                                    print()
                                    
                                    switch showing{
                                    case 0:
                                        syrupThing.isHidden = false
                                        print("showing Syrup")
                                    case 1:
                                        milkThing.isHidden = false
                                        print("showing milk")
                                    case 2:
                                        matchaThing.isHidden = false
                                        print("showing matcha")
                                    default:
                                        addItemThing.isHidden = true
                                        print("nope")
                                    }
                                } else{
                                    for sentence in things{
                                        if sentence.contains("Chai"){
                                            let showing = 2
                                            print()
                                            
                                            switch showing{
                                            case 0:
                                                syrupThing.isHidden = false
                                                print("showing Syrup")
                                            case 1:
                                                milkThing.isHidden = false
                                                print("showing milk")
                                            case 2:
                                                chaiThing.isHidden = false
                                                print("showing chai")
                                            default:
                                                addItemThing.isHidden = true
                                                print("nope")
                                            }
                                        } else {
                                            for sentence in things{
                                                if sentence.contains("Strawberry"){
                                                    let showing = 2
                                                    print()
                                                    
                                                    switch showing{
                                                    case 0:
                                                        syrupThing.isHidden = false
                                                        print("showing Syrup")
                                                    case 1:
                                                        milkThing.isHidden = false
                                                        print("showing milk")
                                                    case 2:
                                                        pinkThing.isHidden = false
                                                        print("showing pink")
                                                    default:
                                                        addItemThing.isHidden = true
                                                        print("nope")
                                                    }
                                                }else {
                                                    for sentence in things{
                                                        if sentence.contains("Chocolate"){
                                                            let showing = 2
                                                            print()
                                                            
                                                            switch showing{
                                                            case 0:
                                                                syrupThing.isHidden = false
                                                                print("showing Syrup")
                                                            case 1:
                                                                milkThing.isHidden = false
                                                                print("showing milk")
                                                            case 2:
                                                                chocolateThing.isHidden = false
                                                                print("showing pink")
                                                            default:
                                                                addItemThing.isHidden = true
                                                                print("nope")
                                                            }
                                                        } else {
                                                            print("nothing")
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
                        
                        //@IBAction func checkAction(_ sender: Any) {
                        
                    }
                    
                    
                    
                    
                    
                }
            }
        }
    }
}
