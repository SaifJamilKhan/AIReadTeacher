//
//  ContentView.swift
//  AiLiteracyTeacher
//
//  Created by Saif Khan on 2023-05-01.
//

import SwiftUI


struct ContentView: View {
 
    @State var showReadingView: Bool = false
    
    var body: some View {
        VStack {
            if showReadingView {
               ReadingView()
           } else {
               VStack {
                   Image("BoyWalking")
                   Text("Create a story about a space girl in ")
                       .padding()
                   Text("Space girl is brave funny and smart ")
                       .padding()
                   Button("Create") {
                        self.showReadingView = true
                   }
               }
           }
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
