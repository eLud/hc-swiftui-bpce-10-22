//
//  StepperValue.swift
//  StepperChallenge
//
//  Created by Ludovic Ollagnier on 04/10/2022.
//

import SwiftUI

struct StepperValue: View {

    @Binding var value: Int
    var showValue: Bool = false

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            if showValue {
                Text("\(value)")
                    .bold()
                    .offset(y: -8)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(Capsule()
                        .foregroundColor(value <= 0 ? .red : .green)
                    )
                    .offset(y: 25)
                    .transition(.scale(scale: 0, anchor: .bottom)
                        .animation(.easeInOut))
            }
            HStack {
                ImageButton(systemImageName: "minus") {
                    value -= 1
                }
                Divider()
                    .padding(.vertical, 4)
                ImageButton(systemImageName: "plus") {
                    value += 1
                }
            }
            .padding(.horizontal)
            .frame(height: 44)
            .background(backColor)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1))
        }
    }

    var backColor: Color {
        colorScheme == .light ? .white : .black
    }
}

struct StepperValue_Previews: PreviewProvider {
    @State static var value = 0
    static var previews: some View {
        StepperValue(value: $value, showValue: true)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
