//
//  FrameworkTitleView.swift
//  AppleFramework
//
//  Created by Ritesh Khore on 22/07/25.
//

import SwiftUI

struct FrameworkTitleView: View {
    let imageName: String
    let name: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 72, height: 72)
                .aspectRatio(contentMode: .fit)
            Text(name)
                .font(.system(size: 24, weight: .semibold))
                .truncationMode(.tail)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding(.all)
    }
}

#Preview {
    FrameworkTitleView(imageName: "carplay", name: "Carplay")
}
