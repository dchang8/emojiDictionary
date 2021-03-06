//
//  ViewController.swift
//  emojiDictionary
//
//  Created by Daniel Chang on 8/29/17.
//  Copyright © 2017 dannyboyProductions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    //var emojis = ["😡","💋","🐼","🎱","🇵🇦"]
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) //Disables the selected grey background of the row
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😡"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Mad Face!!!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💋"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley"
        emoji2.definition = "Kiss Kiss!!!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐼"
        emoji3.birthYear = 2017
        emoji3.category = "Smiley"
        emoji3.definition = "Panda Face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🎱"
        emoji4.birthYear = 2013
        emoji4.category = "Billiards"
        emoji4.definition = "Where's the Cue Ball?"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🇵🇦"
        emoji5.birthYear = 2014
        emoji5.category = "Flag"
        emoji5.definition = "Panama"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        
    }


}

