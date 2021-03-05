//
//  ContentView.swift
//  IOSGameHw01
//
//  Created by Joker on 2021/3/3.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @Environment(\.presentationMode) var presentation: Binding<PresentationMode>
    @State var nowQIndex: Int = 0
    @State private var showFinishView = false
    var body: some View {
        VStack {
            Text("第" + String(nowQIndex + 1) + "題")
                .font(.custom("DFXingKai-W5-WINP-BF", size: 90))
                .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.3))
                .bold()
                .offset(x: 0, y: -100)

                VStack(alignment: .center){
                        Text(MyQuestion[nowQIndex].Question)
                            .font(.custom("DFXingKai-W5-WINP-BF", size: 60))
                            .bold()
                            .padding()
                        Text(MyQuestion[nowQIndex].QType)
                            .font(.custom("DFXingKai-W5-WINP-BF", size: 50))
                            .bold()
                    Button(action:{
                        let utterance =  AVSpeechUtterance(string: MyQuestion[nowQIndex].Question +  MyQuestion[nowQIndex].QType)
                        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                        utterance.rate = 0.4
                        let synthesizer = AVSpeechSynthesizer()
                        synthesizer.speak(utterance)
                    }){
                        HStack() {
                        Image(systemName: "play")
                        .resizable()
                        .frame(width: 17, height: 20)
                        .foregroundColor(Color(red: 0.9, green: 0.3, blue: 0.2))
                        Text("點我唸題目")
                        .font(.custom("DFXingKai-W5-WINP-BF", size: 30))
                        }
                    }.padding(.top)
                }
                .foregroundColor(Color(red: 0.9, green: 0.3, blue: 0.2))
                .offset(x: 0, y: -60)
            
            VStack(alignment: .center){
                Button(action: {
                    MyScore.TF(TrueAns: MyQuestion[nowQIndex].Answer, MyAns: MyQuestion[nowQIndex].Choose[0])
                    nowQIndex = nowQIndex + 1
                    MyQuestion[nowQIndex].Choose.shuffle()
                    if nowQIndex >= 10 {
                        showFinishView = true
                        MyQuestion.shuffle()
                        MyQuestion[0].Choose.shuffle()
                        MyScore.GetStart()
                        nowQIndex = 0
                    }
                }) {
                    Text(MyQuestion[nowQIndex].Choose[0])
                        .font(.custom("DFXingKai-W5-WINP-BF", size: 40))
                        .frame(width: 300, height: 50)
                        .background(Image("fw"))
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }.padding(.bottom)
                .sheet(isPresented: $showFinishView) {
                    ResultScore()
                }
                Button(action: {
                    MyScore.TF(TrueAns: MyQuestion[nowQIndex].Answer, MyAns: MyQuestion[nowQIndex].Choose[1])
                    nowQIndex = nowQIndex + 1
                    MyQuestion[nowQIndex].Choose.shuffle()
                    if nowQIndex >= 10 {
                        showFinishView = true
                        MyQuestion.shuffle()
                        MyQuestion[0].Choose.shuffle()
                        MyScore.GetStart()
                        nowQIndex = 0
                    }
                }) {
                    Text(MyQuestion[nowQIndex].Choose[1])
                        .font(.custom("DFXingKai-W5-WINP-BF", size: 40))
                        .frame(width: 300, height: 50)
                        .background(Image("fw"))
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }.padding(.bottom)
                .sheet(isPresented: $showFinishView) {
                    ResultScore()
                }
                Button(action: {
                    MyScore.TF(TrueAns: MyQuestion[nowQIndex].Answer, MyAns: MyQuestion[nowQIndex].Choose[2])
                    nowQIndex = nowQIndex + 1
                    MyQuestion[nowQIndex].Choose.shuffle()
                    if nowQIndex >= 10 {
                        showFinishView = true
                        MyQuestion.shuffle()
                        MyQuestion[0].Choose.shuffle()
                        MyScore.GetStart()
                        nowQIndex = 0
                    }
                }) {
                    Text(MyQuestion[nowQIndex].Choose[2])
                        .font(.custom("DFXingKai-W5-WINP-BF", size: 40))
                        .frame(width: 300, height: 50)
                        .background(Image("fw"))
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }.padding(.bottom)
                .sheet(isPresented: $showFinishView) {
                    ResultScore().onAppear{
                        nowQIndex = 0
                        MyQuestion.shuffle()
                        MyQuestion[nowQIndex].Choose.shuffle()
                        MyScore.GetStart()
                    }
                }
//                Text(String(MyScore.score))
//                    .bold()
//                    .foregroundColor(.black)
            }
                

        }.navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            MyQuestion.shuffle()
            MyScore.GetStart()
            MyQuestion[0].Choose.shuffle()
            presentation.wrappedValue.dismiss()}) {
            HStack {
            Image(systemName: "chevron.left")
                .imageScale(.large)
            Text("返回主頁")
                .font(.custom("DFXingKai-W5-WINP-BF", size: 25))
            }.foregroundColor(.red)
        })
        .background(Image("bg").resizable()
        .frame(width: 800, height: 1200, alignment: .center))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
