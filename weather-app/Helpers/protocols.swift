//
//  protocols.swift
//  weather-app
//

import Foundation


protocol WeatherDetailDelegate {
    func didTapNextDays()
}


protocol CityDelegate {
    func didAddNewCities(cities: [City])
}
