//
//  CapsuleButton.swift
//  AppStoreChallenge
//
//  Created by Ludovic Ollagnier on 03/10/2022.
//

import SwiftUI

struct CapsuleButton: View {

    let text: String
    let action: () -> ()

    var body: some View {
        Button {
            action()
        } label: {
            Text(text.uppercased())
                .font(.subheadline)
                .fontWeight(.bold)
                .capsule()
        }
    }
}

struct CapsuleButton_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButton(text: "Mettre à jour") {

        }
    }
}

extension View {

    func capsule(backgroundColor: Color = .blue) -> some View {
        self
        .foregroundColor(.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(Capsule().foregroundColor(backgroundColor))
    }
}
