//
//  Bundle-AudioPlayer.swift
//  Flashlight
//
//  Created by Uhl Albert on 2/23/24.
//

import AVFoundation

extension Bundle {
    func audioPlayer(for filename: String, volume: Double = 1.0) -> AVAudioPlayer {
        guard let audioURL = url(forResource: filename, withExtension: nil) else {
            fatalError("Can't find \(filename) in app bundle")
        }

        guard let player = try? AVAudioPlayer(contentsOf: audioURL) else {
            fatalError("Failed to load \(filename) into audio player.")
        }

        player.volume = Float(volume)
        player.prepareToPlay()

        return player
    }
}
