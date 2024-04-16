//
//  QuizViewController.swift
//  BaristaApp
//
//  Created by Avery McAllister on 3/11/24.
//

import UIKit

class QuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableOutlet: UITableView!
    
    static var name = "test"

    override func viewDidLoad() {
        tableOutlet.dataSource = self
        tableOutlet.delegate = self
        super.viewDidLoad()

       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AddQuizViewController.name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")!
        cell.textLabel?.text = AddQuizViewController.name[indexPath.row]
        QuizViewController.name = AddQuizViewController.name[indexPath.row]
      
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "MoreDetail" , sender: nil)
    }
    
    

}
