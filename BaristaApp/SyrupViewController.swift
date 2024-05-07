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
    
    @IBOutlet weak var quantityOutlet: UILabel!
    
    
    var total = 0
    
    
    
    static var Syrups = ["Vanilla", "Caramel", "Blueberry", "Mint", "Chocolate", "Strawberry"]
    var selectedSyrup = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

       syrupPickerView.delegate = self
        quantityOutlet.text = "\(total)"
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
        print("\(total) pumps of \(selectedSyrup)")
        var pumps = "\(total) pumps of \(selectedSyrup)"
        Create.syrup = pumps
        DrinkTestViewController.things.append(("\(total) pumps of \(selectedSyrup)"))
        
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
