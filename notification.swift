//
//  notification.swift
//  event
//
//  Created by Lina on 24/06/1443 AH.
//

import SwiftUI

struct notification: View {
    @Binding var show : Bool
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            VStack(spacing: 25)
                {
                Text("Reminder!")
                    .font(.largeTitle)
                Text("Sample Test")
                    .font(.title2)
                HStack{
                    Text("Delivery Date")
                        .font(.title3)
                    Text("Sample Day")
                        .font(.title3)
                    Text("Time")
                        .font(.title3)
                }
                HStack{
                    ZStack{
                    RoundedRectangle(cornerRadius: 9).fill(.white)
                        .frame(width: 79.0, height: 34.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                        Text("12 June")
                    }
                    
                    ZStack{
                    
                    RoundedRectangle(cornerRadius: 9).fill(.white)
                        .frame(width: 79.0, height: 34.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("02 June")}
                    
                    ZStack{
                    RoundedRectangle(cornerRadius: 9).fill(.white)
                        .frame(width: 79.0, height: 34.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("12 pm")}

                }
                HStack{
                    ZStack{
                    RoundedRectangle(cornerRadius: 13).fill(Color(red: 0.777, green: 0.497, blue: 0.388, opacity: 0.48))
                        .frame(width: 114.0, height: 42.0)
                        Text("Dismiss")}
                    ZStack{
                   
                    RoundedRectangle(cornerRadius: 13).fill(Color(red: 0.777, green: 0.497, blue: 0.388))
                        .frame(width: 114.0, height: 42.0)
                        Text("Confirm")}
                  

                }
                
                }.padding(.vertical,25).padding(.horizontal,30).cornerRadius(25)
            Button(action: {
                withAnimation{
                    show.toggle()
                }
            }){
                Image(systemName: "xmark.circle")
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.primary.opacity(0.35))
        }
//    struct BlurView : UIViewRepresentable{
//        func makeUIView(context: Context->UIVisualEffectView){
//
//        }
//        func updateUIView(_ uiView: UIViewType, context: Context) {
//
//        }
//    }
    }



