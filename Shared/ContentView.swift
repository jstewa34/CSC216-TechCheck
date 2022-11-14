//
//  ContentView.swift
//  Shared
//
//  Created by Chu, LeeAnn on 11/9/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var building = Building.none
    @State private var room = 0
    @State private var issuePresenting = false
    
    var body: some View {
            VStack {
//                Image("techcheck")

                Text("TechCheck")
                    .padding()
                    .multilineTextAlignment(.center)
                    .font(.custom("GillSans", size: 35))
                
                Text("Which building are you in?")
                    .font(.custom("GillSans", size: 25))
                Picker("Which building are you in?", selection: $building) {
                    ForEach(Building.allCases, id: \.self) { building in
                        Text(building.name())
                            .font(.custom("GillSans", size: 25))
                    }
                }
                
                Text("Which room are you in?")
                    .font(.custom("GillSans", size: 25))
                
//                Picker("Which room are you in?", selection: $building) {
//                    ForEach(Building.init(rawValue: Int(), id: \.self) { room_num in
//                        Text(room_num)
//                            .font(.custom("GillSans", size: 25))
//                    }
//                }
                
                Button("Next") {
                     issuePresenting.toggle()
                 }

            }.sheet(isPresented: $issuePresenting) {
                IssueView(building: "Hutch", room: "112")
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
