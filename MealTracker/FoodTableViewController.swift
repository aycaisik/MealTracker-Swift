//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Ayça Işık on 5.02.2023.
//

import UIKit

var meals : [Meal]!

var breakfast : Meal!
var breakfast2 : [Food]!

var lunch : Meal!
var lunch2 : [Food]!

var dinner : Meal!
var dinner2 : [Food]!

class FoodTableViewController: UITableViewController {
    
    
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return [Meal].Index()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        <#code#>
    }
    
}

