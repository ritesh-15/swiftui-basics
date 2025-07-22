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
        FrameworkTitleView(imageName: framework.imageName, name: framework.name)
    }
}

#Preview {
    FrameworkView(framework: .init(name: "Carplay", imageName: "carplay", urlString: "", description: ""))
}
