//
//  FrameworkDetailView.swift
//  Froks
//
//  Created by Alex Vasyliev on 05.08.2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @State var showSafari = false
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            
            // Dismiss button
            HStack {
                Spacer()
                Button {
                    isShowing = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            // Framework details
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            // Learn More button
            Button {
                showSafari.toggle()
                
            } label: {
                AFButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $showSafari, content: {
                if let url = URL(string: framework.urlString){
                    SFSafariViewWrapper(url: url)
                }
            })
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowing: .constant(false))
            .preferredColorScheme(.dark)
    }
}
