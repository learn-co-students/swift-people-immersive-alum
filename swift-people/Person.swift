//
//  Person.swift
//  swift-people
//
//  Created by Alla Gorik on 12/31/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation
class Person{
    let name: String
    let ageInYears: Int?
    var skills: Set<String> = []
    
    var qualifiedTutor: Bool{
        get{
            return skills.count>=4
        }
        
    }
    
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    required init(name: String, ageInYears:Int?=nil){
        self.name = name
        self.ageInYears = ageInYears
    }
    
    func celebrateBirthday()-> String {
        if self.ageInYears == nil{
            return "HAPPY BIRTHDAY, "+self.name + "!!!"
        }
        else{
            return String(format:"HAPPY %@ BIRTHDAY, %@!!!",
                          (self.ageInYears?.ordinal())!,
                          self.name)
        }
    }
    
    func learnSkillBash() -> Bool{
        let skillCount = self.skills.count
        skills.insert("bash")
        return (skills.count>skillCount)
    }
    
    func learnSkillXcode() -> Bool{
        let skillCount = self.skills.count
        skills.insert("Xcode")
        return (skills.count>skillCount)
    }
    
    func learnSkillObjectiveC() -> Bool{
        let skillCount = self.skills.count
        skills.insert("Objective-C")
        return (skills.count>skillCount)
    }
    
    func learnSkillSwift() -> Bool{
        let skillCount = self.skills.count
        skills.insert("Swift")
        return (skills.count>skillCount)
    }
    
    func learnSkillInterfaceBuilder()-> Bool{
        let skillCount = self.skills.count
        skills.insert("Interface Builder")
        return (skills.count>skillCount)
    }
    
}
