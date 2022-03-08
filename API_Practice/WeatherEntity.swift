//
//  File.swift
//  API_Practice
//
//  Created by test on 2022/03/08.
//

import Foundation

struct WeatherEntity: Decodable {
    
    // 응답데이터를 구조체화해야한다.
    let coord: Coord?
    let weather: [Weather]? // 배열('[')형태로 전달받았음
    let base: String?
    let main: Main?
    let visibility: Int?
    let wind: Wind?
    let clouds: Clouds?
    let dt: Int?
    let sys:Sys?
    let timezone: Int?
    let id: Int?
    let name: String?
    let cod: Int?
}

struct Coord: Decodable {
    let lon: Int?
    let lat: Int?
}

struct Weather: Decodable {
    let id: Int?
    let main: String?
    let description: String?
    let icon: String?
}

struct Main: Decodable {
    let temp: Float?
    let feels_like: Float?
    let temp_min: Float?
    let temp_max: Float?
    let pressure: Float?
    let humidity: Float?
}

struct Wind: Decodable {
    let speed: Float?
    let deg: Float?
    let gust: Float?
}
    

struct Clouds: Decodable {
    let all: Int?
}

struct Sys: Decodable {
    let type: Int?
    let id: Int?
    let country: String?
    let sunrise: Int?
    let sunset: Int?
}
