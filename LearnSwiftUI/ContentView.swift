//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by 郭佳林 on 2023/12/29.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Properties
    
    // MARK: -Body
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

// MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            // 根据机型来查看尺寸大小
            .previewDevice("iPhone 14")
    }
}
