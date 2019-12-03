//
//  QuestionView.swift
//  serviceLearning
//
//  Created by Lucid Lactose on 11/27/19.
//  Copyright © 2019 Lucid Lactose. All rights reserved.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        /*
         I wanted to do something about the personality test but it seems
         I have to pay a monthly fee.
         So I guess I'm not going with that idea.
         */
        VStack {
            Text("Question placeholder!")
                .padding(120)
                .border(Color.black, width: 4)
            Text("How accompished did do you feel about this?")
                .frame(height: 100)
                .padding(30)
            
            // there are two different ways to show the next question
            // either replace the current question and reset answer
            // or go to a different screen....
            VStack {
                Button(action: {
                    print("what")
                }) {
                    Text("I did accomplished")
                        .frame(width: 250, height: 20)
                        .padding()
                        .border(Color.black, width: 3)
                        .padding(5)
                }
                Button(action: {
                    print("what")
                }) {
                    Text("I did the best I could")
                        .frame(width: 250, height: 20)
                        .padding()
                        .border(Color.black, width: 3)
                        .padding(5)
                }
                Button(action: {
                    print("what")
                }) {
                    Text("I should have tried more")
                        .frame(width: 250, height: 20)
                        .padding()
                        .border(Color.black, width: 3)
                        .padding(5)
                }
                Button(action: {
                    print("what")
                }) {
                    Text("I didn't have time")
                        .frame(width: 250, height: 20)
                        .padding()
                        .border(Color.black, width: 3)
                        .padding(5)
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
