//
//  ImageView.swift
//  NavigationExample
//
//  Created by Ludovic Ollagnier on 05/10/2022.
//

import SwiftUI

struct ImageView: View {
    let imageName: String

    @State private var alertMessage: AlertMessage?

    var body: some View {
        Image(systemName: imageName)
            .font(.largeTitle)
            .navigationTitle(imageName.capitalized)
            .onTapGesture {
                alertMessage = AlertMessage(message: "We are in \(imageName)")
            }
            .alert(item: $alertMessage) { message in
                Alert(title: Text(message.message))
            }
    }
}

struct AlertMessage: Identifiable {
    let message: String

    let id = UUID()
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageName: "moon")
    }
}
