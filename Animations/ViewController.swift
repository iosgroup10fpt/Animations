//
//  ViewController.swift
//  Animations
//
//  Created by miceli on 4/13/17.
//  Copyright © 2017 miceli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: NSLayoutConstraint!
    @IBOutlet weak var button2: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.constant -= view.bounds.width
        button2.constant -= view.bounds.width
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var chac = false
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !chac{
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
                self.button1.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
                self.button2.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            chac = true
        }
        
        
    }


}

