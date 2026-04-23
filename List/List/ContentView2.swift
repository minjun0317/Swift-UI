//
//  ContentView.swift
//  List
//
//  Created by 김민준 on 4/21/26.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        List(0..<10) {
            Text("\($0)")
        }
    }
}

#Preview {
    ContentView2()
}
