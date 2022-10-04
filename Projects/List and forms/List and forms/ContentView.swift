//
//  ContentView.swift
//  List and forms
//
//  Created by Ludovic Ollagnier on 04/10/2022.
//

import SwiftUI

struct ContentView: View {

    @State var data = [Toto(name: "Toto", age: 5, imageName: "leaf"), Toto(name: "Titi", age: 6, imageName: "flame"), Toto(name: "Tata", age: 7, imageName: "pawprint")]

    @State var data2: [Toto] = []
    @State var date = Date()

    @State var selection: Toto = Toto(name: "Tata", age: 7, imageName: "pawprint")

    var body: some View {
        VStack {
            Button("Add") {
                withAnimation {
                    let value = data.remove(at: 2)
                    data2.append(value)
                }
            }
            List {
                Section(header: Text("This is a header")) {
                    ForEach(data) { d in
                        TotoCell(toto: d)
                    }
                    .onDelete { indexSet in
                        data.remove(atOffsets: indexSet)
                    }
                    .onMove { indexSet, index in
                        data.move(fromOffsets: indexSet, toOffset: index)
                    }
                }
                Section(footer: Text("This is a footer")) {
                    ForEach(data2) { d in
                        TotoCell(toto: d)
                    }
                }
                Section {
                    DatePicker("Date", selection: $date)
                    Picker("Choose a toto", selection: $selection) {
                        ForEach(data) { d in
                            Text(d.name)
                                .tag(d)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section {
                    Button("Remove") {
                        withAnimation {
                            let index = 2
                            data.remove(at: index)
                        }
                    }
                }
            }
        }
    }
}

struct Toto: Hashable, Identifiable {
    let name: String
    let age: Int
    let imageName: String

    let id: UUID = UUID()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TotoCell: View {

    let toto: Toto

    var body: some View {
        HStack {
            VStack {
                Text("\(toto.name)")
                Text("\(toto.age)")
                    .font(.caption)
                    .foregroundColor(.blue)
            }
            Spacer()
            Image(systemName: toto.imageName)
        }
    }
}
