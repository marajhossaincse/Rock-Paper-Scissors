//
//  HomeViews.swift
//  RockPaperScissors
//
//  Created by Maraj Hossain on 8/30/23.
//

import SwiftUI

struct HomeView: View {
    var optionList: [String] = ["Rock", "Paper", "Scissors"]

    @State var systemPick: String
    @State var result: Bool

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .navigationTitle("Rock-Paper-Scissors")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
//            HomeView()
        }
    }
}
