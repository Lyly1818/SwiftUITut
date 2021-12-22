//
//  LandmarkList.swift
//  SwiftUITut
//
//  Created by Lesly Blaise on 12/20/21.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    
    @State private var showFavoriteOnly = true//Standard way to create a state for  a value
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{
            landmark in (!showFavoriteOnly || landmark.isFavorite)
            
            
        }
    }
    
    var body: some View {
        
        
        
        
        NavigationView{
            
            
            List
            {
                
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks){
                      landmark in
                     
                     NavigationLink{//Make the item navigate when tapped
                         
                         LandmarkDetail(landmark: landmark)
                     } label: {
                         LandmarkRow(landmark: landmark)
                     }
                    
                 }
            }
          
            .navigationTitle("Landmarks")
        }
       
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
