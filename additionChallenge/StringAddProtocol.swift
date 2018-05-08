//
//  StringAdd.swift
//  additionChallenge
//
//  Created by Michael Metzger  on 5/7/18.
//  Copyright © 2018 Mike. All rights reserved.
//

import UIKit


protocol StringAddDelegate {
    var viewController: UIViewController {get}
    var numberOne: String {get}
    var numberTwo: String {get}
    func addTwoStringsOutput(answer: String)
}

extension StringAddDelegate {
    
    //MARK: Add two strings
     func addTwoStrings()  {
        if checkForBlanks() {
            let answer = addition(lhs: numberOne.stringToInt(), rhs: numberTwo.stringToInt())
            self.addTwoStringsOutput(answer: answer)
        }
        
    }
    
    //MARK: Add using Bitwise
    
     private func addition(lhs: Int, rhs: Int) -> String {
        //Convert to Unit so we can use Bitwise operators
        var numberOne = UInt8(lhs)
        var numberTwo = UInt8(rhs)
        var a:  UInt8
        var b:  UInt8
        repeat {
            a = numberOne & numberTwo //combine bits of two numbers
            b = numberOne ^ numberTwo // XOR compare bits of two numbers
            numberOne = a << 1 // logical shift to the left
            numberTwo = b
        } while (a != 0)
        
        return String(b)
    }
    
    
    private func checkForBlanks() -> Bool {
        switch (numberOne.isEmpty, numberTwo.isEmpty) {
        case (true, true):
            viewController.standardAlert(title: "Fill Fields", message: "Please fill both Fields")
            return false
        case (true, false):
            viewController.standardAlert(title: "Fill Fields", message: "Please fill number one field")
            return false
        case (false, true):
            viewController.standardAlert(title: "Fill Fields", message: "Please fill number two field")
            return false
        default:
            return true
        }
    }
    

    
}













