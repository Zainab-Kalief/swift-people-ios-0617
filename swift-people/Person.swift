//
//  Person.swift
//  swift-people
//
//  Created by Wura Alese on 6/16/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    var qualifiedTutor: Bool {
      return  skills.count > 3
    }
    
    //designated init - we mostly use this when we want to inlcude an optional in our instance. Regularly our optional doesn't require to be init like other types.
    init(name: String, ageInYears: Int?) {
        self.ageInYears = ageInYears
        self.name = name
    }
    
    //this is when we want to focus on specific properties in our instances.
    convenience init(realName: String) {
        self.init(name: realName, ageInYears: nil)
        
    }
    
    //this is a default init. so when we set an instance we don't input values becos they already exist
    init() {
        self.name = "John Doe"
        self.ageInYears = nil
    }
    
    func celebrateBirthday() -> String {
        if self.ageInYears == nil {
            return "HAPPY BIRTHDAY, \(self.name.uppercased())!!!"
        } else {
            self.ageInYears = ageInYears! + 1
            return "HAPPY \(ageInYears!)\(String(describing: ageInYears!.ordinal().uppercased())) BIRTHDAY, \(self.name.uppercased())!!!"
        }
    }
    
    func learnSkillBash() {
        if !skills.contains("bash") {
            skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if !skills.contains("Xcode") {
            skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if !skills.contains("Objective-C") {
            skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if !skills.contains("Swift") {
            skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if !skills.contains("Interface Builder") {
            skills.append("Interface Builder")
        }
    }
 
    
}
