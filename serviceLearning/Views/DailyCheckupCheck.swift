//
//  DailyCheckupCheck.swift
//  serviceLearning
//
//  Created by Lucid Lactose on 11/27/19.
//  Copyright © 2019 Lucid Lactose. All rights reserved.
//

import SwiftUI

struct DailyCheckupCheck: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Daily Checkup!")
                    .padding()
                    .font(UIApplication.shared.checkupText())
                Text("Ready?")
                    .padding(12)
                    .font(UIApplication.shared.bodyText())
                
                Spacer()
                    .frame(height: 100)
                
                HStack {
                    NavigationLink(destination: QuestionView()) {
                        Image("checkmark")
                           .resizable()
                           .frame(width: 50, height: 50)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                        .frame(width: 100)
                    
                    NavigationLink(destination: MainView()) {
                        Image("redx")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                // substitute this with the check yes or no
    //            Image("luffy_watercolor")
            }
        }
    }
}

struct DailyCheckupCheck_Previews: PreviewProvider {
    static var previews: some View {
        DailyCheckupCheck()
    }
}
