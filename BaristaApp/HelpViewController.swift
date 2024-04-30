//
//  HelpViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 4/23/24.
//

import UIKit

class HelpViewController: UIViewController {
    
    
    @IBOutlet weak var infoOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        infoOutlet.text = ("Create your own recipes in the Add section of the app then go to the Quiz section and test your knownledge on the recipes to master your technique!")
    }
    



}
