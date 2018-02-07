//
//  ViewController.swift
//  Output14
//
//  Created by Victor Idongesit on 12/12/2017.
//  Copyright © 2017 Victor Idongesit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1Constraint: NSLayoutConstraint!
    @IBOutlet weak var button2Constraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        button1Constraint.constant -= view.bounds.width
        button2Constraint.constant -= view.bounds.width
    }
    private var animatedPerformedOnce = false
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !animatedPerformedOnce {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.button1Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.button2Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
        animatedPerformedOnce = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

