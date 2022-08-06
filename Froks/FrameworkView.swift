//
//  FrameworkView.swift
//  Froks
//
//  Created by Alex Vasyliev on 04.08.2022.
//

import SwiftUI

struct FrameworkView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        Group {
            if viewModel.mainAppearence == .list {
                FrameworkListView(viewModel: viewModel)
            } else {
                FrameworkGridView(viewModel: viewModel)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkView()
            .preferredColorScheme(.dark)
    }
}
