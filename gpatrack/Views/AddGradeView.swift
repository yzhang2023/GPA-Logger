//
//  AddGradeView.swift
//  gpatrack
//
//  Created by David Neal on 9/22/22.
//

import SwiftUI

struct AddGradeView: View {
    @Environment (\.managedObjectContext) var managedObjectContext
    @Environment (\.dismiss) var dismiss
    
    @State private var class_name = ""
    @State private var grade_date = Date.now
    @State private var grade_score = "0"
    @State private var grade_item = ""
    
    var body: some View {
        Form {
            Section {
                TextField ("Class Name", text: $class_name)
                
                TextField ("Grade Item", text: $grade_item)
                
                DatePicker ("Grade Date", selection: $grade_date, displayedComponents: [.date])
                
                TextField ("Grade", text: $grade_score)
                
            }
            Button ("Save") {
                DataController().addGrade(className: class_name, gradeDate: grade_date, gradeItem: grade_item, gradeScore: Int16(grade_score) ?? 0, context: managedObjectContext)
            }        }
        

    }
}

struct AddGradeView_Previews: PreviewProvider {
    static var previews: some View {
        AddGradeView()
    }
}
