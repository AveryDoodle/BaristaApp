//
//  DetailsViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 3/18/24.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var drinkNameOutlet: UILabel!
    
    @IBOutlet weak var ingredientsOutlet: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        drinkNameOutlet.text = QuizViewController.name
        //ingredientsOutlet.text = AddQuizViewController.recipe
        let things = AddQuizViewController.recipe
        let joinedString = things.joined(separator: "\n")
        ingredientsOutlet.text = "\(joinedString)"
    }
    
    


}
