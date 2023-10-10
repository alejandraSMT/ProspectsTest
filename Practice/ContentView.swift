//
//  ContentView.swift
//  Practice
//
//  Created by Alejandra San Martin on 28/09/23.
//

import SwiftUI

struct ContentView: View{
    @StateObject var prospects = Prospects()
    
    var body: some View {
        TabView{
            ProspectsView(filter: .none)
                .tabItem{
                    Label("Everyone", systemImage: "person.3")
                }
            ProspectsView(filter:.contacted)
                .tabItem{
                    Label("Contacted", systemImage: "checkmark.circle")
                }
            ProspectsView(filter:.uncontacted)
                .tabItem{
                    Label("Uncontacted", systemImage: "questionmark.diamond")
                }
            
            MeView()
                .tabItem{
                    Label("Me",systemImage: "person.crop.square")
                }
        }
        .environmentObject(prospects)
        .tint(.indigo)
        .onAppear{
            
            let appereance = UITabBar.appearance()
            appereance.barTintColor = .black
            appereance.isTranslucent = true
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
