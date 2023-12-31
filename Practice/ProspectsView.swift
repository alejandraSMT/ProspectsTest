//
//  ProspectsView.swift
//  Practice
//
//  Created by Alejandra San Martin on 28/09/23.
//

import SwiftUI

struct ProspectsView: View {
    
    enum FilterType{
        case none, contacted, uncontacted
    }
    
    @EnvironmentObject var prospects: Prospects
    
    let filter: FilterType
    
    var body: some View {
        NavigationView{
            ZStack{
                Text("People: \(prospects.people.count)")
                    .navigationTitle(title)
                    .toolbar{
                        Button{
                            let prospect = Prospect()
                            prospect.name = "Paul Hudson"
                            prospect.emailAdress = "paul@gmail.com"
                            prospects.people.append(prospect)
                        } label : {
                            Label("Scan",systemImage: "qrcode.viewfinder")
                        }
                    }
            }
            
        }
    }
    
    var title:String{
        switch filter {
        case .none:
            return "Everyone"
        case .contacted:
            return "Contacted people"
        case .uncontacted:
            return "Uncontacted people"
        }
    }
}

struct ProspectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProspectsView(filter: .none)
            .environmentObject(Prospects())
    }
}
