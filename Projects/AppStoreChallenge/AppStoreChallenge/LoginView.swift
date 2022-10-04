//
//  LoginView.swift
//  AppStoreChallenge
//
//  Created by Ludovic Ollagnier on 03/10/2022.
//

import SwiftUI

struct LoginView: View {

    @State private var isLogged = false

    var body: some View {
        if isLogged {
            Text("Vue logged in")
        } else {
            VStack {
                TextField("username", text: .constant(""))
                TextField("password", text: .constant(""))
                Button("log in") {
                    isLogged.toggle()
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(10)) {
                        isLogged.toggle()
                    }
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
