//
//  FrameworkTitleView.swift
//  Froks
//
//  Created by Alex Vasyliev on 04.08.2022.
//

import SwiftUI

struct FrameworkGridTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridTitleView(framework: MockData.sampleFramework)
    }
}
