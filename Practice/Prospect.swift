//
//  Prospect.swift
//  Practice
//
//  Created by Alejandra San Martin on 28/09/23.
//

import Foundation

class Prospect: Identifiable, Codable{
    var id = UUID()
    var name = "Anonymus"
    var emailAdress = ""
    var isContacted = false
}

@MainActor class Prospects: ObservableObject{
    @Published var people : [Prospect]
    
    init() {
        people = []
    }
}
