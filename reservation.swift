//
//  reservation.swift
//  event
//
//  Created by Lina on 26/06/1443 AH.
//

import SwiftUI

struct reservation: View {
    @State private var value = 0
       let step = 1
       let range = 1...50
    @State var stepperValue: Int = 0
    @State var selected = false
    let Dates = ["11", "12", "13"]
    let Time = ["11:00", "16:00", "18:00"]
    let people = ["1-3", "4-6", "7-10"]
       @State public var buttonSelected: Int?
    @State public var buttonSelected2: Int?
    @State public var buttonSelected3: Int?
    
    var body: some View {
        

       
        NavigationView{
           
            VStack{
                
                GroupBox {
                    DisclosureGroup("Menu 1") {
                        Text("Item 1")
                        Text("Item 2")
                        Text("Item 3")
                    }
                }
                
                Text("Number of Guests")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 35.0)
                    .frame(maxWidth: .infinity , alignment: .leading)
                
                
                
                Stepper(value: $value,
                              in: range,
                              step: step) {
                    Text("\(value)" ).font(.title2).fontWeight(.bold).foregroundColor( Color(red: 0.11372549019607843, green: 0.21176470588235294, blue: 0.11372549019607843) )}.padding(.horizontal, 50).padding(.trailing, 80.0)
                
         
                Text("Date")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 35.0)
                    .frame(maxWidth: .infinity , alignment: .leading)
                HStack(){
                    ForEach(0..<Dates.count) { button in
                        Button(action: {
                            self.buttonSelected = button
                        }) {
                            Text("\(self.Dates[button]) June").frame(width: 55.0, height: 80.0)
                                .foregroundColor(.white)
                                .background(self.buttonSelected == button ? Color(red: 0.11372549019607843, green: 0.21176470588235294, blue: 0.11372549019607843) : Color(red: 0.5686274509803921, green: 0.6627450980392157, blue: 0.5686274509803921, opacity: 0.421))
                                
                        }
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    }
                  
                }.padding(.leading, 35.0).frame(maxWidth: .infinity , alignment: .leading)
                
                Text("Time")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 35.0)
                    .frame(maxWidth: .infinity , alignment: .leading)
                HStack(){
                    ForEach(0..<Time.count) { button in
                        Button(action: {
                            self.buttonSelected2 = button
                        }) {
                            Text("\(self.Time[button])").frame(width: 71.0, height: 34.0)
                                .foregroundColor(.white)
                                .background(self.buttonSelected2 == button ? Color(red: 0.11372549019607843, green: 0.21176470588235294, blue: 0.11372549019607843) : Color(red: 0.5686274509803921, green: 0.6627450980392157, blue: 0.5686274509803921, opacity: 0.421))
                                
                        }
                        .cornerRadius(9)
                    }
                  
                }.padding(.leading, 35.0).frame(maxWidth: .infinity , alignment: .leading)
                
                
 
                
               
  
                        NavigationLink(destination:ALL()){
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 15).fill(Color(red: 0.777, green: 0.497, blue: 0.388))
                                    .frame(width: .infinity, height: 34)
                                Text("Continue").foregroundColor(Color(red: 0.1411764705882353, green: 0.19215686274509805, blue: 0.1411764705882353))
                            
                            }.padding(.top, 100.0).padding().frame(maxWidth: .infinity)
                        
                            
                    
                
                       
                    
                }
            }
    }
    }
    
}


struct reservation_Previews: PreviewProvider {
    static var previews: some View {
        reservation()
    }
}

