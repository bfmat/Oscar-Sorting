//
//  DetailViewController.swift
//  Oscar Sorting
//
//  Created by Student 15 on 2016-01-12.
//  Copyright © 2016 Blue Tacos. All rights reserved.
//

import UIKit

class WgwDetailViewController: UIViewController {
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var DescriptorYes: UITextView!
    @IBOutlet weak var DescriptorNo: UITextView!
    
    var TITLE_LABEL = ""
    var DESCRIPTOR_YES = ""
    var DESCRIPTOR_NO = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TitleLabel.text = TITLE_LABEL
        DescriptorYes.text = DESCRIPTOR_YES
        DescriptorNo.text = DESCRIPTOR_NO
        let fontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFontTextStyle.body)
        DescriptorYes.font = UIFont(descriptor: fontDescriptor, size: 24)
        DescriptorNo.font = UIFont(descriptor: fontDescriptor, size: 24)
    }
}
