//
//  SongDetail.swift
//  HiNoteProject
//
//  Created by Dev Jijilal on 12/28/20.
//

import SwiftUI

struct SongDetail: View {
    var body: some View {
        VStack {
                    Spacer()

                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.title)
                            .foregroundColor(.primary)

                        HStack {
                            Text("Artist")
                            Spacer()
                            Text("Album")
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                        Divider()

                        if #available(iOS 14.0, *) {
                            Text("Review Score (?/10)")
                                .font(.title2)
                        } else {
                            // Fallback on earlier versions
                        }
                        Text("Review Text")
                    }
                    .padding()

                    Spacer()
        }
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail()
    }
}
