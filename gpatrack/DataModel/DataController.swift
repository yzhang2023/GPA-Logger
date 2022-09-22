//
//  DataController.swift
//  gpatrack
//
//  Created by David Neal on 9/22/22.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "ClassData")
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print ("error \(error.localizedDescription)")
            }
            
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print ("saved")
        } catch {
            print ("not saved")
        }
    }
    
    func addClass (name: String, context: NSManagedObjectContext) {
        let newclass = ClassList(context:  context)
        newclass.class_name = name;
        save(context: context)
        
    }
    
    func addGrade(className: String, gradeDate: Date, gradeItem: String, gradeScore: Int16, context: NSManagedObjectContext ) {
        let newgrade = GradeList(context: context)
        newgrade.class_name = className;
        newgrade.grade_date = gradeDate;
        newgrade.grade_item = gradeItem;
        newgrade.grade_score = gradeScore;
        save(context: context)
    }
    
    
    
}
