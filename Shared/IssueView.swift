//
//  IssueView.swift
//  techcheck (iOS)
//
//  Created by Chu, LeeAnn on 11/9/22.
//

import SwiftUI

struct IssueView: View {
    var building : String
    var room : String
    
    @State private var issue = ""
    var issueList = ["Unknown Error Message", "Mic not working"]
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical) {
                Text("Room: \(building) \(room)")
                Picker("What is Your Issue?", selection: $issue) {
                    ForEach(issueList, id: \.self) { issue in
                        Text(issue)
                            .font(.custom("GillSans", size: 25))
                    }
                }
                .pickerStyle(.inline)
                .padding(.top, -90)
                .clipped()
                
                
                Text("Instructions:")
                Text("1) Open the icon highlighted 1")
                Text("2) Open the icon highlighted 1")
                Text("3) Open the icon highlighted 1")
                Text("4) Open the icon highlighted 1")
            }
        }
    }
}

struct IssueView_Previews: PreviewProvider {
    static var previews: some View {
        IssueView(building: "Hutch", room: "112")
            .environment(\.managedObjectContext,PersistenceController.preview.container.viewContext)
    }
}
