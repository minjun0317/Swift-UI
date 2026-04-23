//
//  ContentView.swift
//  List
//
//  Created by 김민준 on 4/21/26.
//

import SwiftUI

struct Ghibli: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView3: View {
    private var ghibli = [
        Ghibli(name: "포뇨"),
        Ghibli(name: "소스케"),
        Ghibli(name: "소피아"),
        Ghibli(name: "센"),
        Ghibli(name: "하쿠"),
        Ghibli(name: "토토로")
    ]

    var body: some View {
        List(ghibli) { item in
            Text(item.name)
        }
    }
}
#Preview {
    ContentView3()
}
