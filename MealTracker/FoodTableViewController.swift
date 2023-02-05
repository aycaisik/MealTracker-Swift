//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Ayça Işık on 5.02.2023.
//

import UIKit



class FoodTableViewController: UITableViewController {
    
    var meals : [Meal]{
        let firstBreakfast = Food(description: "Scrambled with bacon in a frying pan", name: "Eggs")
        let secondBreakfast = Food(description: "Scrambled with bacon in a frying pan", name: "Eggs")
        let thirdBreakfast = Food(description: "Scrambled with bacon in a frying pan", name: "Eggs")
        let Breakfast = Meal(name: "Breakfast", food: [firstBreakfast,secondBreakfast,thirdBreakfast])
        
        let firstLunch = Food(description: "Apple", name: "An apple a day keeps the doctor away.")
        let secondLunch = Food(description: "Apple", name: "An apple a day keeps the doctor away.")
        let thirdLunch = Food(description: "Apple", name: "An apple a day keeps the doctor away.")
        let Lunch = Meal(name: "Lunch", food: [firstLunch,secondLunch,thirdLunch])
        
        let firstDinner = Food(description: "Brocolli", name: "Always finish out the food pyramid.")
        let secondDinner = Food(description: "Brocolli", name: "Always finish out the food pyramid.")
        let thirdDinner = Food(description: "Brocolli", name: "Always finish out the food pyramid.")
        let Dinner = Meal(name: "Dinner", food: [firstDinner,secondDinner,thirdDinner])
        
        
        return [Breakfast,Lunch,Dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    

    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return [Meal].Index()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return [Food].Index()
    
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell")!
        
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        <#code#>
    }
    
}

