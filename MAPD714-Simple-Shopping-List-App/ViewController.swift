/*
 * File name : ViewController.swift
 * Author: Andrii Damm
 * Date: December 06, 2017
 * Student ID: 300966307
 * Description: ViewController class for the shopping list screen which allows user to order items.
 * Version: 0.1 - Made view controller .
 * Copyright © 2017 Andrii Damm. All rights reserved.
 */

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private let quantity = ["1","2", "3", "4", "5", "6", "7", "9", "`10"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quantity.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quantity[row]
    }
    
    
    private let shoppingListTableCellIdentifier = "shoppingItemCell"
    private let numberOfShoppingItems = 5
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfShoppingItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: shoppingListTableCellIdentifier) as! ShoppingListItemCell
//        if (cell == nil) {
//            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: shoppingListTableCellIdentifier)
//            
//        }
        return cell
    }

}

