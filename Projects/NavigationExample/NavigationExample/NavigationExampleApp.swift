//
//  NavigationExampleApp.swift
//  NavigationExample
//
//  Created by Ludovic Ollagnier on 05/10/2022.
//

import SwiftUI

@main
struct NavigationExampleApp: App {

    @State private var tabSelected = "List"

    var body: some Scene {
        WindowGroup {
            TabView(selection: $tabSelected) {
                NavigationView {
                    VStack {
                        Button("Nav") {
                            tabSelected = "Sun"
                        }
                        ContentView()
                    }
                }
                .tabItem {
                    Text("List")
                    Image(systemName: "list.bullet")
                }
                .tag("List")
                ImageView(imageName: "sun.min.fill")
                    .tabItem {
                        Text("Sun")
                        Image(systemName: "sun.min")
                    }
                    .tag("Sun")
                ImageView(imageName: "cloud")
                    .tabItem {
                        Image(systemName: "cloud")
                        Text("Cloud")
                    }
                    .tag("Cloud")
                Navigator()
                    .tabItem {
                        Image(systemName: "globe")
                        Text("Web")
                    }
            }
        }
    }
}
