//
//  Counter.swift
//  IOSGameHw01
//
//  Created by Joker on 2021/3/5.
//

import Foundation

struct Counter {
    var score: Int
    var finalscore: Int
    mutating func GetStart() -> Void {
        self.finalscore = self.score
        self.score = 0
    }
    mutating func TF(TrueAns: String, MyAns: String) -> Void {
        if TrueAns == MyAns {
            self.score = self.score + 10
        }
    }
    func ScoreClass(MyScore: Int) -> String {
        if MyScore < 40 {
            return "爛成這樣 國小沒畢業?"
        }
        else if 39 < MyScore && MyScore < 60 {
            return "趕快去讀書了拉 還滑手機!"
        }
        else if 59 < MyScore && MyScore < 80 {
            return "還行 一般人水平~"
        }
        else if 79 < MyScore && MyScore < 100 {
            return "差一點就滿分了 再接再厲!"
        }
        else {
            return "恭喜滿分!!!"
        }
    }
}

var MyScore = Counter(score: 0, finalscore: 0)
