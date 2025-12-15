//
//  Date+Extensions.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import Foundation

extension Date {

    static let apodStartDate = Calendar.current.date(from: DateComponents(year: 1995, month: 6, day: 16))!

    static var apodRange: ClosedRange<Date> {
        apodStartDate...Date()
    }

    var isValidAPODDate: Bool {
        self >= Self.apodStartDate && self <= Date()
    }

    var formattedAPODDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: self)
    }
}
