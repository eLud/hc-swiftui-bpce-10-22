//
//  ContentView.swift
//  StepperChallenge
//
//  Created by Ludovic Ollagnier on 04/10/2022.
//

import SwiftUI

class AppData: ObservableObject {

    @Published var stepperValue: Int = 5
}

struct ContentView: View {

    @StateObject private var data = AppData()

    //per app storage (aka UserDefaults)
    @AppStorage("showStepperValue") private var showValue = false
    //per scene storage
//    @SceneStorage("showStepperValue") private var showValue = false

    var body: some View {
        VStack {
            Text("\(data.stepperValue)")
                .font(.largeTitle)
            StepperValue(value: $data.stepperValue, showValue: showValue)
            Button("Show value") {
                showValue.toggle()
            }
            DataView(data: data)
            EnvironmentalDataView()
        }.environmentObject(data)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct DataView: View {

    @ObservedObject var data: AppData
    var body: some View {
        Text("\(data.stepperValue)")
        Button("Modify") {
            data.stepperValue += 1
        }
    }
}

struct EnvironmentalDataView: View {

    @EnvironmentObject var data: AppData
    var body: some View {
        Text("\(data.stepperValue)")
        Button("Modify") {
            data.stepperValue += 1
        }
    }
}
