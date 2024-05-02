//
//  MilkViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 3/11/24.
//

import UIKit

class MilkViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var milkPickerView: UIPickerView!
    
    @IBOutlet weak var fractionOutlet: UITextField!
    
    static var Milks = ["Moon", "Skim", "Whole", "Oat", "Almond"]
     var selectedMilk = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        milkPickerView.delegate = self
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return MilkViewController.Milks.count
        }
        return 0

    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return MilkViewController.Milks[row]
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            selectedMilk = MilkViewController.Milks[row]
        }
    }
    
    @IBAction func addAction(_ sender: Any) {
        print("\(fractionOutlet.text!) ounces of \(selectedMilk) milk")
        var milk = fractionOutlet.text!
        fractionOutlet.text = " "
        DrinkTestViewController.things.append(("\(milk) ounces of \(selectedMilk) milk"))
        fractionOutlet.resignFirstResponder()
    }
    

}
