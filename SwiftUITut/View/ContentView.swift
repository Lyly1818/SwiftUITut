//
//  ContentView.swift
//  SwiftUITut
//
//  Created by Lesly Blaise on 12/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

