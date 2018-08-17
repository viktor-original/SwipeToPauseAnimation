//
//  ViewController.swift
//  SwipeToPauseAnimation
//
//  Created by Виктор Красильников on 17.08.2018.
//  Copyright © 2018 Viktor_Original. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftBorderConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightBorderConstraint: NSLayoutConstraint!
    @IBAction func showSwipeButton(_ sender: UIButton) {
        self.leftBorderConstraint.constant = 0
        self.rightBorderConstraint.constant = 375
        UIView.animate(withDuration: 1.0,
                       delay: 0.0,
                       usingSpringWithDamping: 1,
                       initialSpringVelocity: 1,
                       options: .curveEaseInOut,
                       animations: {
                        self.view.layoutIfNeeded()
                        
        }, completion: nil)
    }
    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        self.leftBorderConstraint.constant = 375
        self.rightBorderConstraint.constant = -375
        UIView.animate(withDuration: 1.0) {
                        self.view.layoutIfNeeded()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

