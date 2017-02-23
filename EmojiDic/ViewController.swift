//
//  ViewController.swift
//  EmojiDic
//
//  Created by Luis Medinelli on 2/21/17.
//  Copyright © 2017 iBeacon Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //print(indexPath.row)
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        cell.textLabel?.highlightedTextColor = UIColor.blue
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "moveSegue", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let deVC = segue.destination as! DefinitionViewController
        deVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        // var emojis = ["😎","😰","😈","👷","👠","👼"]
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.definition = "A dude with sunglasess"
        emoji1.category = "Faces"
        emoji1.birthYear = 2010
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😰"
        emoji2.definition = "A SAD and Sick face"
        emoji2.category = "Faces"
        emoji2.birthYear = 2009
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😈"
        emoji3.definition = "Daemon from the hell"
        emoji3.category = "Animated"
        emoji3.birthYear = 2011
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👷"
        emoji4.definition = "Miner from Chile"
        emoji4.category = "Faces"
        emoji4.birthYear = 2013
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👠"
        emoji5.definition = "Really cool shoe"
        emoji5.category = "Things"
        emoji5.birthYear = 2016
        let emoji6 = Emoji()
        emoji6.stringEmoji = "👼"
        emoji6.definition = "Factastic Angel"
        emoji6.category = "Religious"
        emoji6.birthYear = 2015
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6]
    }


}

