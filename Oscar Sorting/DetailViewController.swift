//
//  DetailViewController.swift
//  Oscar Sorting
//
//  Created by Student 15 on 2016-01-12.
//  Copyright © 2016 Blue Tacos. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var DestinationLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UITextView!
    
    var TITLE_LABEL = ""
    var DESTINATION_LABEL = ""
    var DESCRIPTION_LABEL = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TitleLabel.text = TITLE_LABEL
        DestinationLabel.text = DESTINATION_LABEL
        DescriptionLabel.text = DESCRIPTION_LABEL
        let fontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFontTextStyle.body)
        DescriptionLabel.font = UIFont(descriptor: fontDescriptor, size: 24)
    }
}
