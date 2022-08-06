//
//  TopButtonView.swift
//  Froks
//
//  Created by Alex Vasyliev on 05.08.2022.
//

import SwiftUI

struct DismissButtonView: View {
    
    @Binding var isTapped: Bool
    
    let imageName: String
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isTapped.toggle()
            } label: {
                Image(systemName: imageName)
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct TopButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DismissButtonView(isTapped: .constant(false), imageName: "xmark")
    }
}
