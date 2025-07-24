import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    // TODO: Create dummy json server and then replace this base URL
    let baseURL: String = ""
    
    private init() {
        
    }
    
    func getFoodItems(completion: @escaping (Result<[FoodItemModel], APIError>) -> Void) {
        guard let url = URL(string: baseURL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode(FoodItemsResponseModel.self, from: data)
                completion(.success(decodedData.items))
            } catch {
                completion(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
}
