//
//  ContentView.swift
//  Ganadi
//
//  Created by 김민준 on 4/22/26.
//

import SwiftUI
struct ContentView2: View {
    var body: some View {
        ZStack() {
            Color.black.ignoresSafeArea()
            
            VStack(spacing:0) {
                Image("ganadi")
                    .foregroundStyle(.tint)
                    .padding(.bottom, 170)
            }
            
            VStack {
                Text("Crying")
                    .foregroundStyle(.white)
                    .font(.system(size: 30, weight: .thin))
                    .frame(width: 200, height: 50)
                    .background(.darkgray)
                    .cornerRadius(30)
                    .shadow(color: .white.opacity(0.5), radius: 10, x: 0, y: 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.darkgray, lineWidth: 1)
                    )
            }
            .padding(.top, 240)
        }
    }
}

#Preview {
    ContentView2()
}
