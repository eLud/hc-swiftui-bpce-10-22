//
//  ImageView.swift
//  NavigationExample
//
//  Created by Ludovic Ollagnier on 05/10/2022.
//

import SwiftUI

struct ImageView: View {
    let imageName: String

    var body: some View {
        Image(systemName: imageName)
            .font(.largeTitle)
            .navigationTitle(imageName.capitalized)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageName: "moon")
    }
}
