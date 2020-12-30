//
//  SongDetail.swift
//  HiNoteProject
//
//  Created by Dev Jijilal on 12/28/20.
//

import SwiftUI

struct SongDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    
    var body: some View {
        ScrollView {

                    VStack(alignment: .leading) {
                        HStack{
                        Text(landmark.name)
                            .font(.title)
                            .foregroundColor(.primary)
                            FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                        }
                        HStack {
                            Text(landmark.park)
                                .foregroundColor(.blue)
                            Spacer()
                            Text(landmark.state)
                                .foregroundColor(.blue)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                        Divider()

                        if #available(iOS 14.0, *) {
                            Text("Score: \(landmark.city)/10")
                                .font(.title2)
                        } else {
                            // Fallback on earlier versions
                        }
                        if #available(iOS 14.0, *) {
                            Text("Review")
                                .font(.title2)
                                .foregroundColor(.green)
                        } else {
                            // Fallback on earlier versions
                        }
                        Text(landmark.description)
                    }
                    .padding()

                    
        }
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(landmark: ModelData().landmarks[0])
    }
}
