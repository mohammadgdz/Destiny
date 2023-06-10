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
    
}
