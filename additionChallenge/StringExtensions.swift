//
//  StringExtensions.swift
//  additionChallenge
//
//  Created by Michael Metzger  on 5/7/18.
//  Copyright © 2018 Mike. All rights reserved.
//

import Foundation


//MARK: extension for converting string to Int
extension String {
    
    func stringToInt() -> Int  {
        // compact map to take nil out
        var arrayOfInts = self.compactMap{stringCharToInt(char: String($0))}
        
        //if this is a double or float adjust for range
        if let decimalRange = self.checkForDouble() {
            let index = self.distance(from: self.startIndex, to: decimalRange.lowerBound)
            arrayOfInts = arrayOfInts.enumerated().filter{$0.offset < index}.map{$0.element}
            
        }
        //Combine the array of Ints into one Int
        let intValue = arrayOfInts.reduce(0, {$0 * 10 + $1})
        return intValue
    }
    
    func checkForDouble() -> Range<String.Index>?{
        return self.range(of: ".")
    }
    
    
   private func stringCharToInt(char: String) -> Int? {
        switch char {
        case "0":
            return 0
        case "1":
            return 1
        case "2":
            return 2
        case "3":
            return 3
        case "4":
            return 4
        case "5":
            return 5
        case "6":
            return 6
        case "7":
            return 7
        case "8":
            return 8
        case "9":
            return 9
            
        default:
            return nil
        }
    }
    
}



