//
//  Amigos.swift
//  StateLesson
//
//  Created by Ingeniero Fernando on 23/08/20.
//  Copyright © 2020 Ingeniero Fernando. All rights reserved.
//

import Foundation
import SwiftUI

struct Amigos: Identifiable{
    let id = UUID()
    let name: String
    let apellido: String
    let imagen: String
    let amigo: Bool
}
