//
//  FrameworkGridViewModel.swift
//  Froks
//
//  Created by Alex Vasyliev on 05.08.2022.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
   
    @Published var isShowingDetailView = false
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
}
