//
//  PayPage.swift
//  EventApp
//
//  Created by Arwa on 23/06/1443 AH.
//
import SwiftUI

struct PayPage: View {
    @State var ShowSheet = false

    var body: some View {
       
        ZStack{
             
            Button(action: { ShowSheet.toggle()
           
            }
                   , label: {
                Text("Pay")
                    .font(.title)
            })
                
                .sheet(isPresented: $ShowSheet, content:{
                    Text("Hello There!!!!!")
                }
                   
                )
        }
    
        
        
    }
    }


struct PayPage_Previews: PreviewProvider {
    static var previews: some View {
        PayPage()
    }
}
