//
//  ContentView.swift
//  SaveRouter
//
//  Created by 이민호 on 5/15/25.
//

import SwiftUI

struct ContentView: View {
    let container = AppDIContainer()
    
    var body: some View {
        VStack {
            ScreenshotView(viewModel: container.getScreenshotViewModel())
                .padding(.bottom, 5)
            
            Divider()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
