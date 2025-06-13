//
//  secondPart.swift
//  SwiftUISnippets
//
//  Created by Arya Hanif on 12/06/25.
//
import SwiftUI

struct secondPart: View {
    @ObservedObject private var io = Inject.observer
    @Binding var turnBlue : Bool
    var body : some View {
        GeometryReader { geometry in
            VStack {
                Text("dfaks jf sdkfaj jtruydfa ")
                
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(turnBlue ? Color.blue.ignoresSafeArea() : Color.red.ignoresSafeArea())
        }
        .enableInjection()
    }
}

//#Preview {
//    ContentView()
//}
