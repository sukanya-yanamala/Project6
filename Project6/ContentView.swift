//
//  ContentView.swift
//  Project6
//
//  Created by Sukanya Yanamala on 08/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    var body: some View {
        HStack(spacing: 20){
            Text("Hello, world!")
        }
            var countries = ["France", "Germany", "Spain", "UK", "Ukraine", "US"]
            var correctAnswer = Int.random(in: 0...4)
            
        VStack(spacing: 30) {
            Text("Tap the flag of")
            Text(countries[correctAnswer])
        }
            ForEach(0..<3) { number in
                Button {
                } label: {
                    Image(countries[number])
                }
            
        }
        
        VStack {
            Text("First")
            Text("Second")
                .frame(maxWidth: 10, maxHeight: 10)
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
            
            Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)

        }
        
            Button("showingAlert") {
                showingAlert = true
            }
            .alert("important message", isPresented: $showingAlert) {
                Button("OK") { }
                Button("Delete", role: .destructive) { }
                Button("Cancel", role: .cancel) { }
            }
        
        
    }
    func executeDelete() {
           print("Now deleting…")
       }
    
}

#Preview {
    ContentView()
}
