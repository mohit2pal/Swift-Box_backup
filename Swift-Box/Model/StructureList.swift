//
//  StructureList.swift
//  Swift-Box
//
//  Created by subha on 17/02/24.
//

import Foundation

struct Emails: Identifiable {
    let id = UUID()
    var rawEmail = [MessageStructure]()
}
