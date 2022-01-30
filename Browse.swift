//
//  Browse.swift
//  event
//
//  Created by Lina on 23/06/1443 AH.
//



import SwiftUI

struct Browse: View {
    @State var showNewScreen : Bool = false
    @State var search = ""
    @State var index2 = 1
    @State var offset : CGFloat = UIScreen.main.bounds.width
    
   
    @State private var showModel = false
    var width = UIScreen.main.bounds.width

    var body: some View {
        
        NavigationView{
            ScrollView(.vertical, showsIndicators:false){
            VStack{
                HStack{
                    
                    
                
                    TextField("Search", text: self.$search).padding(.vertical,10)
                    .padding(.horizontal)
                    .background(Color.black.opacity(0.07))
                    .cornerRadius(10)
                    .padding(.leading)
                    
                    Button(action:   { showNewScreen.toggle()}){
                        
                        Image(systemName: "slider.horizontal.3").resizable()
                            .foregroundColor(Color(red: 0.152, green: 0.417, blue: 0.31)).padding(.trailing).frame(width: 40.0, height: 25.0)
                       
                    }
                        
                    
                    
                }
                
               
                HStack(spacing:40){
                    Button(action: {
                        self.index2 = 1
                        self.offset = 0
                    }){
                        VStack{
                            Text("ALL").foregroundColor(self.index2 == 1 ? .black : Color.gray.opacity(0.7))
                            Capsule().fill(self.index2 == 1 ? Color.black : Color.clear)
                                .frame(width: 4.0, height: 4.0)
                                
                            
                            
                        }
                     
                    }
                    Button(action: {
                        self.index2 = 2
                        self.offset = -self.width
                        
                    }){
                        VStack{
                            Text("PLACES").foregroundColor(self.index2 == 2 ? .black : Color.gray.opacity(0.7))
                            Capsule().fill(self.index2 == 2 ? Color.black : Color.clear)
                                .frame(width: 4.0, height: 4.0)
                                
                            
                            
                        }
                     
                    }
                    Button(action: {
                        self.index2 = 3
                        self.offset = -self.width-self.width
                    }){
                        VStack{
                            Text("FOOD").foregroundColor(self.index2 == 3 ? .black : Color.gray.opacity(0.7))
                            Capsule().fill(self.index2 == 3 ? Color.black : Color.clear)
                                .frame(width: 4.0, height: 4.0)
                                
                            
                            
                        }
                     
                    }
                    Button(action: {
                        self.index2 = 4
                        self.offset = -self.width-self.width-self.width
                    }){
                        VStack{
                            Text("THEMES").foregroundColor(self.index2 == 4 ? .black : Color.gray.opacity(0.7))
                            Capsule().fill(self.index2 == 4 ? Color.black : Color.clear)
                                .frame(width: 4.0, height: 4.0)
                                
                            
                            
                        }
                     
                    }
                }.padding(.top)
                    .padding(.horizontal)
                    .padding(.bottom, 8)
            
                VStack{
                GeometryReader{g in
                   
                    HStack(spacing : 0){
                        ALL().frame (width: g.frame(in :.global).width)
                       placesPage().frame (width: g.frame (in : .global).width)
                        foodPage().frame (width: g.frame(in : .global).width)
                    themsePage().frame (width: g.frame (in : .global).width)
                        
                    }.offset (x: self.offset)
                        
                
//                        .highPriorityGesture(DragGesture().onEnded({
//                            (value) in
//                            if value.translation.width>50{
//                                print("right")
//                                self.changeView(left: false)
//
//                            }
//                            if -value.translation.width > 50{
//                                print("left")
//                                self.changeView(left: true)
//                            }
//                        }))
                
                }
                }
                
                    
                
            }
               
            
 
        
        
       
            
            }.background(Color.white.edgesIgnoringSafeArea(.all))
                .navigationBarTitle("Browse")

        
            
        }
    }
    func changeView(left : Bool){
        if left {
            if self.index2 != 4{
                self.index2 += 1
            }
        }
        else{
            if self.index2 != 0 {
                self.index2 -= 1
            }
        }
        if self.index2 == 1 {
            self.offset = 0
            
        }
        else if self.index2 == 2{
            self.offset = -self.width
            
        }
        else if self.index2 == 3{
            self.offset = -self.width-self.width
        }
        else{
            self.offset = -self.width-self.width-self.width
        }
        
    }
    
    
}








struct Browse_Previews: PreviewProvider {
    static var previews: some View {
        Browse()
     
    }
}
