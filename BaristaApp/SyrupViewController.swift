//
//  SyrupViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 3/11/24.
//

import UIKit

class SyrupViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var syrupPickerView: UIPickerView!
    
    @IBOutlet weak var pumpsOutlet: UITextField!
    
    
   static var Syrups = ["Vanilla", "Blueberry", "Mint", "Chocolate", "Strawberry"]
    var selectedSyrup = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

       syrupPickerView.delegate = self
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return SyrupViewController.Syrups.count
        }
        return 0

    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return SyrupViewController.Syrups[row]
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            selectedSyrup = SyrupViewController.Syrups[row]
        }
    }

    @IBAction func addAction(_ sender: Any) {
        print("\(pumpsOutlet.text!) pumps of \(selectedSyrup)")
        var pumps = pumpsOutlet.text!
        pumpsOutlet.text = " "
        DrinkTestViewController.things.append(("\(pumps) pumps of \(selectedSyrup)"))
    }
    
    
    
}
