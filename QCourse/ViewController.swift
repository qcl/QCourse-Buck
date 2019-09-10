//
//  ViewController.swift
//  QCourse
//
//  Created by Qing-Cheng Li on 2019/9/4.
//  Copyright © 2019 Qing-Cheng Li. All rights reserved.
//

import UIKit
//import AppDevKit
//import Asia
//import Europe
//import Flags

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .orange
/*
        let airportOne = TPE()
        let airportTwo = AMS()
       
        let distance = GeoUtils.distance(inKmBetweenLocation: CLLocation(latitude:airportOne.location.latitude, longitude: airportOne.location.longitude), anotherLocation: CLLocation(latitude: airportTwo.location.latitude, longitude: airportTwo.location.longitude))
        print(distance)

        let airportOneCodeLabel = UILabel.init(frame: CGRect(x: 64, y: 64, width: 100, height: 32))
        let airportOneNameLabel = UILabel.init(frame: CGRect(x: 64, y: 120, width: 400, height: 14))
        let airportOneCityNameLabel = UILabel.init(frame: CGRect(x: 160, y: 70, width: 200, height: 20))
        let airportOneICAOCodeLabel = UILabel.init(frame: CGRect(x: 84, y: 100, width: 100, height:14))
        let airportOneCountryFlagImageView = UIImageView.init(frame: CGRect(x: 64, y: 100, width:20 , height: 14))
        if let airportOneCountryFlagImage = EmojiFlags.flag(forCountriyCode: airportOne.country.iso3166TwoDigitsCode) {
            airportOneCountryFlagImageView.image = airportOneCountryFlagImage
            
        }

        airportOneCodeLabel.text = airportOne.IATACode
        airportOneCodeLabel.font = UIFont.systemFont(ofSize: 32, weight: .heavy)
        airportOneNameLabel.text = airportOne.name
        airportOneNameLabel.font = UIFont.systemFont(ofSize: 12)
        airportOneCityNameLabel.text = airportOne.municipality
        airportOneCityNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .light)
        airportOneICAOCodeLabel.text = airportOne.ICAOCode
        airportOneICAOCodeLabel.font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        
        view.addSubview(airportOneCodeLabel)
        view.addSubview(airportOneNameLabel)
        view.addSubview(airportOneCityNameLabel)
        view.addSubview(airportOneCountryFlagImageView)
        view.addSubview(airportOneICAOCodeLabel)
        
        
        let airportTwoCodeLabel = UILabel.init(frame: CGRect(x: 64, y: 264, width: 100, height: 32))
        let airportTwoNameLabel = UILabel.init(frame: CGRect(x: 64, y: 320, width: 400, height: 14))
        let airportTwoCityNameLabel = UILabel.init(frame: CGRect(x: 160, y: 270, width: 200, height: 20))
        let airportTwoICAOCodeLabel = UILabel.init(frame: CGRect(x: 84, y: 300, width: 100, height:14))
        let airportTwoCountryFlagImageView = UIImageView.init(frame: CGRect(x: 64, y: 300, width:20 , height: 14))
        if let airportTWOCountryFlagImage = EmojiFlags.flag(forCountriyCode: airportTwo.country.iso3166TwoDigitsCode) {
            airportTwoCountryFlagImageView.image = airportTWOCountryFlagImage
            
        }
        
        airportTwoCodeLabel.text = airportTwo.IATACode
        airportTwoCodeLabel.font = UIFont.systemFont(ofSize: 32, weight: .heavy)
        airportTwoNameLabel.text = airportTwo.name
        airportTwoNameLabel.font = UIFont.systemFont(ofSize: 12)
        airportTwoCityNameLabel.text = airportTwo.municipality
        airportTwoCityNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .light)
        airportTwoICAOCodeLabel.text = airportTwo.ICAOCode
        airportTwoICAOCodeLabel.font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        
        view.addSubview(airportTwoCodeLabel)
        view.addSubview(airportTwoNameLabel)
        view.addSubview(airportTwoCityNameLabel)
        view.addSubview(airportTwoCountryFlagImageView)
        view.addSubview(airportTwoICAOCodeLabel)
        
        let distanceLabel = UILabel.init(frame: CGRect(x: 62, y: 180, width: 300, height: 32))
        if let distanceStr = ADKGetThousandSeparatorNumberString(Int(distance)) {
            distanceLabel.text = "\(distanceStr) km"
        }
        distanceLabel.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        
        view.addSubview(distanceLabel)
        */
    }

}

