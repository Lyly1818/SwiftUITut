//
//  Badge.swift
//  SwiftUITut
//
//  Created by Lesly Blaise on 12/22/21.
//

import SwiftUI
import MapKit

struct Badge: View {
    var badgeSymbols: some View{
        ForEach(0..<8){
            index in
            
            RotatedBadgeSymbol(angle:   Angle(degrees: 0))
                .opacity(0.5)
        }
        
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                           badgeSymbols
                               .scaleEffect(1.0 / 4.0, anchor: .top)
                               .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
                       }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
