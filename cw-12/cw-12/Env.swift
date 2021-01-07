//
//  env.swift
//  cw-12
//
//  Created by mohamad on 1/7/21.
//

import SwiftUI
class Env : ObservableObject {
    @Published var name = ""
    @Published var age = ""
    @Published var phone = ""
    @Published var isMentor = false
}
