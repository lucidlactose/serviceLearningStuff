//
//  MyCalendarView.swift
//  serviceLearning
//
//  Created by Lucid Lactose on 12/3/19.
//  Copyright © 2019 Lucid Lactose. All rights reserved.
//

import SwiftUI
//import KVKCalendar

struct MyCalendarView: View {
//    let calendar = CalendarView(frame: CGRect.zero)
    
    @State var singleIsPresented = false
    @State var startIsPresented = false
    @State var multipleIsPresented = false
    @State var deselectedIsPresented = false
    
    var rkManager1 = RKManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0)
    
    var body: some View {
        VStack {
            Button(action: { self.singleIsPresented.toggle() }) {
                Text("Example 1 - Single Date Selection").foregroundColor(.blue)
            }
            .sheet(isPresented: self.$singleIsPresented, content: {
                RKViewController(isPresented: self.$singleIsPresented, rkManager: self.rkManager1)})
            Text(self.getTextFromDate(date: self.rkManager1.selectedDate))
        }
    }
    

    func getTextFromDate(date: Date!) -> String {
           let formatter = DateFormatter()
           formatter.locale = .current
           formatter.dateFormat = "EEEE, MMMM d, yyyy"
           return date == nil ? "" : formatter.string(from: date)
       }
}

struct MyCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        MyCalendarView()
    }
}
