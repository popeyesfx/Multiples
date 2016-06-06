//
//  GameData.swift
//  Multiples
//
//  Created by Jack Hider on 06/06/2016.
//  Copyright © 2016 Jack Hider. All rights reserved.
//

import Foundation

class GameData {
    
    static let instance = GameData()
    
    private var _runningTotal:Int = 0
    private var _currentValue:Int = 0
    private var _sum:Int = 0
    private let MaxRep = 10
    
    
    var runningTotal:Int {
        
        get {
            
            return _runningTotal
        }
        
        set {
            
            _runningTotal = newValue
        }
     }
    
    var currentValue:Int {
        
        get {
            
            return _currentValue
        }
        
        set {
            
            _currentValue = newValue
        }
    }
    
    var sum:Int {
        
        get {
            
            return _sum
        }
        
        set {
            
            _sum = newValue
        }
    }
    
    func computeSum() -> Int {
        
        sum = sum + currentValue
        return (sum)
    }
    
    func calcRunningTotal() -> Int {
        
        runningTotal = runningTotal + currentValue
        
        return (runningTotal)
        
    }
    
    func checkMax() -> Bool {
       
        if ( sum > (currentValue * MaxRep)) {
        
            return true
        
        }else {
        
            return false
        
        }
        
        
    }
    
}