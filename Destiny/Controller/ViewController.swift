//
//  ViewController.swift
//  Destiny
//
//  Created by Mohammad on 2023-06-10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLable: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        dropShadow()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        story.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLable.text = story.getStoryTitle()
        choice1Button.setTitle(story.getChoice1(), for: .normal)
        choice2Button.setTitle(story.getChoice2(), for: .normal)
        
    }
    
    func dropShadow (){
        storyLable.layer.shadowColor = UIColor.black.cgColor
        storyLable.layer.shadowOpacity = 1
        storyLable.layer.shadowOffset = CGSize(width: 1, height: 1)
        storyLable.layer.shadowRadius = 5
    }
}
