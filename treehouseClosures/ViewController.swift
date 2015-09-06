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
        let printAndReturnIntegerFunc=printerFunction()
        printAndReturnIntegerFunc(2)
        printAndReturnIntegerFunc(3)
        
        let runningTotalFunction = printerFunction()
        runningTotalFunction(4)
        
    let difference = mathOperation(differenceBetweenNumbers,a: 4,b: 2)
        print(difference)
        
        //environment consisting of function and captured variables within scope is called closure. runningTotalFunction and printAndReturnIntegerFunc are different closures, so runnningTotal is 20 in the first case and 10 in the second case
        // // // // // // // //
        // MIND BLOWN
        // // // // // // // //
        
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
    
    func someFunction(number:Int) ->Void
    {
        
    }
    
    func printerFunction ()-> ((Int)->())
    {
        var runningTotal = 0
        func printInteger(number:Int)->()
        {
            runningTotal+=10
            print("the int is \(number)")
            print("running total is \(runningTotal)")
        }
        return printInteger
    }
    
    func differenceBetweenNumbers(a: Int, b:Int) -> (Int)
    {
        return a - b
    }
    
    func mathOperation (operation:(Int,Int)->Int,a:Int,b:Int)->(Int)
    {
        return operation(a,b)
    }


}

