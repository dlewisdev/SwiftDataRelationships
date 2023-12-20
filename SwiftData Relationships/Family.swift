//
//  Family.swift
//  SwiftData Relationships
//
//  Created by Danielle Lewis on 12/19/23.
//

import Foundation
import SwiftData

@Model
class Family: Identifiable {
    @Attribute(.unique) var id: String
    var familyName: String = ""
    
    @Relationship(deleteRule: .cascade, inverse: \Person.family)
    var people: [Person] = [Person]()
    
    init() {
        id = UUID().uuidString
    }
}
