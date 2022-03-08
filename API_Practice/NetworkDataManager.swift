//
//  DataManager.swift
//  API_Practice
//
//  Created by test on 2022/03/08.
//

import Foundation
import Alamofire

class NetworkDataManager {
    
    func getWeatherData(_ vc: ViewController) {
        let apiKey = "ab36e71659d2092e0d03322c38c0a636"
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=\(apiKey)"
        // 요청(Request)
        AF.request(
            urlString,
            method: .get,
            parameters: nil,
            encoding: URLEncoding.default)
        // 응답(Response)
        // WeatherEntity.self: 파라미터 응답값, 메소드 체이닝 기법
            .responseDecodable(of: WeatherEntity.self) { response in
                switch response.result {
                //enum case 문법
                case .success(let response):
                    print(response)
                    // self.currentWeather =  response
                    vc.updateUI(response)
                case .failure(let error):
                    print(error)
                }
            }
    }
}
