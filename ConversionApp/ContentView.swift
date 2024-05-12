//
//  ContentView.swift
//  ConversionApp
//
//  Created by Ikhsan on 12/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value1: Double = 0
    @State private var type1: String = "mm"
    @State private var type2: String = "mm"
    @FocusState private var isFocus: Bool

    let longFormat = ["mm", "cm", "dm", "m", "dk", "hm", "km"]
    
    private var convertToMm: Double {
        let valueToConvert = value1
        
        switch type1 {
        case "mm":
            return valueToConvert
        case "cm" :
            return valueToConvert * 10
        case "dm" :
            return valueToConvert * 100
        case "m" :
            return valueToConvert * 1000
        case "dk" :
            return valueToConvert * 10000
        case "hm" :
            return valueToConvert * 100000
        case "km" :
            return valueToConvert * 1000000
        default:
            return 0
        }
    }
    
    var result: Double {
        
        switch type2 {
        case "mm":
            return convertToMm
        case "cm" :
            return convertToMm / 10
        case "dm" :
            return convertToMm / 100
        case "m" :
            return convertToMm / 1000
        case "dk" :
            return convertToMm / 10000
        case "hm" :
            return convertToMm / 100000
        case "km" :
            return convertToMm / 1000000
        default:
            return 0
        }
    }
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section() {
                    HStack() {
                        TextField("number to convert", value: $value1, format: .number)
                            .multilineTextAlignment(.leading)
                            .padding()
                            .keyboardType(.numberPad)
                            .focused($isFocus)
                        Picker("Format", selection: $type1) {
                            ForEach(longFormat, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    
                }
                
                Section("Convert to ▼") {
                    HStack() {
                        Text(result, format: .number)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        Picker("Format", selection: $type2) {
                            ForEach(longFormat, id: \.self) {
                                Text($0)
                            }
                        }
                        
                    }
                }
                
                Section {
                    Image("fallout")
                        .resizable()
                        .frame(maxWidth: 360, maxHeight: 450)
                        .aspectRatio(contentMode: .fit)
                    
                }
            }
            .navigationTitle("Conversion App")
            .toolbar {
                if isFocus {
                    Button("Done") {
                        isFocus = false
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
