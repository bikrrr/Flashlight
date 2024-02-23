//
//  LightState.swift
//  Flashlight
//
//  Created by Uhl Albert on 2/22/24.
//

import SwiftUI

enum LightState {
    case off, on

    var color: some ShapeStyle {
        switch self {
        case .off:
            Color.red.gradient
        case .on:
            Color.green.gradient
        }
    }
}
