//
//  ViewController.swift
//  Oscar Sorting
//
//  Created by Student 15 on 2015-12-08.
//  Copyright © 2016 Blue Tacos. All rights reserved.
//

import UIKit

class WhatGoesWhereViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        let destinationController = segue.destination as! WgwDetailViewController
        let name = (sender as AnyObject).titleLabel!!.text!
        destinationController.TITLE_LABEL = DatabaseTools.getWgwValue(name, type: "Title")
        destinationController.DESCRIPTOR_YES = DatabaseTools.getWgwValue(name, type: "Yes")
        destinationController.DESCRIPTOR_NO = DatabaseTools.getWgwValue(name, type: "No")
    }    
}
