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
    
    
    @IBOutlet weak var newSyrupOutlet: UILabel!
      
    @IBOutlet weak var newMilkOutlet: UILabel!
    
    @IBOutlet weak var newOtherOutlet: UILabel!
    
    
    var qVC: QuizViewController!
    static var recipe = [""]
    static var name = [""]
    var drinks = [Drink]()
    var tempSyrup = ""
    var tempMilk = ""
    var tempOther = ""
    var pumps = 0
    var ounces = 0
    var others = 0

    weak var delegate : QuizViewController!

    
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
        
        newOtherOutlet.text = "\(others)"
        newMilkOutlet.text = "\(ounces)"
        newSyrupOutlet.text = "\(pumps)"
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
                view.addGestureRecognizer(tapGesture)
    }
    
    //syrup picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @objc func dismissKeyboard() {
           // Resign first responder status
           nameOutlet.resignFirstResponder()
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
        print("\(ounces) ounces of \(selectedMilk) milk")
        tempMilk.append("\(ounces) ounces of \(selectedMilk) milk \n")
        ounces = 0
        newMilkOutlet.text = "\(ounces)"
     
    }
    
    @IBAction func addSyrup(_ sender: Any) {
        print("\(pumps) pumps of \(selectedSyrup)")
        tempSyrup.append("\(pumps) pumps of \(selectedSyrup) \n")
        pumps = 0
       
        newSyrupOutlet.text = "\(pumps)"

       
    }
    

    
    @IBAction func finishAction(_ sender: Any) {
        print(AddQuizViewController.recipe)
        //AddQuizViewController.name.append(nameOutlet.text!)
       
        drinks.append(Drink(name: nameOutlet.text!, syrup: tempSyrup, milk: tempMilk, other: tempOther))
        
        nameOutlet.text = " "
       // delegate.fDrinks = drinks
        AppData.drinks = drinks
        //delegate.fDrinks = drinks
        nameOutlet.resignFirstResponder()
    }
    
    
    @IBAction func addOther(_ sender: Any) {
        print("\(others) pumps of \(selectedThing)")
        tempOther.append("\(others) pumps of \(selectedThing) \n")
        others = 0
        
        newOtherOutlet.text = "\(others)"
    }
    
    @IBAction func subtractSyrup(_ sender: Any) {
        pumps = pumps - 1
        newSyrupOutlet.text = "\(pumps)"
    }
    
    @IBAction func increaseSyrup(_ sender: Any) {
        pumps = pumps + 1
        newSyrupOutlet.text = "\(pumps)"
    }
    
    @IBAction func subtractMilk(_ sender: Any) {
        ounces = ounces - 1
        newMilkOutlet.text = "\(ounces)"
    }
    
    @IBAction func increaseMilk(_ sender: Any) {
        ounces = ounces + 1
        newMilkOutlet.text = "\(ounces)"
    }
    
    @IBAction func subtractOther(_ sender: Any) {
        others = others - 1
        newOtherOutlet.text = "\(others)"
    }
    
    @IBAction func increaseOther(_ sender: Any) {
        others = others + 1
        newOtherOutlet.text = "\(others)"
    }
    
    
    
}
