//
//  GameViewController.swift
//  Snakee
//
//  Created by Caleb Cheng on 28/07/2016.
//  Copyright (c) 2016 Caleb Cheng. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var pauseButton: UIButton!
    
    var flip = true
    var myTimer = Timer()
    let scene = GameScene(fileNamed: "GameScene")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTimer = Timer.scheduledTimer(timeInterval: 0.3, target: scene!, selector: #selector(GameScene.tick), userInfo: nil, repeats: true)
            
        if (scene != nil) {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene!.scaleMode = .aspectFill
        
            
            skView.presentScene(scene)
        }
    }

    @IBAction func onButtonPress(sender: UIButton) {
        if flip{
            pauseButton.setImage(UIImage(named: "play"), for: .normal)
            scene!.view?.isPaused = true
            myTimer.invalidate()
             
        } else {
            pauseButton.setImage(UIImage(named: "pause"), for: .normal)
            scene!.view?.isPaused = false
            myTimer = Timer.scheduledTimer(timeInterval: 0.3, target: scene!, selector: #selector(GameScene.tick), userInfo: nil, repeats: true)
        }
        
        flip = !flip
    }
    
    func shouldAutorotate() -> Bool {
        return true
    }

    func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }


    func prefersStatusBarHidden() -> Bool {
        return true
    }
}
