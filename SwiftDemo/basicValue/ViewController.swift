//
//  ViewController.swift
//  basicValue
//
//  Created by Apple on 2017/10/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let value : Float = 4.095
//
//        print(String(format: "%.2f", value) )
//
//        let label = "The width is "
//        let width = 94
//        let widthLabel = label + String(width)
//        print(widthLabel)
//
//        let name = "Jack"
//        let valueFloat01 : Float = 4
//        let helloString : String = "\(valueFloat01) hello " + name
//        print(helloString)

        
//        var emptyArray = [Any]()
//        var emptyDictionary = [String:Any]()
//
//        emptyArray = []
//        emptyDictionary = [:]
//
//        let values = [45,83,832,98,78,91,55]
//        for value in values {
//            print(value)
//        }
        
        
//        var optionalString: String? = "Hello"
//        print(optionalString == nil)
//        var optionalName: String? = "Bob"
//        var greeting = "Hello!"
//        if let name = optionalName {
//            greeting = "Hello, \(name)"
//        }
//        else {
//            greeting = "hello world"
//        }
//        print(greeting)
        
        
        //使用??来进行值缺省的时候来补充
//        let nickName: String? = nil
//        let fullName: String = "John Appleseed"
//        let informalGreeting = "Hi \(nickName ?? fullName)"
//        print(informalGreeting)
        
        
        //switch 从上往下查看如果有了进不进行接下来的比对了
        //必须包括所有的情况
//        let vegetable = "red pepper"
//        switch vegetable {
//        case "celery":
//            print("Add some raisins and make ants on a log.")
//        case "cucumber", "watercress", "red pepper":
//            print("That would make a good tea sandwich.")
//        case let x where x.hasSuffix("pepper"):
//            print("Is it a spicy \(x)?")
//        default:
//            print("Everything tastes good in soup.")
//        }
        
        
//        let interestingNumbers = [
//            "Prime": [2, 3, 5, 7, 11, 13],
//            "Fibonacci": [1, 1, 2, 3, 5, 8],
//            "Square": [1, 4, 9, 16, 25],
//            ]
//        var largest = 0
//        var largestKind = String()
//        for (kind, numbers) in interestingNumbers {
//            for number in numbers {
//                if number > largest {
//                    largest = number
//                    largestKind = kind
//                }
//            }
//
//        }
//        print(largest,largestKind)
        
        
        var total = 0
        for i in 2..<4 {
            
            total += i
        }
        print(total)
        
        
        
        
        
    }


}

