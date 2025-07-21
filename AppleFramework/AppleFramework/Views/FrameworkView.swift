//
//  FrameworkView.swift
//  AppleFramework
//
//  Created by Ritesh Khore on 21/07/25.
//

import SwiftUI

struct FrameworkView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 72, height: 72)
                .aspectRatio(contentMode: .fit)
            Text(framework.name)
                .font(.system(size: 24, weight: .semibold))
                .truncationMode(.tail)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding(.all).onTapGesture {
            // TODO: Handle tap on framework
        }
    }
}

#Preview {
    FrameworkView(framework: .init(name: "Carplay", imageName: "carplay", urlString: "", description: ""))
}
