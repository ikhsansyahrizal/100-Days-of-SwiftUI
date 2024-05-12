//
//  ContentView.swift
//  WeSplit
//
//  Created by Ikhsan on 10/05/24.
//

import SwiftUI

struct ContentView: View {

    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercantage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [0, 10, 15, 20, 25]
    
    var totalPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercantage)
        
        let tipValue = checkAmount/100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amounPerson = grandTotal / peopleCount
        return amounPerson
    }
    
    var totalTip: Double {
        checkAmount/100 * Double(tipPercantage)
    }
    
    var totalPayment: Double {
        checkAmount + totalTip
    }
    
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount ", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section("How much you want to tip ?") {
                    Picker("Tip percentage", selection: $tipPercantage) {
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                        
//                        ForEach(tipPercentages, id: \.self) {
//                            Text($0, format: .percent)
//                        }
                    }
                    .pickerStyle(.navigationLink)
//                    .pickerStyle(.segmented)
                }
                
                Section("Amount per person") {
                    Text(totalPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }

                Section("Total to pay") {
                    Text(totalPayment, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
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
