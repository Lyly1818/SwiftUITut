//
//  SwiftUITutApp.swift
//  SwiftUITut
//
//  Created by Lesly Blaise on 12/16/21.
//

import SwiftUI

@main
struct SwiftUITutApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
