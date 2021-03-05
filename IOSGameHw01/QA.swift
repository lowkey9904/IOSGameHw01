//
//  QA.swift
//  IOSGameHw01
//
//  Created by Joker on 2021/3/3.
//

import Foundation


struct QandA {
    var Question: String
    var QType: String
    var Answer: String
    var Choose: Array<String>
    var num: Int
}

var MyQuestion = [
    QandA(Question: "四分五裂", QType: "射一地名", Answer: "九份", Choose: ["頭城", "九份", "南港"], num:1),
    QandA(Question: "寶島小吃", QType: "射一字", Answer: "飴", Choose: ["蝕", "怠", "飴"], num:2),
    QandA(Question: "器官買賣", QType: "射一成語", Answer: "一心一意", Choose: ["一心一意", "歸心似箭", "肝膽相照"], num:3),
    QandA(Question: "海岸", QType: "射一地名", Answer: "汐止", Choose: ["港墘", "汐止", "北投"], num:4),
    QandA(Question: "巧婦", QType: "射一字", Answer: "糯", Choose: ["妙", "糠", "糯"], num:5),
    QandA(Question: "萬世太平", QType: "射一地名", Answer: "永和", Choose: ["中和", "永和", "新營"], num:6),
    QandA(Question: "開張營業", QType: "射一地名", Answer: "新店", Choose: ["三重", "新莊", "新店"], num:7),
    QandA(Question: "綠豆是哪裡人", QType: "射一地名", Answer: "嘉義", Choose: ["彰化", "台南", "嘉義"], num:8),
    QandA(Question: "少一本書", QType: "射一成語", Answer: "缺一不可", Choose: ["缺一不可", "殊途同歸", "翁山蘇姬"], num:9),
    QandA(Question: "氣球", QType: "射一成語", Answer: "不翼而飛", Choose: ["不翼而飛", "比翼連理", "私飽中囊"], num:10),
    QandA(Question: "啦啦隊罰站", QType: "射一地點", Answer: "加油站", Choose: ["籃球場", "電影院", "加油站"], num:11),
    QandA(Question: "他走了", QType: "射一品牌", Answer: "IKEA", Choose: ["NIKE", "IKEA", "MUJI"], num:12),
    QandA(Question: "囉哩八唆", QType: "射一字", Answer: "夠", Choose: ["夠", "咱", "語"], num:13),
    QandA(Question: "六十天", QType: "射一字", Answer: "朋", Choose: ["朝", "朋", "昱"], num:14),
    QandA(Question: "鴨子開計程車", QType: "射一蔬果", Answer: "小黃瓜", Choose: ["南瓜", "小黃瓜", "地瓜"], num:15),
    QandA(Question: "死羊", QType: "射一成語", Answer: "揚眉吐氣", Choose: ["洋洋灑灑", "羔羊跪乳", "揚眉吐氣"], num:16)]
    
