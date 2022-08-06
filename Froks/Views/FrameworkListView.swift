//
//  FrameworkListView.swift
//  Froks
//
//  Created by Alex Vasyliev on 05.08.2022.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(isActive: $viewModel.isShowingDetailView) {
                        FrameworkDetailView(framework: framework, gridView: false, isShowing: $viewModel.isShowingDetailView)
                    } label: {
                        FrameworkListTitleView(framework: framework)
                        
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    AppearenceButtonView(viewModel: viewModel)
                }
            }
        }
    }
}

struct FrameworkListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
