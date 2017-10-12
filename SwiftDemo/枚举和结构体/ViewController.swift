//
//  ViewController.swift
//  枚举和结构体
//
//  Created by Apple on 2017/10/12.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

enum Rank : Int {
    
    case Ace = 1
    case Two , Three, Four, Five, Six
    case Jack, Queen, King
    
    func simpleDescription () -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Two:
            return "two"
        case .Three:
            return "three"
        case .Four:
            return "four"
        case .Five:
            return "Five"
        case .Six:
            return "Six"
        case .Jack :
            return "jack"
        case .Queen :
            return "Queen"
        case .King :
            return "King"
        }
    }
    
    func max(rank: Rank) -> Bool {
        return self.rawValue > rank.rawValue ? true : false
    }
}


enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    func color() -> UIColor {
        switch self {
        case .Spades,.Clubs:
            return UIColor.black
        default:
            return UIColor.red
        }
    }
    
}

enum ServerResponse {
    case Result(String, String)
    case Failure(String)
    case Other(String)
    case OtherTwo(String)
}

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let ace = Rank.King
//
//        let aceRawValue = ace.rawValue
//        print(aceRawValue, ace.simpleDescription())
//
//        let suit = Suit.Diamonds
//        self.view.backgroundColor = suit.color()
        
        
        
//        let success = ServerResponse.Result("6:00 am", "8:09 pm")
//        print(success)
//        let failure = ServerResponse.Failure("Out of cheese.")
//        print(failure)
//        switch success {
//        case let .Result(sunrise, sunset):
//            _ = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
//        case let .Failure(message):
//            print("Failure...  \(message)")
//        case let .Other(name):
//            print("other\(name)")
//        case let .OtherTwo(age):
//            print(age)
//        }
        
        
        struct Card {
            
            var rank: Rank
            var suit: Suit
            
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
            
        }
        
        let threeOfSpades = Card(rank: .Three, suit: .Diamonds)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        print(threeOfSpadesDescription)
        
        
    }

}

