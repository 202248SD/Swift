import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack {
                Image("kitchen")
                Image("Cat_Body (1)")
                    .resizable()
                    .offset(x: -50, y:30)
                
                ZStack {
                    Image("Cat_Head")
                        .resizable()
                        .offset(x:-50, y:35)
                    Image("Cat mouth")
                        .offset(x: 18, y: -95)
                    Image("cat nose")
                        .offset(x: 18, y: -115)
                    Image("Cat_Tail (1)")
                        .resizable()
                        .offset(x:-44, y:30)
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
                    
                    Image("ball")
                        .offset(x:100, y:300)
                }
            }
        }
    }
}

// Original cat came from: https://pixabay.com/illustrations/cat-feline-little-cat-kawaii-5160456/ 
// Using under Pixabay license.
