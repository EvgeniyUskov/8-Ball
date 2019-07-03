//
//  ViewController.swift
//  8-Ball
//
//  Created by Evgeniy Uskov on 30/05/2019.
//  Copyright © 2019 Evgeniy Uskov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView8Ball: UIImageView!
    
    
    let array = [
        "ball1",
        "ball2",
        "ball3",
        "ball4",
        "ball5"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype,
                     with event: UIEvent?) {
            getAnswer()
    }

    func getAnswer() {
        let index = Int.random(in: 0...4)
        imageView8Ball.image = UIImage(named: array[index])
    }
}

