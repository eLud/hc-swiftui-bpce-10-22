//
//  ImageButton.swift
//  StepperChallenge
//
//  Created by Ludovic Ollagnier on 04/10/2022.
//

import SwiftUI

struct ImageButton: View {

    var systemImageName: String? = nil
    var assetName: String? = nil
    var action: () -> ()

    var body: some View {
        Button(action: action) {
            if let systemImageName {
                Image(systemName: systemImageName)
                    .frame(width: 30, height: 30)
            } else if let assetName {
                Image(assetName)
                    .frame(width: 30, height: 30)
            } else {
                Image(systemName: "poweroff")
                    .frame(width: 30, height: 30)
            }
        }
        .buttonStyle(.plain)
    }
}

struct ImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageButton(systemImageName: "poweron") {
            
        }
    }
}
