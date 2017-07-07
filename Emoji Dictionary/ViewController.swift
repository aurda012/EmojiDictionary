//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Alfredo Urdaneta on 7/7/17.
//  Copyright © 2017 AlfredosApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableView.dataSource = self
        coolTableView.delegate = self
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
        tableView.deselectRow(at: indexPath, animated: true)
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
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "💸"
        emoji1.category = "Money Emojis"
        emoji1.Motto = "FLYIN DEAD PRESIDENTS"
        emoji1.definition = "FLYING RACK"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🎞"
        emoji2.category = "MOVIES"
        emoji2.Motto = "WE BEEN MAKING MOVIES"
        emoji2.definition = "MOVIE"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💰"
        emoji3.category = "Money Emojis"
        emoji3.Motto = "DEAD PRESIDENTS IN A BAG"
        emoji3.definition = "Money Bag"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💵"
        emoji4.category = "Money Emojis"
        emoji4.Motto = "DEAD PRESIDENTS"
        emoji4.definition = "Dollar"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "💶"
        emoji5.category = "Money Emojis"
        emoji5.Motto = "DEAD CHINESE PRESIDENTS"
        emoji5.definition = "Yen"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "💴"
        emoji6.category = "Money Emojis"
        emoji6.Motto = "DEAD EURO PRESIDENTS"
        emoji6.definition = "Euro"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}

