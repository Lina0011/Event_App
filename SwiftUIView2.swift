//
//  SwiftUIView2.swift
//  event
//
//  Created by Lina on 20/06/1443 AH.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        VStack{
        Text("Reminder!")
        Text("Sample Test")
            HStack{
                Text("Delivery Date")
                Text("Sample Day")
                Text("Time")
            }
            HStack{
                RoundedRectangle(cornerRadius: 8)
                RoundedRectangle(cornerRadius: 8)
                RoundedRectangle(cornerRadius: 8)

            }
            HStack{
                RoundedRectangle(cornerRadius: 8)
                RoundedRectangle(cornerRadius: 8)
              

            }
            
        }}
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
