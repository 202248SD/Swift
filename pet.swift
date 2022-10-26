import SwiftUI
struct Triangle: Shape { // Create a custom shape. This is a triangle.
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}
struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.brown)
                .frame(width: 200, height: 300)
            Triangle()  // Creates ear 1
                .fill(.orange)
                .rotationEffect(.degrees(90))
                .frame(width: 40, height: 60)
                .offset(x: 130, y: -130)
            Triangle()  // Creates ear 2
                .fill(.orange)
                .rotationEffect(.degrees(270))
                .frame(width: 40, height: 60)
                .offset(x: -130, y: -130)
            Text("(")
                .font(.largeTitle)
                .rotationEffect(.degrees(90))
                .offset(x:-65, y:140)
            Text("(")
                .font(.largeTitle)
                .rotationEffect(.degrees(90))
                .offset(x:65, y:140)
            Circle()
                .frame(width: 40, height: 50)
                .offset(x: -38, y: -50)
            
            Circle()
                .frame(width: 40, height: 50)
                .offset(x: +38, y: -50)
            
            Circle()
                .fill(.black)
                .frame(width: 15, height: 50)
                .offset(x: -28, y: -50)
            
            Circle()
                .fill(.black)
                .frame(width: 15, height: 50)
                .offset(x: +28, y: -50)
            ZStack{
                
                Text("3")
                    .rotationEffect(.degrees(90))
                    .font(.largeTitle)
            }
        }    
    }
}
