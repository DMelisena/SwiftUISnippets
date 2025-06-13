//
//  shortcut.swift
//  SwiftUISnippets
//
//  Created by Arya Hanif on 10/06/25.
//
import SwiftUI

struct firstPart: View {
    @ObservedObject private var io = Inject.observer
    @State var showingSettingsSheet : Bool = false
    @State var showingFirstSheet : Bool = false
    @State var stateString = "First Section"
    @State var sectionTwoTurnBlue : Bool = false
//
    var body : some View {
        GeometryReader { geometry in
            VStack {
                Text(stateString)
                    .font(.largeTitle)
                    .fontDesign(.rounded)
                    .fontWeight(.bold)
                Spacer()
                Toggle("Turn second layer to blue", isOn: $sectionTwoTurnBlue)
                HStack {
                    Button("test"){
                        showingFirstSheet = true
                    }
                    Button(action: {
                        showingSettingsSheet = true
                    }) {
                        Image(systemName: "gearshape.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.gray.opacity(0.3))
                            .clipShape(Circle())
                    }
                }
                secondPart(turnBlue: $sectionTwoTurnBlue)
                    .frame(width: geometry.size.width, height: geometry.size.height / 2)
            }
            .background(Color.red.ignoresSafeArea())
        }
        .enableInjection()
        .sheet(isPresented: $showingSettingsSheet) {
            Text("This is a sheet")
            Button("Change Main Text"){
                stateString = "Main Text Changed"
            }
            Button("2"){
                showingSettingsSheet = false
            }
        }
    }
}

//#Preview {
//    ContentView()
//}
