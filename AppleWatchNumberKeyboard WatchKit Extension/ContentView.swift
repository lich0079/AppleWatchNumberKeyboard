//
//  ContentView.swift
//  AppleWatchNumberKeyboard WatchKit Extension
//
//  Created by Zhang, Frank on 2020/6/7.
//  Copyright © 2020 lich0079. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var input: String = ""
    
    var body: some View {
        
        VStack {
            NavigationLink(destination:         NumberKeyboard(inputfield: $input)) {
                TextField("input", text: $input)
            }
        }

//        Button(action: {
//        }) {
//            Text("2")
//                .font(.footnote).frame(height: 10, alignment: .center)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
