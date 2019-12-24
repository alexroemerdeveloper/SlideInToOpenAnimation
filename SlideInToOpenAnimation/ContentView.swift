//
//  ContentView.swift
//  SlideInToOpenAnimation
//
//  Created by Alexander Römer on 20.12.19.
//  Copyright © 2019 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var moveUo = false
    
    var body: some View {
        ZStack {
            Image("back")
            Text("Slide up to open")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .opacity(moveUo ? 1 : 0)
                .offset(y: moveUo ? 410 : 460)
                .animation(Animation.easeOut(duration: 1.8).repeatCount(50, autoreverses: false).delay(2))
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black)
        .onAppear() {
            self.moveUo.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
