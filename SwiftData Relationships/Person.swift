//
//  Person.swift
//  SwiftData Relationships
//
//  Created by Danielle Lewis on 12/19/23.
//

import Foundation
import SwiftData

@Model
class Person: Identifiable {
    @Attribute(.unique) var id: String
    var name: String = ""
    var age: Int = 0
    var family: Family?
    
    init() {
        id = UUID().uuidString
    }
}
