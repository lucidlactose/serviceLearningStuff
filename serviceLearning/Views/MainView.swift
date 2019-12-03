//
//  MainView.swift
//  serviceLearning
//
//  Created by Lucid Lactose on 11/26/19.
//  Copyright © 2019 Lucid Lactose. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AddGoalView()) {
                    Text("Goals")
                        .frame(width: 200, height: 200)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .padding(5)
                        .font(UIApplication.shared.buttonBlockText())
                }
                NavigationLink(destination: QuestionView()) {
                    Text("Daily Checkup")
                        .frame(width: 200, height: 200)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .font(UIApplication.shared.buttonBlockText())
                }
            }
//            .alignmentGuide(HorizontalAlignment.leading, computeValue: { d in
//                d[.leading]
//            })
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
