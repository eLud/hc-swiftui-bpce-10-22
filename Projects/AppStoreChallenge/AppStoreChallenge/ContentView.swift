//
//  ContentView.swift
//  AppStoreChallenge
//
//  Created by Ludovic Ollagnier on 03/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
                .frame(height: 200)
            HStack {
                IconView()
//                    .rotation3DEffect(.degrees(45), axis: (x: 10, y: 5, z: 20))
                VStack(alignment: .leading) {
                    Text("YouTube")
                        .font(.title)
                        .bold()
                    Text("Musique & Vidéos à regarder")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    actionZone
                }
                .frame(height: 90)
            }
            .padding()
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }

    var actionZone: some View {
        HStack(alignment: .center) {
            CapsuleButton(text: "Mettre à jour") {

            }
            Spacer()
            Button {

            } label: {
                Image(systemName: "square.and.arrow.up")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
