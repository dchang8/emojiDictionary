//
//  DefinitionViewController.swift
//  emojiDictionary
//
//  Created by Daniel Chang on 8/30/17.
//  Copyright © 2017 dannyboyProductions. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😡" {
            definitionLabel.text = "MAD Face!!!"
        }
        if emoji == "💋" {
            definitionLabel.text = "Kisses!!!"
        }
        if emoji == "🐼" {
            definitionLabel.text = "Panda Face"
        }
        if emoji == "🎱" {
            definitionLabel.text = "Eight Ball"
        }
        if emoji == "🇵🇦" {
            definitionLabel.text = "Bienvenido a PANAMA!"
        }
        if emoji == "⚡︎" {
            definitionLabel.text = "Go BOLTS!!!"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
