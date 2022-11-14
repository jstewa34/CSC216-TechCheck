//
//  Building.swift
//  techcheck (iOS)
//
//  Created by Chu, LeeAnn on 11/14/22.
//

import SwiftUI

enum Building: Int, CaseIterable {
    case none, hutch, morey, hoyt, harkness, gavett
    
    func name() -> String {
        switch self {
        case .none:
            return "Select your building..."
        case .hutch:
            return "Hutch"
        case .morey:
            return "Morey"
        case .hoyt:
            return "Hoyt"
        case .harkness:
            return "Harkness"
        case .gavett:
            return "Gavett"
        }
    }
    
    func number() -> [String] {
        switch self {
        case .none:
            return ["Select your rooom..."]
        case .hutch:
            return ["112", "122", "123"]
        case .morey:
            return ["212", "222", "223"]
        case .hoyt:
            return ["312", "322", "323"]
        case .harkness:
            return ["412", "422", "423"]
        case .gavett:
            return ["512", "522", "523"]
        }
    }
}
