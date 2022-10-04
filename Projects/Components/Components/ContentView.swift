//
//  ContentView.swift
//  Components
//
//  Created by Ludovic Ollagnier on 03/10/2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        HStack {
            Image(systemName: "globe")
            Text("Hello, world!")
            header
            Button("Mettre à jour") {

            }
            Button {
                //
            } label: {
                Image(systemName: "plus")
            }
        }
    }

    var header: some View {
        VStack {
            Image(systemName: "plus")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
