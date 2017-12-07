/*
 * File name : ViewController.swift
 * Author: Andrii Damm
 * Date: December 06, 2017
 * Student ID: 300966307
 * Description: ViewController class for the shopping list screen which allows user to order items.
 * Version: 0.3 - Completed view controller for Shopping list screen.
 * Copyright © 2017 Andrii Damm. All rights reserved.
 */

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var tableViewShoppingList: UITableView!
    //shopping list edit text
    @IBOutlet weak var shoppingListName: UITextField!
    
    //picker view array of quantity
    private let quantity = ["0", "1","2", "3", "4", "5", "6", "7", "9", "10"]
    
    //identifier name for cell
    private let shoppingListTableCellIdentifier = "shoppingItemCell"
    
    //number of cells in table
    private let numberOfShoppingItems = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //picker view delegate for quantity
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    //picker view data source for quantity
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quantity.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quantity[row]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfShoppingItems
    }
    
    // table view cell delegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: shoppingListTableCellIdentifier) as! ShoppingListItemCell

        return cell
    }
    
    //clear all data for entire Shopping List
    @IBAction func onCancelPressed(_ sender: UIButton) {
        self.tableViewShoppingList.reloadData()
    }
    

}

