//
//  DayWeatherCell.swift
//  WeatherGift
//
//  Created by David Yépez on 3/24/19.
//  Copyright © 2019 David Yepez. All rights reserved.
//

import UIKit

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    DateFormatter.dateFormat = "EEEE"
    return DateFormatter
}()

class DayWeatherCell: UITableViewCell {
    @IBOutlet weak var dayCellIcon: UIImageView!
    @IBOutlet weak var dayCellWeekday: UILabel!
    @IBOutlet weak var dayCellMaxTemp: UILabel!
    @IBOutlet weak var dayCellMinTemp: UILabel!
    @IBOutlet weak var dayCellSummary: UITextView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

  }

    func update(with dailyForecast: WeatherDetail.DailyForcast, timeZone: String) {
        dayCellIcon.image = UIImage(named: dailyForecast.dailyIcon)
        dayCellSummary.text = dailyForecast.dailySummary
        dayCellMaxTemp.text = String(format: "%2.f", dailyForecast.dailyMaxTemp
        dayCellMinTemp.text = String(format: "%2.f", dailyForecast.dailyMinTemp + "°"
        
         let dateString = dailyForecast.dailyDate.format(timeZone: timeZone, dateFormatter: dateFormatter)
            
        dayCellWeekday.text = "dateString"
    }
    
    
    
}