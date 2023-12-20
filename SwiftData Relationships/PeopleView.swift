//
//  PeopleView.swift
//  SwiftData Relationships
//
//  Created by Danielle Lewis on 12/19/23.
//

import SwiftUI
import SwiftData

struct PeopleView: View {
    @Environment(\.modelContext) private var context
    @State private var ageText = ""
    @State private var nameText = ""
    
    
    var selectedFamily: Family
    
    var body: some View {
        VStack {
            
            List(selectedFamily.people) { person in
                Text(person.name)
            }
            
            HStack {
                TextField("Name", text: $nameText)
                TextField("Age", text: $ageText)
                
                Button("Add") {
                    let p = Person()
                    p.age = Int(ageText)!
                    p.name = nameText
                    p.family = selectedFamily
                    context.insert(p)
                    
                    nameText = ""
                    ageText = ""
                }
                
            }
            .textFieldStyle(.roundedBorder)
        }
    }
}

//#Preview {
//    PeopleView()
//}
