//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ricki Rajah on 14/04/2019.
//  Copyright © 2019 Techrey Limited. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
        
    }
    
    func newBallImage() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage.init(named: ballArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
        
    }
    
}

