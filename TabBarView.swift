
import SwiftUI

struct TabBarView: View {
    @State var showNewScreen : Bool = false
    @State var search = ""
    @Binding var index: Int
    var titles = ["ALL", "PLACES","FOOD","THEMES"]
    var body: some View {
        
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false){
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
                HStack {
                    ForEach(titles.indices) {id in
                        let title = Text(titles[id]).id(id)
                            .onTapGesture {
                                withAnimation() {
                                    index = id
                                }
                            }
                        if self.index == id {
                            VStack{
                            title.foregroundColor(.black)
                            Capsule().frame(width: 4.0, height: 4.0)
                            }
                        } else {
                            title.foregroundColor(.gray)
                        }
                    }
                    .font(.title3)
                    .padding(.horizontal, 15)
                }
                .padding(.leading, 20)
            }.onChange(of: index) { value in
                withAnimation() {
                    proxy.scrollTo(value, anchor: UnitPoint(x: UnitPoint.leading.x + leftOffset, y: UnitPoint.leading.y))
                }
            }
        }
    }
    private let leftOffset: CGFloat = 0.1
}
struct ContenView: View {
    @State var index = 0
    var body: some View {
        NavigationView{
        VStack {
            TabBarView(index: $index)
            TabView(selection: $index) {
               
                ForEach (0..<5) {
                    
                 
                    pageId in
                 
                   
                        ALL().tag(0)
                           
                        placesPage().tag(1)
                           
                        foodPage().tag(2)
                           
                   
                        themsePage().tag(3)
                           
                   
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }.navigationTitle("Browse")
        }
    }
    }

struct ContenView_Previews: PreviewProvider {
    static var previews: some View {
        ContenView()
    }
}
