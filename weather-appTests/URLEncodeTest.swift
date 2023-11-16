//
//  URLEncodeTest.swift
//  weather-appTests
//

import XCTest
@testable import weather_app
class URLEncodeTest: XCTestCase {

    func testURLEncoding() {
        guard let url = URL(string: "https:www.google.com/") else {
            XCTAssertTrue(false, "Could not instantiate url")
            return
        }
        var urlRequest = URLRequest(url: url)
        let parameters: Parameters = [
            "UserID": 1,
            "Name": "Elio",
            "Email": "elio@test.com",
            "isDone": true
        ]
        
        do {
            let encoder = URLParameterEncoder()
            try encoder.encode(urlRequest: &urlRequest, with: parameters)
            guard let fullURL = urlRequest.url else {
                XCTAssertTrue(false, "urlRequest url is nil.")
                return
            }

            let expectedURL = "https:www.google.com/?Name=Elio&Email=elio%2540test.com&UserID=1&isDone=true"
            XCTAssertEqual(fullURL.absoluteString.sorted(), expectedURL.sorted())
        }catch {
            
        }
        
        
    }

}
