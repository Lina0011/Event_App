//
//  SwiftUIView4.swift
//  event
//
//  Created by Lina on 20/06/1443 AH.
//

import SwiftUI

struct SwiftUIView4: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10).fill(.white)
                .frame(width: 323.0, height: 333.0)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            VStack{
                Image(systemName: "checkmark.circle.fill").resizable().frame(width: 60, height: 60)
                Text("Success")
                    .font(.largeTitle)
                Text(" Your Sample Day have been"
)
                Text(" Confirmed!"
)
                ZStack{
               
                RoundedRectangle(cornerRadius: 13).fill(Color(red: 0.777, green: 0.497, blue: 0.388))
                    .frame(width: 114.0, height: 42.0)
                    Text("Done")}
              
            }
        }
            
    }
}

struct SwiftUIView4_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView4()
    }
}
