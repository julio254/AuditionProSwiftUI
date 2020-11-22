//
//  AuditionProApp.swift
//  AuditionPro
//
//  Created by Julio Lopez on 11/19/20.
//

import SwiftUI

@main
struct AuditionProApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(audioRecorder: AudioRecorder())
        }
    }
}
