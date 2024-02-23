// Created by Vlad Lysenka 02.02.2024

import SwiftUI


struct ProductDetail: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var rating: Double = 4.0
    @State private var activeSegmented: String = "Кг"
    @State private var quantity: Int = 1
    
    let pricePerItem: Double = 55.9
    
    let product: Product
    
    
    var total: Double {
        return Double(quantity) * pricePerItem
    }
    
    
    var body: some View {
        ScrollView(.vertical) {
            
            VStack {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                    
                    Text("Цена по карте")
                        .foregroundColor(.white)
                    
                }
                .frame(width: 150, height: 30)
                .foregroundColor(.green)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(.tea)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text(product.reviews.rating.specifier())
                    
                    Divider()
                    
                    Text("\(product.reviews.count) Отзывов")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                        
                        Text("-5 %")
                            .foregroundColor(.white)
                    }
                    .frame(width: 80, height: 30)
                    .foregroundColor(.red)
                }
                
                Text("\(product.name)  \(product.wieght) г")
                    .font(.system(size: 26, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Image(.spain)
                        .resizable()
                        .cornerRadius(30)
                        .frame(width: 30, height: 30)
                    
                    Text("Испания, Риоха")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical)
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Описание")
                        .fontWeight(.semibold)
                    
                    Text(product.description)
                        .font(.subheadline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Основные характеристики")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                    
                    СharacteristicsСell(title: "Производство", subtitle: product.сharacteristics.production)
                    СharacteristicsСell(title: "Энергетическая ценность, ккал/100 г", subtitle: product.сharacteristics.energyValue)
                    СharacteristicsСell(title: "Жиры/100 г", subtitle: product.сharacteristics.fats.specifier(for: 1) + " г")
                    СharacteristicsСell(title: "Белки/100 г", subtitle: product.сharacteristics.protein.specifier(for: 1) + " г")
                    СharacteristicsСell(title: "Углеводы/100 г", subtitle: product.сharacteristics.carbohydrates.specifier(for: 1) + " г")
                    
                    Button("Все характеристики") {
                        print("Раскрыть")
                    }
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                        .foregroundColor(.green)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
                
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("Отзывы")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Button("Все 152") { print("Раскрыть")}
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundColor(.green)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0...10, id: \.self) { _ in
                                Recall()
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
                
                Button {
                    print("Отзыв")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth: 2.5)
                            .foregroundColor(.green)
                            .frame(height: 40)
                        
                        Text("Оставить отзыв")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundColor(.green)
                    }
                }
                .padding(.top)
                
                
                
            }
            .padding()
        }
        .padding(.bottom , 180)
        .overlay(
            ZStack {
                Rectangle()
                    .frame(height: 120)
                    .foregroundColor(.white)
                    .shadow(radius: 3)
                VStack {
                    Picker("", selection: $activeSegmented) {
                        Text("Шт")
                            .tag("Шт")
                        Text("Кг")
                            .tag("Кг")
                    }
                    .pickerStyle(.segmented)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text("55.9")
                                .font(.system(size: 22, weight: .bold, design: .rounded))
                            
                            ZStack {
                                HStack(spacing: 5) {
                                    Text("₽")
                                        .font(.caption2.bold())
                                        .rotationEffect(Angle(degrees: -45))
                                    RoundedRectangle(cornerRadius: 2)
                                        .frame(width: 2, height: 20)
                                    Text("кг")
                                        .font(.caption2.bold())
                                        .rotationEffect(Angle(degrees: -45))
                                }
                                .rotationEffect(Angle(degrees: 45))
                            }
                            
                            Spacer()
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                HStack(spacing: 0) {
                                    Button {
                                        if quantity > 1 {
                                            quantity -= 1
                                        }
                                    } label: {
                                        Image(systemName: "minus")
                                    }
                                    
                                    Spacer()
                                    
                                    VStack {
                                        Text("\(quantity) шт")
                                            .font(.system(size: 14, weight: .bold, design: .rounded))
                                        
                                        Text("\(total, specifier: "%.2f")₽")
                                            .font(.system(size: 12, weight: .light, design: .rounded))
                                        
                                    }
                                    
                                    Spacer()
                                    
                                    Button {
                                        quantity += 1
                                    } label: {
                                        Image(systemName: "plus")
                                    }
                                }
                                .padding(5)
                                .foregroundColor(.white)
                            }
                            .frame(width: 140, height: 35)
                            .foregroundColor(.green)
                            
                        }
                        .padding(.top)
                        ZStack {
                            Rectangle()
                                .frame(width: 30, height: 1)
                                .foregroundColor(.gray)
                            Text("199.0")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                    }
                    
                }
                .padding(.horizontal)
                
            }
                .padding(.bottom , 60)
            , alignment: .bottom)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Button("", systemImage: "arrow.backward") { presentationMode.wrappedValue.dismiss() }
                        .foregroundColor(.green)
                    Spacer()
                }
            }
            
            ToolbarItem {
                HStack(spacing: 20) {
                    Button("", systemImage: "list.bullet.clipboard") { }
                    Button("", systemImage: "square.and.arrow.up") { }
                    Button("", systemImage: "heart") { }
                }
                .foregroundColor(.green)
            }
        }
        .ignoresSafeArea(.container, edges: .bottom)
        .navigationBarBackButtonHidden()
    }
    
    @ViewBuilder func Recall() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .shadow(radius: 1)
            VStack(alignment: .leading, spacing: 5) {
                Text("Александр В.")
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                
                Text("7 мая 2021")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                HStack {
                    ForEach(1...5, id: \.self) { index in
                        Image(systemName: "star.fill")
                            .font(.footnote)
                            .foregroundColor(index <= Int(rating) ? .yellow : .gray)
                    }
                }
                
                Text("Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими")
                    .font(.footnote)
                    .foregroundColor(.black)
                    .padding(.top, 5)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(10)
        }
        .frame(width: 240, height: 150)
        .padding(5)
        .foregroundColor(.white)
    }
    
    @ViewBuilder func СharacteristicsСell(title: String, subtitle: String ) -> some View {
        HStack(alignment: .top) {
            Text(title)
                .font(.system(size: 14, weight: .regular, design: .rounded))
                .frame(width: 150, alignment: .leading)
            
            Spacer()
            
            Text(subtitle)
                .font(.system(size: 12, weight: .light, design: .rounded))

        }
        .font(.subheadline)
    }
    
}

#Preview {
    NavigationView {
        ProductDetail(product: Product.sample)
    }
}
