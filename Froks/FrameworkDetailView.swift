//
//  FrameworkDetailView.swift
//  Froks
//
//  Created by Alex Vasyliev on 05.08.2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @State var gridView: Bool
    @State private var showSafari = false
    @Binding var isShowing: Bool
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        VStack {
            if gridView {
                DismissButtonView(isTapped: $isShowing, imageName: "xmark")
            }
            // Framework details
            FrameworkGridTitleView(framework: framework)
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
            .sheet(isPresented: $showSafari, content: {
                SFSafariViewWrapper(url: URL(string: framework.urlString) ?? URL(string: "https://developer.apple.com")!)
            })
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, gridView: true, isShowing: .constant(false))
            .preferredColorScheme(.dark)
    }
}
