//
//  ContentView.swift
//  Book-on
//
//  Created by 김민준 on 4/8/26.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack () {
                Color.black.ignoresSafeArea()
                
                VStack (spacing:0) {
                    HStack (spacing:0) {
                        Image ("book-on" )
                            .padding(.trailing, 9)
                        Text ("Book-on" )
                            .foregroundColor (Color.white)
                            .font(.system(size:17, weight: .semibold))
                        Spacer ()
                    }
                    .padding (.leading, 25)
                    Spacer ()
                }
                VStack (spacing:0) {
                    Text("학교 도서관을 더 쉽게 사용하는 방법" )
                        .foregroundColor(.white)
                        .padding (.bottom, 41)
                        .font(.system(size:17,weight: .bold))
                    Text("책 검색, 대출현황, 좌석예약까지\n한 번에 관리하세요")
                        .foregroundColor(.white)
                        .padding(.bottom, 64)
                        .multilineTextAlignment(.center)
                        .font(.system(size:17, weight: .bold))
                    NavigationLink{
                        LoginView()
                    } label: {
                        Text("시작하기")
                            .foregroundColor(.white)
                            .frame (width: 162, height: 32)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke (Color.white, lineWidth: 2)
                            )
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
