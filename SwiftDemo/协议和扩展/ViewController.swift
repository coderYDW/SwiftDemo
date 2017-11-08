//
//  ViewController.swift
//  协议和扩展
//
//  Created by Apple on 2017/10/12.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

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


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = simpleClass()
        a.adjust()
        let aDescription = a.simpleDescription
        print(aDescription)
        
        var b = simpleStruct()
        b.adjust()
        print(b.simpleDescription)
        
        //TODO: - 19页学习延展
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

