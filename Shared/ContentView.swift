//
//  ContentView.swift
//  Shared
//
//  Created by Chu, LeeAnn on 11/9/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var building = 0
    @State private var room = 0
    @State private var issuePresenting = false
    
    var body: some View {
            VStack {
//                Image("techcheck")

                Text("TechCheck")
                    .padding()
                    .multilineTextAlignment(.center)
                    .font(.custom("GillSans", size: 35))
                
                Text("What building are you in?")
                    .font(.custom("GillSans", size: 25))
                Picker(selection: $building, label: Text("Building")) {
                    Text("Select your building...").tag(0)
                    Text("Meliora").tag(1)
                        .font(.custom("GillSans", size: 25))
                    Text("Strong").tag(2)
                        .font(.custom("GillSans", size: 25))
                    Text("Hutch").tag(3)
                        .font(.custom("GillSans", size: 25))
                }
                
                Text("What room are you in?")
                    .font(.custom("GillSans", size: 25))
                
                Picker(selection: $room, label: Text("Room")) {
                    Text("Select your room...").tag(0)
                    Text("112").tag(1)
                        .font(.custom("GillSans", size: 25))
                    Text("123").tag(2)
                        .font(.custom("GillSans", size: 25))
                    Text("233").tag(3)
                        .font(.custom("GillSans", size: 25))
                }
                
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
