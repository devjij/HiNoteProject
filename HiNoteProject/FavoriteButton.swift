//
//  FavoriteButton.swift
//  HiNoteProject
//
//  Created by Dev Jijilal on 12/29/20.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }){
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.blue : Color.gray)
            
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
