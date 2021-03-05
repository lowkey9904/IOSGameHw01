//
//  ResultScore.swift
//  IOSGameHw01
//
//  Created by Joker on 2021/3/5.
//

import SwiftUI

struct ResultScore: View {
    var body: some View {
        VStack {
            Text("您總共得了" + String(MyScore.finalscore) + "分!")
                .font(.custom("DFXingKai-W5-WINP-BF", size: 40))
                .padding()
            Text(MyScore.ScoreClass(MyScore: MyScore.finalscore))
                .font(.custom("DFXingKai-W5-WINP-BF", size: 30))
        }.foregroundColor(.black)
        .padding()
        .background(Image("bg")
        .resizable()
        .frame(width: 800, height: 1200, alignment: .center))
    }
}

struct ResultScore_Previews: PreviewProvider {
    static var previews: some View {
        ResultScore()
    }
}
