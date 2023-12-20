//
//  ContentView.swift
//  SwiftData Relationships
//
//  Created by Danielle Lewis on 12/19/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    
    @State private var familyName = ""
    
    @Query private var families: [Family]
    
    
    var body: some View {
        NavigationStack {
            VStack {
                List(families) { fam in
                    NavigationLink {
                        PeopleView(selectedFamily: fam)
                    } label: {
                        Text(fam.familyName)
                    }
                }
            }
            
            HStack {
                TextField("Family Name", text: $familyName)
                    .textFieldStyle(.roundedBorder)
                
                Button("Add") {
                    let family = Family()
                    family.familyName = familyName
                    context.insert(family)
                    familyName = ""
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
