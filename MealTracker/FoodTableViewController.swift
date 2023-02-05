//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Ayça Işık on 5.02.2023.
//

import UIKit



class FoodTableViewController: UITableViewController {
    
    var meals : [Meal]{
        let firstBreakfast = Food(description: "Scrambled with bacon in a frying pan.", name: "Eggs 🍳")
        let secondBreakfast = Food(description: "Cut potatoes then fry in oil until brown.", name: "Hashbrowns 🍠")
        let thirdBreakfast = Food(description: "Key food in all breakfast meals.", name: "Bacon 🥓")
        let Breakfast = Meal(name: "Breakfast", food: [firstBreakfast,secondBreakfast,thirdBreakfast])
        
        let firstLunch = Food(description: "Apple 🍎", name: "An apple a day keeps the doctor away.")
        let secondLunch = Food(description: "Sandwich 🥪", name: "Easy to fix.")
        let thirdLunch = Food(description: "Chips 🍟", name: "Put a few in the sandwich for enhanced flavor.")
        let Lunch = Meal(name: "Lunch", food: [firstLunch,secondLunch,thirdLunch])
        
        let firstDinner = Food(description: "Steak 🥩", name: "Everyone needs some good protein.")
        let secondDinner = Food(description: "Brocolli 🥦", name: "Always finish out the food pyramid.")
        let thirdDinner = Food(description: "Potatoes 🥔", name: "Great addition to go along with steak.")
        let Dinner = Meal(name: "Dinner", food: [firstDinner,secondDinner,thirdDinner])
        
        
        return [Breakfast,Lunch,Dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    

    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for : indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
        
    }
    
}

