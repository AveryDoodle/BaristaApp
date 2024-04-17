//
//  AddQuizViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 3/11/24.
//

import UIKit

class AddQuizViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var syrupPickerView: UIPickerView!
    
    @IBOutlet weak var syrupOutlet: UITextField!
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var milkPickerView: UIPickerView!
    
    @IBOutlet weak var milkOutlet: UITextField!
    
    @IBOutlet weak var OtherPickerView: UIPickerView!
    
    @IBOutlet weak var OtherOutlet: UITextField!
    
    static var recipe = [""]
    static var name = [""]
    var drinks = [Drink]()
    var tempSyrup = ""
    var tempMilk = ""
    var tempOther = ""
    
    var selectedSyrup = ""
    var selectedMilk = ""
    var selectedThing = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        syrupPickerView.tag = 1
        milkPickerView.tag = 2
        OtherPickerView.tag = 3

        syrupPickerView.delegate = self
        milkPickerView.delegate = self
    }
    
    //syrup picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if pickerView.tag == 1{
//            return SyrupViewController.Syrups.count
//        } if pickerView.tag == 2{
//            return MilkViewController.Milks.count
//        } else {
        switch pickerView.tag {
                case 1:
                    return SyrupViewController.Syrups.count
                case 2:
                    return MilkViewController.Milks.count
                case 3:
                    return OtherViewController.Other.count
                default:
            return OtherViewController.Other.count
            
        }
   

    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
                case 1:
                    return SyrupViewController.Syrups[row]
                case 2:
                    return MilkViewController.Milks[row]
                case 3:
                    return OtherViewController.Other[row]
                default:
            return OtherViewController.Other[row]
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag{
        case 1:
            selectedSyrup = SyrupViewController.Syrups[row]
        case 2:
            selectedMilk = MilkViewController.Milks[row]
        case 3:
            selectedThing = OtherViewController.Other[row]
        default:
           selectedThing = OtherViewController.Other[row]
        }
    }
    
    
    @IBAction func addMilk(_ sender: Any) {
        print("\(milkOutlet.text!) ounces of \(selectedMilk) milk")
        AddQuizViewController.recipe.append("\(milkOutlet.text!) ounces of \(selectedMilk) milk")
        milkOutlet.text = " "
        tempMilk = "\(milkOutlet.text!) ounces of \(selectedMilk) milk"
        
    }
    
    @IBAction func addSyrup(_ sender: Any) {
        print("\(syrupOutlet.text!) pumps of \(selectedSyrup)")
        AddQuizViewController.recipe.append("\(syrupOutlet.text!) pumps of \(selectedSyrup)")
        tempSyrup = "\(syrupOutlet.text!) pumps of \(selectedSyrup)"
        syrupOutlet.text = " "
        
    }
    

    
    @IBAction func finishAction(_ sender: Any) {
        print(AddQuizViewController.recipe)
        AddQuizViewController.name.append(nameOutlet.text!)
        //nameOutlet.text = " "
        //Drink(name: tempSyrup, syrup: tempSyrup, milk: <#T##String#>, other: <#T##String#>)
    }
    
    
    @IBAction func addOther(_ sender: Any) {
        print("\(OtherOutlet.text!) pumps of \(selectedThing)")
        AddQuizViewController.recipe.append("\(OtherOutlet.text!) pumps of \(selectedThing)")
        OtherOutlet.text = " "
        tempOther = "\(OtherOutlet.text!) pumps of \(selectedThing)"
    }
    
    
}
