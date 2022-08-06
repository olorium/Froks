//
//  AppearenceButtonView.swift
//  Froks
//
//  Created by Alex Vasyliev on 05.08.2022.
//

import SwiftUI

struct AppearenceButtonView: View {
    
    var viewModel: FrameworkViewModel
    
    var body: some View {
        HStack {
            Button {
                viewModel.mainAppearence = viewModel.mainAppearence == .grid ? .list : .grid
            } label: {
                Image(systemName: viewModel.mainAppearence.icon())
                    .foregroundColor(Color(.label))
                    .imageScale(.medium)
                    .frame(width: 30, height: 30)
            }
        }
    }
}

struct AppearenceButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AppearenceButtonView(viewModel: FrameworkViewModel())
    }
}
