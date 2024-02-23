//
//  FlashlightApp.swift
//  Flashlight
//
//  Created by Uhl Albert on 2/22/24.
//

import SwiftUI

@main
struct FlashlightApp: App {
    @State private var game: Game

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(game)
        }
    }

    init() {
        _game = State(initialValue: Game())
    }
}
