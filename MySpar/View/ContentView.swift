// Created by Vlad Lysenka 02.02.2024

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 2)) {
                ForEach(Product.samples, id: \.self) { product in
                    NavigationLink { ProductDetail(product: product) } label: { LabelView() }
                }
                
                ForEach(1...3, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 170, height: 170)
                }
            }
        }
    }
    
    @ViewBuilder private func LabelView() -> some View {
        VStack {
            Image(.tea)
                .resizable()
                .scaledToFit()
                .frame(width: 170, height: 170)
        }
    }
}

#Preview {
    ContentView()
}
