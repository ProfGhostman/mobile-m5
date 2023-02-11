//
//  ViewController.swift
//  MyAdventure
//
//  Created by user221491 on 2/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var sceneimage: UIImageView!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceone: UIButton!
    @IBOutlet weak var choicetwo: UIButton!
    
    var storylogic = StoryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func choiceone(_ sender: UIButton) {
        storylogic.getNextScene("1")
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        choiceone.backgroundColor = UIColor.cyan
    }
    
    
    @IBAction func choicetwo(_ sender: UIButton) {
        storylogic.getNextScene("2")
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        choicetwo.backgroundColor = UIColor.cyan
    }
    
    
    
    @objc func updateUI() {
        choiceone.backgroundColor = UIColor.clear
        choicetwo.backgroundColor = UIColor.clear
        storyLabel.text = storylogic.getStoryDesc()
        choiceone.setTitle(storylogic.getChoiceOne(), for: .normal)
        choicetwo.setTitle(storylogic.getChoiceTwo(), for: .normal)

    }

}
