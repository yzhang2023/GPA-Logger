//
//  Class+CoreDataProperties.swift
//  gpatrack
//
//  Created by David Neal on 9/21/22.
//
//

import Foundation
import CoreData


extension Class {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Class> {
        return NSFetchRequest<Class>(entityName: "Class")
    }

    @NSManaged public var name: String?

}

extension Class : Identifiable {

}
