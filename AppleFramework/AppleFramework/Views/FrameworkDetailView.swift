//
//  FrameworkDetailView.swift
//  AppleFramework
//
//  Created by Ritesh Khore on 22/07/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            
            FrameworkTitleView(imageName: framework.imageName, name: framework.name)
            
            Text(framework.description)
                .font(.body)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                Text("Learn more")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 50)
                    .background(.red)
                    .foregroundStyle(.white)
                    .clipShape(.buttonBorder)
            }
        }.padding()
            .fullScreenCover(isPresented: $isShowingSafariView) {
                SafariView(url: URL(string: framework.urlString)!)
            }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
