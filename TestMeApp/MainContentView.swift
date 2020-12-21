//
//  MainContentView.swift
//  TestMeApp
//
//  Created by Sergei Posysaev on 21.12.2020.
//

import SwiftUI

struct MainContentView: View {
    
    @State private var valueSlider: Float = 50
    
    private var targetValue: Int = 0
    private var isTestMe = false
    private var isAlert = false
    
    var body: some View {
        VStack {
            Text("Find a value!")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.gray)
                .shadow(color: .black, radius: 10)
                .padding(.top, 40)
                
            Spacer()
            
            Text("Подвинь слайдер, как можно ближе к: \(targetValue)")
                .padding()
            
            HStack {
                Text("0")
                    .padding(.horizontal)
                
                sliderUIKit(color: .blue)
                
                Text("100")
                    .padding(.horizontal)
                
            }
            Button(action: {
                
            }, label: {
                let titleButton = isTestMe ? "Проверь меня" : "Начать заново"
                Text("\(titleButton)")
            })
            .frame(width: 150, height: 40)
            .background(Color.green)
            .foregroundColor(.white)
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black ,lineWidth: 4))
            Spacer()
        }
    }
    
    
    private func randomInt() -> Int {
        Int.random(in: 1...99)
    }
    
    private func computeScore() -> Int {
       // let difference = abs(targetValue - lround(currentValue))
       // return 100 - difference
        return 0
    }
    
}

struct sliderUIKit: UIViewRepresentable {
    
    let color: UIColor
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
       
        
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
