//
//  ViewController.swift
//  闭包和函数
//
//  Created by Apple on 2017/10/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - 函数
//        func greet(person:String, lunch:String) -> String {
//
//            return "hello \(person), today ate \(lunch)"
//        }
//
//        print(greet(person:"Bob", lunch: "apple"))
        
        
//        func greet(_ person: String, on day: String) -> String {
//            return "Hello \(person), today is \(day)."
//        }
//        print(greet("John", on: "Wednesday"))

        
//        func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
//            var min = scores[0]
//            var max = scores[0]
//            var sum = 0
//            for score in scores {
//                if score > max {
//                    max = score
//                } else if score < min {
//                    min = score }
//                sum += score }
//            return (min, max, sum)
//        }
//        let statistics = calculateStatistics(scores:[5, 3, 100, 3, 9])
//        print(statistics)
        
        
        
        // MARK: - 闭包
        
//        let map = ({
//            (number: Int) -> Int in
//            if number%2 != 0 {
//                return 0
//            }
//            return number
//        })
//
//        let number = map(4)
//        print(number)
        
        //
        var numbers = [20, 19, 7, 12]
        
//        let mappedNumbers = numbers.map({
//            (number: Int) -> Int in
//            let result = 3 * number
//            return result
//        })
//        print(mappedNumbers)
        
        //有很多种创建更简洁的闭包的方法。如果一个闭包的类型已知，比如作为一个回调函数，你可以忽略参数的类型和返回值。单个语句闭包会把它语句的值当做结果返回。
//        let mappedNumbers = numbers.map({ number in 3 * number })
//        print(mappedNumbers)
        
        //你可以通过参数位置而不是参数名字来引用参数——这个方法在非常短的闭包中非常有用。当一个闭包作为最后一个参数传给一个函数的时候，它可以直接跟在括号后面。当一个闭包是传给函数的唯一参数，你可以完全忽略括号。
    
        
        
    }

    

}

