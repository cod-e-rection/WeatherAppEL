//
//  CityListTableViewCell.swift
//  weather-app
//

import UIKit

class CityListTableViewCell: UITableViewCell {
    static var reuseIdentifier: String {
        return "CityListTableViewCell"
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        textLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /**
     set city detail
     - parameters:
        - city: CityDetail , object returned from server
     */
    func setCityDetail(city: City) {
        textLabel?.text = city.title
    }
    
}
