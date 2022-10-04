//
//  Anim.swift
//  Animations
//
//  Created by Ludovic Ollagnier on 03/10/2022.
//

import SwiftUI

struct Anim: View {
    @State var isLogged = false

    var a: Int?

    var size: Double {
        isLogged ? 100 : 50
    }
    var body: some View {
        Circle()
            .foregroundColor(isLogged ? .green : .red)
            .frame(width: size, height: size)
            .offset(x: isLogged ? 100 : -100)
            .transition(.opacity.animation(.easeInOut))
            .onTapGesture(perform: toggle)
            .animation(.easeInOut, value: isLogged)
    }

    func toggle() {
        isLogged.toggle()
    }
}

struct Anim_Previews: PreviewProvider {
    static var previews: some View {
        Anim()
    }
}
