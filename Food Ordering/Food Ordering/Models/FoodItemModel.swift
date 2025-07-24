import Foundation

struct FoodItemModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct FoodItemsResponseModel: Decodable {
    let items: [FoodItemModel]
}

struct MockData {
    
    static let sampleFoodItemModel = FoodItemModel(id: 0001,
                                                   name: "Test FoodItemModel",
                                                   description: "This is the description for my FoodItemModel. It's yummy.",
                                                   price: 9.99,
                                                   imageURL: "",
                                                   calories: 99,
                                                   protein: 99,
                                                   carbs: 99)
    
    static let FoodItemModels       = [sampleFoodItemModel, sampleFoodItemModel, sampleFoodItemModel, sampleFoodItemModel]
    
    static let orderItemOne     = FoodItemModel(id: 0001,
                                                name: "Test FoodItemModel One",
                                                description: "This is the description for my FoodItemModel. It's yummy.",
                                                price: 9.99,
                                                imageURL: "",
                                                calories: 99,
                                                protein: 99,
                                                carbs: 99)
    
    static let orderItemTwo     = FoodItemModel(id: 0002,
                                                name: "Test FoodItemModel Two",
                                                description: "This is the description for my FoodItemModel. It's yummy.",
                                                price: 9.99,
                                                imageURL: "",
                                                calories: 99,
                                                protein: 99,
                                                carbs: 99)
    
    static let orderItemThree   = FoodItemModel(id: 0003,
                                                name: "Test FoodItemModel Three",
                                                description: "This is the description for my FoodItemModel. It's yummy.",
                                                price: 9.99,
                                                imageURL: "",
                                                calories: 99,
                                                protein: 99,
                                                carbs: 99)
    
    static let orderItems       = [orderItemOne, orderItemTwo, orderItemThree]
}
