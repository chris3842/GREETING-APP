//
//  ContentView.swift
//  GREETING APP
//
//  Created by christopher robles quezada on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var greeting = ""
    var body: some View {
        VStack {
            Text("Greeting App")
                .font(.title).bold()
                .padding()
            TextField ("Enter name", text:$name)
                .font(.title).bold()
                .multilineTextAlignment(.center)
            HStack{
                Button("Say Hello") {
                    greeting = "Hello, " + name
                    
                }
                
                .frame(width: 100)
                Button("Say Goodbye") {
                    greeting = "Goodbye, " + name
                    
                }
                
                .frame(width: 150)
                Button("Say Aloha") {
                    greeting = "Aloha, " + name
                    
                }
                .frame(width: 100)
                
            }
            .font(.title)
            Text(greeting)
                .font(.title).bold()
                .padding()
            Spacer()
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

