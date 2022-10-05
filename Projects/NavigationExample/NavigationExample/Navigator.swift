//
//  Navigator.swift
//  NavigationExample
//
//  Created by Ludovic Ollagnier on 05/10/2022.
//

import SwiftUI

struct Navigator: View {

    @State private var url = URL(string: "https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentable")!

    var body: some View {
        VStack {
            Button("Navigate") {
                url = URL(string: "https://developer.apple.com/documentation/swiftui/uihostingcontroller")!
            }
            WebView(url: url)
        }
    }
}

struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        Navigator()
    }
}
