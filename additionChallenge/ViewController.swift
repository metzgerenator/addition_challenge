//
//  ViewController.swift
//  additionChallenge
//
//  Created by Michael Metzger  on 5/7/18.
//  Copyright © 2018 Mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var stringAddDelegate: StringAddDelegate?
    
    @IBOutlet var answerLabel: UILabel!
    
    @IBOutlet var numberOneOutlet: UITextField!
    
    @IBOutlet var numberTwoOutlet: UITextField!
    
    @IBAction func numberOneAction(_ sender: Any) {
        numberTwoOutlet.becomeFirstResponder()
        
    }
    
    
    @IBAction func numberTwoAction(_ sender: Any) {
        stringAddDelegate?.addTwoStrings()
        
        
    }
    
    @IBAction func computeAction(_ sender: Any) {
        stringAddDelegate?.addTwoStrings()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stringAddDelegate = self
    }



}

extension ViewController: StringAddDelegate {
    var numberOne: String {
        return numberOneOutlet.text!
    }
    
    var numberTwo: String {
        return numberTwoOutlet.text!
    }
    
    var viewController: UIViewController {
        return self
    }
    
    func addTwoStringsOutput(answer: String) {
        answerLabel.text = answer
        numberOneOutlet.text = ""
        numberTwoOutlet.text = ""
    }
    
    
    
    
}

