import SwiftUI

final class FrameworkViewModel: ObservableObject {

    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
    
    let gridItems: [GridItem] = [
        GridItem(.flexible(minimum: 10, maximum: .infinity)),
        GridItem(.flexible(minimum: 10, maximum: .infinity)),
        GridItem(.flexible(minimum: 10, maximum: .infinity)),
    ]
}
