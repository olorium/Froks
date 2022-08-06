//
//  FrameworksGridView.swift
//  Froks
//
//  Created by Alex Vasyliev on 05.08.2022.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkGridTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
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
        .sheet(isPresented: $viewModel.isShowingDetailView) {
            FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, gridView: true, isShowing: $viewModel.isShowingDetailView)
        }
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
