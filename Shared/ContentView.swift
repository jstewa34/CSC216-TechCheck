//
//  ContentView.swift
//  Shared
//
//  Created by Chu, LeeAnn on 11/9/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    private var BuildingModel = Building()
    
    @State private var building = "Hutch"
    @State private var room = ""
    @State private var issuePresenting = false
    
    var body: some View {
            VStack {
                Image("name")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 80)
                
                Text("Which building are you in?")
                    .font(.custom("GillSans", size: 25))
                Picker("Which building are you in?", selection: $building) {
                    ForEach(BuildingModel.buildingList, id: \.self) { building in
                        Text(building)
                            .font(.custom("GillSans", size: 25))
                    }
                }
                .pickerStyle(.inline)
                .padding(.top, -90)
                .clipped()
//                Text("Your building: \(building.name())")
                
                Text("Which room are you in?")
                    .font(.custom("GillSans", size: 25))
                
                Picker("Which room are you in?", selection: $room) {
                    ForEach(BuildingModel.findRoom(building: building), id: \.self) { room_num in
                        Text(room_num)
                            .font(.custom("GillSans", size: 25))
                    }
                }
                .pickerStyle(WheelPickerStyle())
                //.frame(height: 150)
                .padding(.top, -90)
                .clipped()
                
                Button("Next") {
                     issuePresenting.toggle()
                 }
                .font(.custom("GillSans", size: 25))

            }.sheet(isPresented: $issuePresenting) {
                IssueView(building: building, room: room)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
