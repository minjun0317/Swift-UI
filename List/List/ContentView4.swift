
//
//  ContentView.swift
//  List
//
//  Created by 김민준 on 4/21/26.
//

import SwiftUI

// 데이터 모델
struct Ghibli4: Identifiable {
    let name: String
    let id = UUID()
}

// 샘플 데이터
private var ghibli = [
    Ghibli(name: "귀여운가나디"),
    Ghibli(name: "안귀여운가나디"),
    Ghibli(name: "81cm 미피 바디필로우"),
    Ghibli(name: "다음주에 옴"),
    Ghibli(name: "가나디 페이"),
    Ghibli(name: "과소비한 가나디")
]

struct ContentView4: View {

    @State private var multiSelection = Set<UUID>()

    var body: some View {
        NavigationView {
            List(ghibli, selection: $multiSelection) { item in
                Text(item.name)
                    .font(.system(size: 20))
            }
            .navigationTitle("Studio Ghibli")
            .toolbar {
                EditButton()
            }
        }

        Text("\(multiSelection.count) selections")
    }
}

#Preview {
    ContentView4()
}
