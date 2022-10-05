import SwiftUI

struct ContentView: View {
    @State var mass = 0.00
    @State var velocity = 0.00
    @State var x1 = 0.00
    @State var y1 = 0.00
    @State var y2 = 0.00
    @State var x2 = 0.00
    @State var r1 = 0.00
    @State var r2 = 0.00
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
            .padding()
            
            
            
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
            HStack {
                Text("y =")
                Text(String((y2-y1)/(x2-x1)))
                if (y1 - (y2-y1)/(x2-x1)*x1)<0{
                    Text("x ")
                }
                else{
                    Text("x +")
                }
                Text(String(y1 - (y2-y1)/(x2-x1)*x1))
            }
            .padding()
        }
        VStack{
            Text("Rt of Parallel Circuit Calculator")
                .font(.title3)
            HStack {
                Text("R1")
                TextField("Quantity 1", value: $r1, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                Text("R2")
                TextField("Quantity 2", value:$r2, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                Text("Rt")
                Text(String(1/(1/r1+1/r2)))
                
            }
        }
    }
}
