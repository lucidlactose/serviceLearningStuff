//
//  ContentView.swift
//  serviceLearning
//
//  Created by Lucid Lactose on 11/26/19.
//  Copyright © 2019 Lucid Lactose. All rights reserved.
//

import SwiftUI


extension UIApplication {
    /*
     default
     serif
     rounded
     monospaced
     */
    
    func buttonBlockText() -> Font {
        return Font.system(size: 45.0)
    }
    func checkupText() -> Font {
        return Font.system(size: 50.0)
    }
    func bodyText() -> Font {
        return Font.system(size: 30.0)
    }
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct logInStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .padding(.horizontal, 100)
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
        
    }
}

struct ContentView: View {
    
    var body: some View {
        TabView {

            MainView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Main")
                }
            MyCalendarView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Calendar")
                }
        }
        .font(.headline)
    }
    
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
