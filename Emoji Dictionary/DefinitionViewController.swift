//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Alfredo Urdaneta on 7/7/17.
//  Copyright © 2017 AlfredosApps. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Motto: \(emoji.Motto)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = "Name: \(emoji.definition)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}
