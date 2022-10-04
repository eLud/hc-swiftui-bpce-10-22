//
//  IconView.swift
//  AppStoreChallenge
//
//  Created by Ludovic Ollagnier on 03/10/2022.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        Image("youtube")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 70, height: 70)
            .padding(20)
            .overlay(Color.gray, in: RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 0.5))
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IconView()
                .padding()
                .preferredColorScheme(.light)
            IconView()
                .padding()
                .preferredColorScheme(.dark)
        }.previewLayout(.sizeThatFits)
    }
}
