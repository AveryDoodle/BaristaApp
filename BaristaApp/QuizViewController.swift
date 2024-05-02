//
//  QuizViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 3/11/24.
//

import UIKit

class QuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableOutlet: UITableView!
    
    var aQVC: AddQuizViewController!
    static var name = "test"
    var fDrinks = [Drink]()
    var num = 0
    
    override func viewDidLoad() {
        tableOutlet.dataSource = self
        tableOutlet.delegate = self
        super.viewDidLoad()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        tableOutlet.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fDrinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")!
        cell.textLabel?.text = fDrinks[indexPath.row].name
        // QuizViewController.name = AddQuizViewController.name[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        num = indexPath.row
        performSegue(withIdentifier: "toRecipe" , sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as? AddQuizViewController ?? nil
        let rNvc = segue.destination as? DetailsViewController ?? nil
        
        if nvc != nil{
            let nvc = segue.destination as! AddQuizViewController
            nvc.drinks = fDrinks
            nvc.delegate = self
        }else if rNvc != nil{
            let rNvc = segue.destination as! DetailsViewController
            rNvc.name = fDrinks[num].name
            rNvc.ing = "Ingredients: \(rNvc.ing)\n\(fDrinks[num].syrup)\n\(fDrinks[num].milk)\n\(fDrinks[num].other)"
        }
        
    }
    @IBAction func addAction(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "toAdd", sender: self)
        
        //        let encoder = JSONEncoder()
        //          if let encoded = try? encoder.encode(fDrinks) {
        //                           UserDefaults.standard.set(encoded, forKey: "theDrinks")
        //                       }
        //    }
        
        
    }
}
