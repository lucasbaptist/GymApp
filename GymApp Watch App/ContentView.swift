//
//  ContentView.swift
//  GymApp Watch App
//
//  Created by Lucas Baptista on 23/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var stopWatchManager = StopWatchManager()
    
    var body: some View {
        ZStack{
            
            
            Circle()
                .stroke()
                .frame(width: 185, height: 185)
                .offset(y: -25)
            
            VStack{
                
                Text("Exercício 1")
                    .font(.subheadline)
                    .padding(.bottom)
                Text("Série 1")
                    .font(.title)
                Text(String(format: "%1.1f", stopWatchManager.secondsElapsed))
                    .padding(.top)
                    .monospaced()
    
            }
            .padding(.bottom, 45.0)
            
            VStack {
                
                Spacer()
                
                HStack{
                    
                    Button {
                        stopWatchManager.start()
                    } label: {
                        Image(systemName: "arrow.clockwise")
                            .frame(width: 43, height: 43)
                            .foregroundColor(Color.white)
                            .background(Color.gray)
                            .clipShape(Circle())
                    }
                   
                    .frame(width: 43, height: 35)
                    .buttonStyle(.borderless)
                    
                    Spacer()
                    
                    Button {
                        print("next page")
                    } label: {
                        Image(systemName: "chevron.forward.2")
                            .frame(width: 43, height: 43)
                            .foregroundColor(Color.black)
                            .background(Color.yellow)
                            .clipShape(Circle())
                    }
                    .frame(width: 43, height: 35)
                    .buttonStyle(.borderless)
                    
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 16)
            .ignoresSafeArea(edges: .bottom)
                  
            
        }
        
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("GreyBG"), Color.black]), startPoint: .init(x: 0.5, y: -0.4), endPoint: .bottom)
        )
    }
    
}




#Preview {
    ContentView()
}

