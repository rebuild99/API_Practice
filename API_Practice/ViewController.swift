//
//  ViewController.swift
//  API_Practice
//
//  Created by test on 2022/03/08.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    let label = UILabel()
    
    var currentWeather: WeatherEntity? {
        didSet {
            guard let currentWeather = currentWeather else {
                return
            }
            updateUI(currentWeather)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NetworkDataManager().getWeatherData(self)
    }
    
    func updateUI(_ weatherString: WeatherEntity) {
        print("DEBUG: UpdateUI 호출")
        label.text = weatherString.weather?[0].main
    }
}

