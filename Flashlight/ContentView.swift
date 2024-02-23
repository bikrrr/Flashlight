//
//  ContentView.swift
//  Flashlight
//
//  Created by Uhl Albert on 2/22/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(Game.self) var game

    var body: some View {
        ZStack {
            PlayingView()
                .disabled(game.state != .playing)

            if game.state == .menu {
                MenuView()
            } else if game.state == .gameOver {
                GameOverView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(Game())
}
