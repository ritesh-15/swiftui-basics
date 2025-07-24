import SwiftUI

struct FoodOrderingListView: View {
    var body: some View {
        NavigationView {
            List(MockData.FoodItemModels) {foodItem in
                FoodItemCell(foodItem: foodItem)
            }.navigationTitle("Home")
        }
    }
}

#Preview {
    FoodOrderingListView()
}
