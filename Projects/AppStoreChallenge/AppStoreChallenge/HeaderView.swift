//
//  HeaderView.swift
//  AppStoreChallenge
//
//  Created by Ludovic Ollagnier on 03/10/2022.
//

import SwiftUI

struct HeaderView: View {

    let iconSize: Double = 75

    var body: some View {
        ZStack {
            LinearGradient(colors: [.gray,.white],
                           startPoint: .top,
                           endPoint: .bottom)
                .padding(.bottom, 20)
            HStack {
                Image("youtube")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: iconSize, height: iconSize)
                Text("YouTube")
                    .font(.largeTitle)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
