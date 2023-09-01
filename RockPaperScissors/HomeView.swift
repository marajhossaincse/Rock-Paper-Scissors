//
//  HomeViews.swift
//  RockPaperScissors
//
//  Created by Maraj Hossain on 8/30/23.
//

import SwiftUI

enum Choices: String, CaseIterable {
    case rock = "🪨", paper = "📄", scissors = "✂️"
}

struct HomeView: View {
    @State var computerChoice = Choices.allCases.first!
    @State var gameOutCome = ""

    @State var wins = 0
    @State var round = 0

    @State var showAlert = false
    @State var showComputerChoice = false

    var body: some View {
        GeometryReader { geo in

            VStack {
                // Computer
                VStack {
                    if !showComputerChoice {
                        Text("🤖")
                            .font(.system(size: 100))
                    } else {
                        Text(computerChoice.rawValue)
                            .font(.system(size: 100))
                    }
                }
                .frame(width: geo.size.width, height: geo.size.height / 2)

                // Player
                VStack {
                    Text("Make your selection:")
                        .padding()

                    HStack(spacing: 0) {
                        ForEach(Choices.allCases, id: \.self) { option in

                            Button {
                                // Start round
                                round += 1

                                // Generate computer choice
                                let index = Int.random(in: 0 ... Choices.allCases.count - 1)

                                computerChoice = Choices.allCases[index]
                                showComputerChoice = true

                                // Check if win
                                checkWin(playerChoice: option)

                            } label: {
                                Text(option.rawValue)
                                    .font(.system(size: geo.size.width / CGFloat(Choices.allCases.count)))
                            }
                        }
                    }
                    HStack {
                        Spacer()

                        Text("Wins: \(wins)")
                        Spacer()

                        Text("Rounds: \(round)")
                        Spacer()
                    }
                }
                .frame(width: geo.size.width, height: geo.size.height / 2)
            }
        }
        .alert("You \(gameOutCome)!", isPresented: $showAlert) {
            Button("Play again!", role: .cancel) { showComputerChoice = false }
        }
    }

    func checkWin(playerChoice: Choices) {
        switch playerChoice {
        case .rock:
            if computerChoice == .rock {
                gameOutCome = "draw"
            } else if computerChoice == .scissors {
                gameOutCome = "win"
                wins += 1
            } else {
                gameOutCome = "lose"
            }

        case .paper:
            if computerChoice == .rock {
                gameOutCome = "win"
                wins += 1
            } else if computerChoice == .scissors {
                gameOutCome = "lose"
            } else {
                gameOutCome = "draw"
            }

        case .scissors:
            if computerChoice == .rock {
                gameOutCome = "lose"
            } else if computerChoice == .scissors {
                gameOutCome = "draw"
            } else {
                gameOutCome = "win"
                wins += 1
            }
        }
        showAlert = true
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
    }
}
