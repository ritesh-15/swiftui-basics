import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.gridItems) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }.navigationTitle("Apple frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(
                        framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
        }
    }
}

#Preview {
    FrameworkGridView()
}
