//
//  NumberKeyboard.swift
//  geoconverterwatch Extension
//
//  Created by Zhang, Frank on 2020/6/13.
//  Copyright © 2020 lich. All rights reserved.
//

import SwiftUI

struct NumberKeyboard: View {
    
    @Binding var inputfield: String
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
            VStack {   
                Text(self.inputfield)
                HStack {
                    Button(action: {
                         self.inputfield.append("7")
                    }) {
                        Text("7")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                    Button(action: {
                        self.inputfield.append("8")
                    }) {
                        Text("8")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                    Button(action: {
                        self.inputfield.append("9")
                    }) {
                        Text("9")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                }
                
                HStack {
                    Button(action: {
                        self.inputfield.append("4")
                    }) {
                        Text("4")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                    Button(action: {
                       self.inputfield.append("5")
                    }) {
                        Text("5")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                    Button(action: {
                       self.inputfield.append("6")
                    }) {
                        Text("6")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                }
                
                HStack {
                    Button(action: {
                        self.inputfield.append("1")
                    }) {
                        Text("1")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                    Button(action: {
                       self.inputfield.append("2")
                    }) {
                        Text("2")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                    Button(action: {
                       self.inputfield.append("3")
                    }) {
                        Text("3")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                }
                
                HStack {
                    Button(action: {
                       self.inputfield.append("0")
                    }) {
                        Text("0")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                    Button(action: {
                        if !self.inputfield.contains(".") {
                            self.inputfield.append(".")
                        }
                    }) {
                        Text(".")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                    Button(action: {
                        if self.inputfield.count > 0 {
                            self.inputfield.removeLast()
                        }
                    }) {
                        Image(systemName: "delete.left")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                }
                HStack {
                    
                    Spacer()
                    Button(action: {
                        if !self.inputfield.starts(with: "-") {
                            self.inputfield.insert("-", at: self.inputfield.startIndex)
                        }
                    }) {
                        Text("-")
                    }.frame(width: geometry.size.width / 4, height: geometry.size.height/4)
                    Spacer()
                }
            }
            }
        }
    }
}

//struct NumberKeyboard_Previews: PreviewProvider {
//    static var previews: some View {
//        NumberKeyboard()
//    }
//}
