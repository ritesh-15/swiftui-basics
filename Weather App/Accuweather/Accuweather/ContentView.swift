import SwiftUI

class WeatherData: Identifiable {
    var day: String
    var temperature: Int
    var imageName: String

    init(day: String, temperature: Int, imageName: String) {
        self.day = day
        self.temperature = temperature
        self.imageName = imageName
    }
}

struct ContentView: View {

    @State private var theme: String = "light"
    
    private let weatherData: [WeatherData] = [
        WeatherData(day: "Mon", temperature: 45, imageName: "cloud.sun.fill"),
        WeatherData(day: "Tue", temperature: 55, imageName: "sun.dust.fill"),
        WeatherData(day: "Wed", temperature: 75, imageName: "wind"),
        WeatherData(day: "Thur", temperature: 45, imageName: "snow"),
        WeatherData(day: "Fri", temperature: 85, imageName: "sun.rain.fill"),
    ]
    
    private func isNightMode() -> Bool {
        return if theme == "light" {
            false
        } else {
            true
        }
    }
    
    var body: some View {
        ZStack {
            BackgroundView(theme: $theme)

            VStack {
                Text("Mumbai, IN")
                    .font(.system(size: 34))
                    .foregroundStyle(.white)
                    .bold()
                
                WeatherView(imageName: "cloud.sun.fill", temperature: 75).padding(.bottom)
                
                HStack(alignment: .center, spacing: 18) {
                    ForEach(self.weatherData) { day in
                        WeatherDayView(dayOfWeek: day.day, imageName: day.imageName, temperature: day.temperature)
                    }
                }
                
                Spacer()
                
                Button("Change date and time") {
                    if theme == "light" {
                        theme = "dark"
                    } else {
                        theme = "light"
                    }
                }
                .padding(.all)
                .background()
                .clipShape(.rect)
                
                Spacer()
            }.padding(.all)
        }
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek.uppercased())
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 36, height: 36)
            
            Text("\(temperature)°c")
                .font(.system(size: 22))
                .foregroundStyle(.white)
                .bold()
        }
    }
}

struct BackgroundView: View {
    @Binding var theme: String
    
    private func isNightMode() -> Bool {
        return if theme == "light" {
            false
        } else {
            true
        }
    }

    var body: some View {
        LinearGradient(colors: [isNightMode() ? .black : .blue, isNightMode() ? .gray : .white],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct WeatherView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°c")
                .font(.system(size: 78))
                .foregroundStyle(.white)
                .bold()
        }
    }
}

#Preview {
    ContentView()
}
