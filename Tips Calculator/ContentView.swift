//
//  ContentView.swift
//  Tips Calculator
//
//  Created by Shinjan Patra on 24/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent = 15.0
    var body: some View {
        ZStack {
            Image("money_aesthetic")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                HStack {
                    Image(systemName: "dollarsign.circle.fill")
                        .imageScale(.large)
                        .foregroundColor(.brown)
                        .font(.title)
                    Text("Tip Calculator")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                HStack {
                    Text("Rs")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    TextField("Amount" ,text: $total)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                HStack{
                    Slider(value: $tipPercent, in: 1...99, step: 1.0)
                    Text("\(Int(tipPercent))")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Text("%")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                   
                }
                if let totalNumber = Double(total){
                    Text("Tip Amount: Rs\(totalNumber * tipPercent/100, specifier: "%0.2f")")
                        .fontWeight(.bold)
                    .foregroundColor(.white)
                }else {
                    Text("Please enter a numeric input")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
