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

    }
    
  
}
