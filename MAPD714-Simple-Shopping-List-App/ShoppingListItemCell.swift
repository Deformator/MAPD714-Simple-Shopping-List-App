/*
 * File name : ViewController.swift
 * Author: Andrii Damm
 * Date: December 06, 2017
 * Student ID: 300966307
 * Description: This class is for the custom cell of each shopping list item.
 * Version: 0.3 - Completed view controller for Shopping list screen.
 * Copyright © 2017 Andrii Damm. All rights reserved.
 */

import UIKit

//custom cell class
class ShoppingListItemCell: UITableViewCell {
    
    //list item name
    @IBOutlet weak var listItem: UITextField!
    
    //list item's quantity
    @IBOutlet weak var quantityPicker: UIPickerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
