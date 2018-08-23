//
//  Person.swift
//  swift-people
//
//  Created by Steven McGrath on 8/23/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    let name: String
    var ageInYears: Int?
    var skills = Set<String>()
    var qualifiedTutor: Bool {
        if skills.count >= 4 {
            return true
        } else {
            return false
        }
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name: "John Doe")
    }
    
    func celebrateBirthday() -> String {
        if var age = self.ageInYears {
            age += 1
            self.ageInYears = age
            return "HAPPY \(age)\(Int.ordinal(age)().uppercased()) BIRTHDAY, \(name.uppercased())!!!"
        }
        return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
    }
    
    func learnSkillBash() {
        skills.insert("bash")
    }
    
    func learnSkillXcode() {
        skills.insert("Xcode")
    }
    
    func learnSkillObjectiveC() {
        skills.insert("Objective-C")
    }
    
    func learnSkillSwift() {
        skills.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder() {
        skills.insert("Interface Builder")
    }
    
    
    
    
}

