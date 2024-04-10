//
//  ContentView.swift
//  Project6
//
//  Created by Sukanya Yanamala on 08/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 20){
                Text("Hello, world!")
                Text("This is inside a stack")
            }
        VStack {
            Text("First")
            Text("Second")
            Text("Third")
            Text("four")
                .frame(maxWidth: 500, maxHeight: 50)
                    .foregroundStyle(.white)
                    .background(.red.gradient)
        }
        .padding()
        .background(.red)
        
        ZStack {
            Color.blue
                .frame(width: 200, height: 200)
            Text("Hello, world!")
//            Text("This is inside a stack")
        }
        .padding(50)
        .ignoresSafeArea()
        
        Button("Delete selection", action: executeDelete)
        Button("Delete selection", role: .destructive, action: executeDelete)
        
        VStack {
            Button("Button 2") { }
                .buttonStyle(.bordered)
            
            Button {
                print("Button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
            }
        }
    }
    func executeDelete() {
           print("Now deleting…")
       }
    
}

#Preview {
    ContentView()
}
