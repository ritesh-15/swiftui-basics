import SwiftUI

struct FoodItemCell: View {
    let foodItem: FoodItemModel
    
    var body: some View {
        HStack(alignment: .center) {
            Image("asian-flnak-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .clipShape(.buttonBorder)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(foodItem.name)
                    .font(.system(size: 18, weight: .medium))
                
                Text("Rs \(foodItem.price, specifier: "%.2f")")
                    .font(.system(size: 14, weight: .light))
                    .foregroundStyle(.secondary)
            }.padding(.leading, 6)
        }
    }
}

#Preview {
    FoodItemCell(foodItem: MockData.sampleFoodItemModel)
}
