//
//  CategoriesViewController.swift
//  Oscar Sorting
//
//  Created by Brendon Matusch on 2016-01-09.
//  Copyright © 2016 Blue Tacos. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationController = segue.destination as! SearchViewController
        destinationController.specifiedCategory = (sender! as AnyObject).titleLabel!!.text!
    }    
}
