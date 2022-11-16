import SwiftUI
//Feed cat WIP
struct ContentView: View {
    @State var CatBodyWidth = 1000.00 // Must be floating number
    @State var animateBall = false
    var body: some View {
        VStack{
            ZStack {
                Image("kitchen")
                Image("Cat_Body (1)")
                    .resizable()
                    .offset(x: -CatBodyWidth/25-10, y:30)
                    .frame(width: CatBodyWidth, height: 640)
                
                ZStack {
                    Image("Cat_Head")
                        .resizable()
                        .offset(x:-CatBodyWidth/25-15 ,y: 30)
                    Image("Cat mouth")
                        .offset(x: 18, y: -95)
                    Image("cat nose")
                        .offset(x: 18, y: -115)
                    Image("Cat_Tail (1)")
                        .resizable()
                        .offset(x:-30, y:10)
                    Image("Cat_Legs")
                        .resizable()
                        .offset(x:-45,y:40)
                    Circle()
                        .fill(.black)
                        .frame(width: 40, height: 500)
                        .offset(x: -20, y: -150)
                    Circle()
                        .fill(.black)
                        .frame(width: 40, height: 500)
                        .offset(x: 60, y: -140)
                    Circle()
                        .fill(.white)
                        .frame(width: 15, height: 500)
                        .offset(x: -10, y: -150)
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 15, height: 500)
                        .offset(x: 50, y: -142)
                }
                HStack{
                    Button("Feed Cat"){
                        CatBodyWidth+=40
                }
                    .padding()
                    .background(Color(red: 1, green: 0.7, blue:0.2))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .offset(x:200,y:300)
                    Image("catfood")
                        .offset(x:-100,y:300)
                    HStack{
                        Image("ball")
                            .offset(x:30, y:300)
                        Button("Throw") {
                            CatBodyWidth -= 20
                        }
                        .padding()
                        .background(Color(red: 1, green: 0.7, blue: 0.2))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .offset(x:50,y:300)
                    }
                }
            }
        }
    }
}

// Original cat came from: https://pixabay.com/illustrations/cat-feline-little-cat-kawaii-5160456/ 
// Using under Pixabay license.
