//
//  Extensions.swift
//  AuditionPro
//
//  Created by Julio Lopez on 11/21/20.
//

import Foundation

extension Date {
    func toString(dateFormat format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
