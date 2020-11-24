//
//  ContentView.swift
//  AuditionPro
//
//  Created by Julio Lopez on 11/19/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    @State private var isShareSheetShowing = false
    
    var body: some View {
        NavigationView {
            VStack {
                RecordingsList(audioRecorder: audioRecorder)
                if audioRecorder.recording == false {
                    Button(action: {print(self.audioRecorder.startRecording())}) {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 40)
                    }
                } else {
                    Button(action: {print(self.audioRecorder.stopRecording())}) {
                        Image(systemName: "stop.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 40)
                    }
                }
            }
            .navigationBarTitle("Audition Pro")
            .navigationBarItems(leading: Button(action: shareButton) {
                Image(systemName: "square.and.arrow.up").font(.title2)
            }, trailing: EditButton())
        }
    }
    
    func shareButton() {
        isShareSheetShowing.toggle()
        
        let url = URL(string: "https://google.com")
        let av = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(audioRecorder: AudioRecorder())
    }
}
