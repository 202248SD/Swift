import SwiftUI

struct ContentView: View {
    @State private var itemList = [
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
    ]
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("CONNECT 4")
                }
                HStack {
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                }
                HStack {
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                }
                HStack {
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                }
                HStack {
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                }
                HStack {
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                }
                HStack {
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                    Color.gray
                }
            }
            HStack{
                Button("#1"){
                    
                }
                .background(Color.red)
                Button("#2"){
                    
                }
                .background(Color.red)
                Button("#3"){
                    
                }
                .background(Color.red)
                Button("#4"){
                    
                }
                .background(Color.red)
                Button("#5"){
                    
                }
                .background(Color.red)
                Button("#6"){
                    
                }
                .background(Color.red)
                Button("#7"){
                    
                }
                .background(Color.red)
            }
        }
        
    }
}
