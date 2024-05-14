//
//  ViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 3/6/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        

        
    }
    
    @IBAction func quizAction(_ sender: Any) {
        if AppData.drinks.isEmpty{
     
            let alert = UIAlertController(title: "Error!", message: "must add drinks before going to quiz", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Continue", style: .default, handler: nil)
            
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
        } else {
       
            
            performSegue(withIdentifier: "tooQuiz" , sender: nil)
           
        }
    }
    


}

