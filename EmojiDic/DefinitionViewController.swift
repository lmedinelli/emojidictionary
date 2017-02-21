//
//  DefinitionViewController.swift
//  EmojiDic
//
//  Created by Luis Medinelli on 2/21/17.
//  Copyright © 2017 iBeacon Solutions. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "No Emoji"

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text=emoji
        //var emojis = ["😎","😰","😈","👷","👠","👼"]
        if emoji == "😎"{
            definitionLabel.text="A dude with sunglasess"
        }else if emoji == "😰"{
            definitionLabel.text="Someone really SAD"
        }
        
        //print(emoji)
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
