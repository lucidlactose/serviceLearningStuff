//
//  AddGoalView.swift
//  serviceLearning
//
//  Created by Lucid Lactose on 11/27/19.
//  Copyright © 2019 Lucid Lactose. All rights reserved.
//

import SwiftUI
//import Combine
//
//final class UserData: BindableObject  {
//    let didChange = PassthroughSubject<UserData, Never>()
//
//    var text = "" {
//        didSet {
//            didChange.send(self)
//        }
//    }
//
//    init(text: String) {
//        self.text = text
//    }
//}
//
//struct MultilineTextView: UIViewRepresentable {
//    @Binding var text: String
//
//    func makeUIView(context: Context) -> UITextView {
//        let view = UITextView()
//        view.isScrollEnabled = true
//        view.isEditable = true
//        view.isUserInteractionEnabled = true
//        return view
//    }
//
//    func updateUIView(_ uiView: UITextView, context: Context) {
//        uiView.text = text
//    }
//}


struct AddGoalView: View {
    @State var something: String = ""
    var body: some View {
        VStack {
//            MultilineTextView(text: self.temp)
            Text("What do you want")
            TextField("Maybe change this to multiline if needed", text: $something) {
                UIApplication.shared.endEditing()
            }
                .padding(.all)
                .padding(.vertical, 30)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
        }
    }
}

struct AddGoalView_Previews: PreviewProvider {
    static var previews: some View {
        AddGoalView()
    }
}
