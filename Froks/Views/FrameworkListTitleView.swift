//
//  FrameworkListTitleView.swift
//  Froks
//
//  Created by Alex Vasyliev on 05.08.2022.
//

import SwiftUI

struct FrameworkListTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

struct FrameworkListTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListTitleView(framework: MockData.sampleFramework)
    }
}
