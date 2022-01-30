//
//  SwiftUIView3.swift
//  event
//
//  Created by Lina on 20/06/1443 AH.
//

import SwiftUI

struct SwiftUIView3: View {
    var body: some View {
        ZStack{
         

            RoundedRectangle(cornerRadius: 10).fill(.white)
                .frame(width: 323.0, height: 333.0)
                .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
            
        VStack{
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
            
        }
//        }VisualEffectView(effect: UIBlurEffect(style: .dark))
    }
}

struct SwiftUIView3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView3()
    }
}
}
