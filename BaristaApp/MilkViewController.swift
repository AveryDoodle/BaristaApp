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
    
    @IBOutlet weak var quantityOutlet: UILabel!
    
    var total = 0
    
    static var Milks = ["Moon", "Skim", "Whole", "Oat", "Almond"]
     var selectedMilk = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        milkPickerView.delegate = self
        quantityOutlet.text = "\(total)"
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
        print("\(total) ounces of \(selectedMilk) milk")
       // var milk = fractionOutlet.text!
        
        DrinkTestViewController.things.append(("\(total) ounces of \(selectedMilk) milk"))
       
        total = 0
        quantityOutlet.text = "\(total)"
    }
    
    @IBAction func decrease(_ sender: Any) {
        total = total - 1
        quantityOutlet.text = "\(total)"
        
    }
    
    @IBAction func increase(_ sender: Any) {
        total = total + 1
        quantityOutlet.text = "\(total)"
    }
    

}
