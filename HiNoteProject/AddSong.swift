import SwiftUI

struct AddSongButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            self.isSet.toggle()
        }){
            Image(systemName: isSet ? "plus.circle.fill" : "plus" )
                .foregroundColor(isSet ? Color.blue : Color.blue)
                .scaleEffect(3.0)
            
        }
    }
}

struct AddSongButton_Previews: PreviewProvider {
    static var previews: some View {
        AddSongButton(isSet: .constant(true))
    }
}
