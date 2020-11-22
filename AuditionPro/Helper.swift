//
//  Helper.swift
//  AuditionPro
//
//  Created by Julio Lopez on 11/21/20.
//

import Foundation


func getCreationDate(for file: URL) -> Date {
    if let attributes = try? FileManager.default.attributesOfItem(atPath: file.path) as [FileAttributeKey: Any],
       let creationDate = attributes[FileAttributeKey.creationDate] as? Date {
        return creationDate
    } else {
        return Date()
    }
}
