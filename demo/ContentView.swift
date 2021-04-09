//
//  ContentView.swift
//  demo
//
//  Created by Brie New on 4/9/21.
//

import SwiftUI



struct GradientText: View {
    let text: Text
    let gradient: LinearGradient
    
    init(text: Text, gradient: LinearGradient? = nil) {
        self.text = text
        self.gradient = gradient ?? LinearGradient(gradient: Gradient(colors: [.pink, .yellow, .pink, .orange]), startPoint: .leading, endPoint: .trailing)
    }
    
    var body: some View {
        text
        .foregroundColor(.clear)
        .overlay(
            gradient
            .mask(text))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            GradientText(text: Text("brie")
                .font(.system(size: 40, weight: .bold, design: .rounded)))

                          Text("is short for ga").font(.system(size: 33)).fontWeight(.thin).foregroundColor(.orange) +
                          Text("brie").font(.system(size: 33)).fontWeight(.bold).foregroundColor(.yellow) +
                          Text("la").font(.system(size: 33)).fontWeight(.thin).foregroundColor(.orange)
        }
    }
}

