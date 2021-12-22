//
//   RotatedBadgeSymbol.swift
//  SwiftUITut
//
//  Created by Lesly Blaise on 12/22/21.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle: Angle
                
    
    var body: some View {
        BadgeSymbol()
            .padding()
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
