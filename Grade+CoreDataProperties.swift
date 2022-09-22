//
//  Grade+CoreDataProperties.swift
//  gpatrack
//
//  Created by David Neal on 9/21/22.
//
//

import Foundation
import CoreData


extension Grade {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Grade> {
        return NSFetchRequest<Grade>(entityName: "Grade")
    }

    @NSManaged public var class_name: String?
    @NSManaged public var grade_score: Int16
    @NSManaged public var grade_item: String?
    @NSManaged public var date: Date?

}

extension Grade : Identifiable {

}
