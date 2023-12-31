//
//  CityDetail.swift
//  weather-app
//

import UIKit

struct City: Codable {
    var title: String
    var woeid: Int
    var consolidatedWeather: [Weather]?
    
    enum CodingKeys: String, CodingKey {
        case consolidatedWeather = "consolidated_weather",
             title,
             woeid
    }
}
