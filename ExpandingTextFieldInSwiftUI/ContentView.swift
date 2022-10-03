//
//  ContentView.swift
//  ExpandingTextFieldInSwiftUI
//
//  Created by Ramill Ibragimov on 03.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var input: String = ""
    
    var body: some View {
        VStack {
            Form {
                Section("Feedback") {
                    TextField("Please provide your name", text: $input, axis: .vertical)
                        .lineLimit(3)
                }
            }
            Form {
                Section("Feedback") {
                    TextField("Please provide your name", text: $input, axis: .vertical)
                        .lineLimit(3...5)
                }
            }
            Form {
                Section("Feedback") {
                    TextField("Please provide your name", text: $input, axis: .horizontal)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
