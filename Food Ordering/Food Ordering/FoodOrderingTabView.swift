import SwiftUI

struct FoodOrderingTabView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                FoodOrderingListView()
            }
            
            Tab("Profile", systemImage: "person.fill") {
                ProfileView()
            }
            
            Tab("Orders", systemImage: "cart.fill") {
                OrderView()
            }
        }.tint(.brandPrimary)
    }
}

#Preview {
    FoodOrderingTabView()
}
