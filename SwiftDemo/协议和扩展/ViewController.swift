//
//  ViewController.swift
//  协议和扩展
//
//  Created by Apple on 2017/10/12.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit


protocol exampleProtocol {
    func absoluteValue(a:Double) -> Double
}

extension Double: exampleProtocol{
    func absoluteValue(a: Double) -> Double {
        return 1.0
    }
}

extension Int {
    
    func ydw_go(aa:Int) -> Int {
        return aa + 1
    }
    
    
}


protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class simpleClass: ExampleProtocol {
    
    var simpleDescription: String = "a vary simple calss"
    var anotherProperty: Int = 100;
    
    func adjust() {
        simpleDescription += "Now 100% adjust"
    }
    
}

struct simpleStruct: ExampleProtocol {
    var simpleDescription: String = "a simple struct"
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
    
}

enum simpleEnem: ExampleProtocol {
    case result(String)
    case failure(String)
    
    var simpleDescription: String {
        get {
            return self.simpleDescription
        }
        set {
            
        }
    }
    
    func adjust() {
        
    }
    
    
}

extension Int : ExampleProtocol {
    
    var simpleDescription: String {
        return "this is \(self)"
    }
    
    func adjust() {
        print("adjust number \(simpleDescription)")
    }
    
}

extension Double {
    func absoluteValue () -> Double {
//        if self < 0 {
//            return -self;
//        }
//        return self;
        return fabs(self) //取绝对值
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let a = simpleClass()
//        a.adjust()
//        let aDescription = a.simpleDescription
//        print(aDescription)
//
//        var b = simpleStruct()
//        b.adjust()
//        print(b.simpleDescription)
//
//        let c:Int = 1
//        c.adjust()
//
//        let d1 = -980.0
//        let d2 = 29.0
//
//        let d3 = d1.absoluteValue()
//        let d4 = d2.absoluteValue()
//
//        print(d3,d4)
        
        let aa:Int = 1
        let b11 = aa.ydw_go(aa: 1)
        print(b11)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    


}




