import SwiftUI

struct FrameworkGridView: View {
    
    let gridItems: [GridItem] = [
        GridItem(.flexible(minimum: 10, maximum: .infinity)),
        GridItem(.flexible(minimum: 10, maximum: .infinity)),
        GridItem(.flexible(minimum: 10, maximum: .infinity)),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkView(framework: framework)
                    }
                }
            }.navigationTitle("Apple frameworks")
        }
    }
}

#Preview {
    FrameworkGridView()
}
