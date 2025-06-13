//
//  thirdPart.swift
//  SwiftUISnippets
//
//  Created by Arya Hanif on 13/06/25.
//

import SwiftUI

struct thirdPart: View {
    @ObservedObject private var io = Inject.observer
    var body : some View {
        GeometryReader { geometry in
            VStack {
                Text("dfaks jf sdkfaj jtruydfa ")
                
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.red)
        }
        .enableInjection()
    }
}
