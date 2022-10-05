//
//  ContentView.swift
//  NavigationExample
//
//  Created by Ludovic Ollagnier on 05/10/2022.
//

import SwiftUI

struct ContentView: View {

    @State private var imageName: String?
    @State private var searchTerms: String = ""

    var images = ["moon", "sun", "cloud"]

    var body: some View {
        List(images, id:\.self) { name in
            NavigationLink(destination: ImageView(imageName: name)) {
                Text("Bring me to the \(name)")
            }
            .navigationTitle("List")
        }.toolbar {
            Button("Add") {

            }
        }
        .searchable(text: $searchTerms)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
