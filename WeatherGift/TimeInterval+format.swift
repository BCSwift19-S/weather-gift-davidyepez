//
//  TimeInterval+format.swift
//  WeatherGift
//
//  Created by David Yépez on 3/24/19.
//  Copyright © 2019 David Yepez. All rights reserved.
//

import Foundation

extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = date(TimeIntervalSince1970: self)
        DateFormatter.timeZone = timeZone(indentifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString
    }
}
