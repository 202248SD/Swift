import SwiftUI

struct ContentView: View {
    @State var mass = 0.00
    @State var velocity = 0.00
    @State var momentum = 0.00
    @State var x1 = 0.00
    @State var y1 = 0.00
    @State var y2 = 0.00
    @State var x2 = 0.00
    @State var m = 0.00
    var body: some View {
        VStack{
            Text("Physics & Maths Calculator")
                .padding()
                .font(.title)
            Text("Momentum Calculator")
                .font(.title3)
            
            HStack {
                Text("Mass")
                TextField("Quantity 1", value: $mass, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                Text("Velocity")
                TextField("Quantity 2", value:$velocity, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                Text("Momentum")
                Text(String(mass*velocity))
                
            }
            Text("Linear formula Calculator")
                .font(.title3)
            HStack {
                Text("(")
                TextField("x1", value: $x1, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                TextField("y1", value:$y1, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                Text(")")
            }
            HStack {
                Text("(")
                TextField("x2", value: $x2, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                TextField("y2", value:$y2, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                Text(")")
            }
            m = (y2-y1)/(x2-x1)
            
                
        }
        
    }
}
