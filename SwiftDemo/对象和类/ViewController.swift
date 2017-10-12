//
//  ViewController.swift
//  对象和类
//
//  Created by Apple on 2017/10/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let shape = Shape.init(name: "jack", age: 11)
        shape.numberOfSides = 10
        print(shape.name!)
        print(shape.simpleDescription())

        let nameShape = NameShape.init(name1: "Bob", age: 20)
        nameShape.numberOfSides = 20
        print(nameShape.simpleDescription())
        
        let optionalShape : Shape? = Shape(name:nil, age:29)
        
        let name = optionalShape?.name
        
        print(name ?? "默认值")
        
    }


}
