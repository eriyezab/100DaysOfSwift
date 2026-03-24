//
//  ContentView.swift
//  WeSplit
//
//  Created by Eriyeza Buwembo on 3/23/26.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    let tipPercentages = [10,15,18,20,22,25]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "CAD"))
                        .keyboardType(.decimalPad)
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                Section ("How much do you want to tip?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section ("Total Amount") {
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "CAD"))
                }
                
            }
            .navigationTitle("WeSplit")

        }
    }
}

// Practice using View, forms, stacks, etc.,
////    @State private var tapCount = 0
//    @State private var name = ""
//    let students = ["Harry", "Hermione", "Ron", "Luna", "Draco"]
//    
//    @State private var selectedStudent = "Harry"
//    var body: some View {
////        VStack {
////            Image(systemName: "globe")
////                .imageScale(.large)
////                .foregroundStyle(.tint)
////            Text("Hello, world!")
////        }
////        .padding()
////        NavigationStack {
////            Form {
////                Section {
////                    Text("Testing new form")
////                }
//////                Section {
//////                    Text("Testing new form")
//////                    Text("Testing new form")
//////                }
////            }
////            .navigationTitle("Apex")
////            .navigationBarTitleDisplayMode(.inline)
////        }
////        Button("tap Count: \(tapCount)") {
////            self.tapCount += 1
////        }
////        Form {
////            TextField("Enter your name", text: $name)
////            Text("Your name is \(name)")
////            Text("Hello, world!")
////        }
//        NavigationStack {
//            Section {
//                Form {
//                    Picker("Select your student", selection: $selectedStudent) {
//                        ForEach(students, id: \.self) {
//                            Text($0)
//                        }
//                    }
//                }
//                Form {
//                    TextField("Enter your name", text: $name)
//                    Text("Your name is \(name)")
//                    Text("Hello, world!")
//                }
//            }
//        }

#Preview {
    ContentView()
}
