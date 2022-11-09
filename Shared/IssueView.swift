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
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical) {
//                AsyncImage(url: URL(string: recipe.image_str ?? ""), scale: 2.5)
                HStack {
                    Text("Building: \(building)")
                    Text("Room: \(room)")
                }
                
                Text("Instructions...")
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
