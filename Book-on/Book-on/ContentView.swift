//
//  ContentView.swift
//  Book-on(login)
//
//  Created by 김민준 on 4/11/26.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack() {
            Color.black.ignoresSafeArea(.all)
            
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Image("book-on")
                        .padding(.trailing, 9)
                    Text("Book-on")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.leading, 25)
                Spacer()
            }
            ZStack() {
                Rectangle()
                    .fill(.color)
                    .frame(width: 300, height: 300)
                    .cornerRadius(25)
            
                VStack(spacing: 0) {
                    Image("book-on")
                        .padding(.bottom, 13)
                        .padding(.top, 15)
                    Text("Book-on에 가입하신 걸 환영합니다!")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 54)

                    Text("책 검색, 대출현황, 좌석예약까지\n 한 번에 관리하세요")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 61)

                    Button(action: {
                        print("가나디로 간편로그인")
                    })  {
                        Text("로그인")
                            .frame(width: 220, height: 35)
                            .background(.white)
                            .font(.system(size: 15, weight: .bold))
                            .cornerRadius(10)
                        
                            .padding(.bottom, 9)
                    }
                    Text("처음이신가요?")
                        .foregroundColor(.tq)
                        .font(.system(size: 12))

                    
                }

            }
            .padding(.bottom, 165)
            .padding(.leading, 51)
            .padding(.trailing, 51)
        }
    }
}

#Preview {
    ContentView()
}
