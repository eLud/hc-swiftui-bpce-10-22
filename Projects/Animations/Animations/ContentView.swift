//
//  ContentView.swift
//  Animations
//
//  Created by Ludovic Ollagnier on 03/10/2022.
//

import SwiftUI

struct ContentView: View {

    @State var isLogged = false

    var body: some View {
        if isLogged {
            Circle()
                .foregroundColor(.green)

                .frame(width: 50, height: 50)
                .offset(x: -100)
//                .animation(.easeInOut, value: isLogged)
                .transition(.opacity.animation(.easeInOut))
                .onTapGesture(perform: toggle)

        } else {
            Circle()
                .foregroundColor(.red)
                .frame(width: 50, height: 50)
                .offset(x: 100)
//                .animation(.easeInOut, value: isLogged)
                .transition(.opacity.animation(.easeInOut))
                .onTapGesture(perform: toggle)
        }
    }

    func toggle() {
        isLogged.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
