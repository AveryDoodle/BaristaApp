//
//  OtherViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 3/11/24.
//

import UIKit

class OtherViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var otherPickerView: UIPickerView!
    
    @IBOutlet weak var otherOutlet: UITextField!
    
    
    static var Other = ["Cinnamon", "Matcha", "Chai", "tests", "test"]
     var selectedThing = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        otherPickerView.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return OtherViewController.Other.count
        }
        return 0

    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return OtherViewController.Other[row]
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            selectedThing = OtherViewController.Other[row]
        }
    }

    @IBAction func addAction(_ sender: Any) {
        print("\(otherOutlet.text!) of \(selectedThing)")
        var other = otherOutlet.text!
        otherOutlet.text = " "
        DrinkTestViewController.things.append(("\(other) of \(selectedThing)"))
      
        
    }
    
  
}
