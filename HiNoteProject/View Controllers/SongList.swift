//
//  SongList.swift
//  HiNoteProject
//
//  Created by Dev Jijilal on 12/28/20.
//

import SwiftUI

struct SongList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter {
            landmark in (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    
    var body: some View {
        NavigationView {
            VStack() {
                
            Text("Songs")
                .font(.system(size: 35))
            
            Text("Button Tapped: \(ButtonVariable)")
                .font(.system(size: 20))
                List {
                    Toggle(isOn: $showFavoritesOnly){
                        Text("Favorites only")
                    }
                    
                    
                    ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: SongDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                    }

                }
                    HStack(alignment: .top){
                        Spacer()
                                .frame(width: 160)
                        
                    AddSongButton(isSet: .constant(true))
                    }
                }
            }
    }
}

struct SongList_Previews: PreviewProvider {
    
    static var previews: some View {
        SongList()
            .environmentObject(ModelData())
    }
}
}
