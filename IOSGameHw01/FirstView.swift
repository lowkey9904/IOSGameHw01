//
//  SwiftUIView.swift
//  IOSGameHw01
//
//  Created by Joker on 2021/3/5.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("猜燈謎")
                    .font(.custom("DFXingKai-W5-WINP-BF", size: 90))
                    .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.3))
                    .bold()
                    .offset(x: 0, y: -275)
                NavigationLink(destination: ContentView()){
                    Text("點我開始")
                        .font(.custom("DFXingKai-W5-WINP-BF", size: 40))
                        .frame(width: 300, height: 50)
                        .background(Image("fw"))
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }
            }
            .background(Image("bg").resizable()
            .frame(width: 800, height: 1200, alignment: .center))
        }.onAppear{
            MyQuestion.shuffle()
            MyScore.GetStart()
            MyQuestion[0].Choose.shuffle()
        }
        .preferredColorScheme(.dark)
                
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
