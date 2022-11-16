//
//  Building.swift
//  techcheck (iOS)
//
//  Created by Chu, LeeAnn on 11/14/22.
//

import SwiftUI

struct Building: Identifiable {
    let buildingList: [String]
    let id = UUID()
    
    init() {
        self.buildingList = ["Hutch", "Morey", "Hoyt", "Harkness", "Gavett"]
    }
    
    func findRoom(building: String) -> [String] {
        switch building {
        case "Hutch":
            return ["112", "122", "123"]
        case "Morey":
            return ["212", "222", "223"]
        case "Hoyt":
            return ["312", "322", "323"]
        case "Harkness":
            return ["412", "422", "423"]
        case "Gavett":
            return ["512", "522", "523"]
        default:
            return ["Please pick a room"]
        }
    }
}

