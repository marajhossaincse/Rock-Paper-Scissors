//
//  HomeViews.swift
//  RockPaperScissors
//
//  Created by Maraj Hossain on 8/30/23.
//

import SwiftUI

struct HomeView: View {
    var optionList: [String] = [
        "Rock 🪨",
        "Paper 📄",
        "Scissors ✂️"
    ]

    @State var systemPick: String
    @State var result: Bool = .random()

    var body: some View {
        VStack {
            Text("Choose your option:")
                .font(.system(.headline, weight: .semibold))
                .padding(.horizontal)

            UserPickerView(optionList: optionList)
                .padding(.horizontal)

//            Spacer()

            Button {
                result.toggle()
            } label: {
                ZStack {
                    Circle()
                        .foregroundColor(.red)
                        .frame(width: 100, height: 100) // Adjust the size as needed
                    Text("P L A Y !")
                        .font(.system(.callout, weight: .bold))
                        .foregroundColor(.white)
                }
            }

            Spacer()
        }
        .padding(.vertical, 15)
        .navigationTitle("Rock-Paper-Scissors")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView(
                optionList: ["item 1", "item 2", "item 3"],
                systemPick: "",
                result: true
            )
        }
    }
}
