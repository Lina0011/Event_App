//
//  SwiftUIView5.swift
//  event
//
//  Created by Lina on 20/06/1443 AH.
//

import SwiftUI

struct SwiftUIView5: View {
    var body: some View {
        VStack{
            Text("Create Account")
            Text("Full Name")
            RoundedRectangle(cornerRadius: 10).fill(.white)
                .frame(width: 361.0, height: 48.0)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Text("Phone Number")
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 361.0, height: 48.0)
            Text("Password")
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 361.0, height: 48.0)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 329.0, height: 42.0)
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 329.0, height: 42.0)
            
        }
       
    }
    }


struct SwiftUIView5_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView5()
    }
}
