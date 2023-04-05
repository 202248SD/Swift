import SwiftUI

struct ContentView: View {
    @State var d = 0
    var body: some View {
        VStack {
            Text("Denary To Binary Converter")
                .padding()
                .font(.title)
            HStack{
                HStack {
                    Text("Denary")
                    TextField("Quantity 1", value: $d, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.blue, width: 4)
                        .keyboardType(.decimalPad)
                    Text(String(d, radix:2))
                    Text("(Binary)")
                }
            }
        }
    }
}
