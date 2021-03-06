//
//  LandmarkRow.swift
//  HiNoteProject
//
//  Created by Dev Jijilal on 12/28/20.
//

//this is basically how you set up the individual boxes to show the song names
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            Text(landmark.name)
            Text(landmark.park)
                .foregroundColor(.blue)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
