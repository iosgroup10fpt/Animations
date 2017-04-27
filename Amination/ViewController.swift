//
//  ViewController.swift
//  Amination
//
//  Created by imac on 4/27/17.
//  Copyright © 2017 imac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var checkQuestion: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var centerButton1Constraint: NSLayoutConstraint!

    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var centerButton2Constraint: NSLayoutConstraint!
    
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var centerButton3Constraint: NSLayoutConstraint!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var centerButton4Constraint: NSLayoutConstraint!
    @IBOutlet weak var Next: UIButton!
//    @IBOutlet weak var button5: UIButton!
//    @IBOutlet weak var heightButton1Constraint: NSLayoutConstraint!
    
//    @IBOutlet weak var numberOption1: UIButton!
//    @IBOutlet weak var numberOption2: UIButton!
//    @IBOutlet weak var numberOption3: UIButton!
//    @IBOutlet weak var numberOption4: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        centerButton1Constraint.constant -= view.bounds.width
        centerButton2Constraint.constant -= view.bounds.width
        centerButton3Constraint.constant -= view.bounds.width
        centerButton4Constraint.constant -= view.bounds.width
        numberQuestion = 1
        RandomQuestion()
        // button5.constant -= view.bounds.width
    }
    
    
    
    
    
    
    var CorrectAnswer = String()
    var numberQuestion = Int()
    func RandomQuestion(){
        
        //        var RandomNumber = arc4random() % 5
        //        RandomNumber += 1
        //
        Hide()
        switch(numberQuestion){
        case 1:
            Question.text = "Xcode 8.3 run on iOS version?"
            button1.setTitle("iOS version 10.9", for: UIControlState.normal)
            button2.setTitle("iOS version 10.10", for: UIControlState.normal)
            button3.setTitle("iOS version 10.11", for: UIControlState.normal)
            button4.setTitle("iOS version 10.11.12", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
        case 2:
            Question.text = "What is the compiling virtual machine in Xcode "
            button1.setTitle("Simulator", for: UIControlState.normal)
            button2.setTitle("VMWare", for: UIControlState.normal)
            button3.setTitle("Virtuabox", for: UIControlState.normal)
            button4.setTitle("Linux", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 3:
            Question.text = "What is the Swift"
            button1.setTitle("Programming language for iOS", for: UIControlState.normal)
            button2.setTitle("Monney", for: UIControlState.normal)
            button3.setTitle("Food", for: UIControlState.normal)
            button4.setTitle("Bus", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 4:
            Question.text = "What is Company developed xcode?"
            button1.setTitle("Apple", for: UIControlState.normal)
            button2.setTitle("Samsung", for: UIControlState.normal)
            button3.setTitle("Sonny", for: UIControlState.normal)
            button4.setTitle("LG", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 5:
            Question.text = "What is platform that Swift running on?"
            button1.setTitle("iOS", for: UIControlState.normal)
            button2.setTitle("Linux", for: UIControlState.normal)
            button3.setTitle("Windows", for: UIControlState.normal)
            button4.setTitle("Ubuntu", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        default:
            break
        }
    }
    func Hide(){
        checkQuestion.isHidden = true
        Next.isHidden = true
    }
    func UnHide(){
        checkQuestion.isHidden = false
        Next.isHidden = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func option1(_ sender: Any) {
        let theButton = sender as! UIButton
        let bounds = theButton.bounds
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseOut, animations: {
            theButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60 ,height: bounds.size.height)
        }){
            (success:Bool) in
            if success {
                UIView.animate(withDuration: 0.5, animations:{
                    theButton.bounds = bounds
                })
                
            }
            
        }
        UnHide()
        if(CorrectAnswer == "1"){
            checkQuestion.text = "You are Corect!!!"
        }
        else{
            checkQuestion.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func option2(_ sender: Any) {
        let theButton = sender as! UIButton
        let bounds = theButton.bounds
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseOut, animations: {
            theButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60 ,height: bounds.size.height)
        }){
            (success:Bool) in
            if success {
                UIView.animate(withDuration: 0.5, animations:{
                    theButton.bounds = bounds
                })
                
            }
            
        }
        UnHide()
        if(CorrectAnswer == "2"){
            checkQuestion.text = "You are Corect!!!"
        }
        else{
            checkQuestion.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func option3(_ sender: Any) {
        let theButton = sender as! UIButton
        let bounds = theButton.bounds
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseOut, animations: {
            theButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60 ,height: bounds.size.height)
        }){
            (success:Bool) in
            if success {
                UIView.animate(withDuration: 0.5, animations:{
                    theButton.bounds = bounds
                })
                
            }
            
        }
        UnHide()
        if(CorrectAnswer == "3"){
            checkQuestion.text = "You are Corect!!!"
        }
        else{
            checkQuestion.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func option4(_ sender: Any) {
        let theButton = sender as! UIButton
        let bounds = theButton.bounds
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseOut, animations: {
            theButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60 ,height: bounds.size.height)
        }){
            (success:Bool) in
            if success {
                UIView.animate(withDuration: 0.5, animations:{
                    theButton.bounds = bounds
                })
                
            }
            
        }
        UnHide()
        if(CorrectAnswer == "4"){
            checkQuestion.text = "You are Corect!!!"
        }
        else{
            checkQuestion.text = "You are WRONGGGG!!!"
        }
    }
    
   
    
    
    var chac = false
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !chac{
            UIView.animate(withDuration: 5, delay: 0, options: .curveEaseOut, animations: {
                self.centerButton1Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            
            UIView.animate(withDuration: 5, delay: 0, options: .curveEaseOut, animations: {
                self.centerButton2Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            UIView.animate(withDuration: 5, delay: 0, options: .curveEaseOut, animations: {
                self.centerButton3Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 5, delay: 0, options: .curveEaseOut, animations: {
                self.centerButton4Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            chac = true
        }
    }
    @IBAction func Next(_ sender: Any) {
        if(numberQuestion < 5){
            numberQuestion += 1
            RandomQuestion()
            Hide()
        }
        else{
            numberQuestion = 0
            numberQuestion += 1
            RandomQuestion()
            Hide()
        }
    }





}

