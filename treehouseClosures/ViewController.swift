//
//  ViewController.swift
//  treehouseClosures
//
//  Created by Robin Malhotra on 06/09/15.
//  Copyright © 2015 Robin Malhotra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let something = printString
        displayString(something)
        let nums = 1...10
        let evenNums = nums.filter(isEven)
        print(evenNums)
        print(doSomethingWithNumbers([1,2,3], operation: double))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func printString(aString:String)
    {
        print("The string is \(aString)")
    }
    
    func displayString(printStringFunc: (String)->Void)
    {
        printStringFunc("I'm a func insice a func. Func me")
    }
    
    func isEven (i:Int) -> Bool
    {
        if i%2 == 0
        {
            return true
        }
        else
        {
            return false
        }
    }

    func doSomethingWithNumbers(numbers:[Int],operation:(Int -> Int))->[Int]
    {
        var results = [Int]()
        for number in numbers {
            results += [operation(number)]
        }
        return results
    }
    
    func square (a:Int)->Int
    {
        return a*a
    }
    func double (a:Int)->Int
    {
        return 2*a
    }

}

