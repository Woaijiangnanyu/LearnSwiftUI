//
//  CardView.swift
//  LearnSwiftUI
//
//  Created by 郭佳林 on 2023/12/29.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - Properties
    var gradient: [Color] = [Color("Color01"),Color("Color02")]
    
    
    var body: some View {
        // : ZStack 堆栈类容器
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                // MARK: Body
                ForEach (0..<7) { item in
                    ZStack {
                    Image("developer-no1")
                        VStack{
                            Text("SwiftUI")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                            Text("如此美妙 不同凡响")
                                .fontWeight(.light)
                                .foregroundColor(.white)
                                .italic()
                        }
                        .offset(y: -218)
                        Button(action: {
                            print("按钮被用户点击了")
                        }){
                            HStack {
                                Text("技术总监")
                                      .fontWeight(.heavy)
                                      .foregroundColor(.white)
                                      .accentColor(.white)
                                Image(systemName: "arrow.right.circle")
                                    .font(Font.title.weight(.medium))
                                    .accentColor(.white)
                            }
                            .padding(.vertical)
                            .padding(.horizontal, 24)
                            .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                            .clipShape(Capsule())
                            .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
                            
                        }
                        .offset(y: 210)
                    }
                    .frame(width: 335, height: 545)
                    .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(16)
                    .shadow(radius: 8)
                }
                .padding(20)
                }
        }
    }
}

// MARK: Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}S
