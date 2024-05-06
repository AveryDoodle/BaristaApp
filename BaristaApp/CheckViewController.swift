//
//  CheckViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 4/18/24.
//

import UIKit

class CheckViewController: UIViewController {
    
    
    @IBOutlet weak var correctOutlet: UILabel!
    
    @IBOutlet weak var yoursOutlet: UILabel!
    
    @IBOutlet weak var gradeOutlet: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        correctOutlet.text = ("correct recipe \(AddQuizViewController.recipe)")
        yoursOutlet.text = ("\(DrinkTestViewController.things)")
        if AddQuizViewController.recipe == DrinkTestViewController.things {
            gradeOutlet.text = ("Correct")
        }
        else {
            gradeOutlet.text = ("Wrong")
        }

//
//        correctOutlet.text = ("correct recipe \(AddQuizViewController.recipe)")
//        yoursOutlet.text = ("\(DrinkTestViewController.things)")
//        if AddQuizViewController.recipe == DrinkTestViewController.things {
//            print("Correct!")
//        }
//        else {
//            print("Wrong!")
//        }
        correctOutlet.text = "\(AppData.drinks[AppData.int].name)/n\(AppData.drinks[AppData.int].milk)/n\(AppData.drinks[AppData.int].syrup)/n\(AppData.drinks[AppData.int].other)"
        yoursOutlet.text = "\(AppData.madeDrinks[AppData.int].name)/n\(AppData.madeDrinks[AppData.int].milk)/n\(AppData.madeDrinks[AppData.int].syrup)/n\(AppData.madeDrinks[AppData.int].other)"




    }
    override func viewDidDisappear(_ animated: Bool) {
        print("leaving screen 2")
        AppData.int = AppData.int + 1
    }
  
}
