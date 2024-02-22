// Created by Vlad Lysenka 22.02.2024 

import SwiftUI

/// Представление встроенных изображений, представляющих рейтинг.
/// При нажатии на изображение оно меняется с незаполненного на заполненное.
///
/// В следующем примере показано представление Ratings с максимальной оценкой в 3 красных сердечка, привязанной к свойству heartRating, и шириной 50.
///
///     RatingsView(
///              maxRating: 3,
///              currentRating: $heartRating,
///              width: 50,
///              symbolEnum:.heart,
///              color: .red)


struct RatingsView: View {
    let maxRating: Int
    @Binding var currentRating: Int
    let width: Int
    let symbol: String?
    let symbolEnum: Symbol?
    let color: Color
    
    var symbolString: String
    
    /// Только два обязательных параметра - это maxRating и привязка к currentRating. Все остальные параметры имеют значения по умолчанию
    /// - Parameters:
    ///   - maxRating: Максимальная оценка по шкале
    ///   - currentRating: Привязка к переменной текущего рейтинга
    ///   - width: Ширина изображения, используемого для рейтинга (По умолчанию - 20)
    ///   - symbol: Строка, представляющая SFImage(По умолчанию - "звезда")
    ///   - color: Цвет изображения (По умолчанию - .yellow)
    ///
    ///
    init(
        maxRating: Int,
        currentRating: Binding<Int>,
        width: Int = 30,
        symbol: String? = "star",
        color: Color = .yellow
    ) {
        self.maxRating = maxRating
        self._currentRating = currentRating
        self.width = width
        self.symbol = symbol
        self.symbolEnum = nil
        self.color = color
        
        symbolString = if let symbolEnum { symbolEnum.rawValue} else { symbol!}
    }
    
    
    /// Три обязательных параметра - это maxRating и привязка к currentRating, а также регистр enum, представляющий выбранный sfSymbol.  Все остальные параметры имеют значения по умолчанию
    /// - Parameters:
    ///   - maxRating: Максимальная оценка по шкале
    ///   - currentRating: Привязка к текущей переменной рейтинга
    ///   - width: Ширина изображения, используемого для рейтинга (по умолчанию - 20)
    ///   - symbolEnum: Выбор SFSymbols
    ///   - color: Цвет изображения ( (По умолчанию - .yellow)
    ///
    ///
    init(
        maxRating: Int,
        currentRating: Binding<Int>,
        width: Int = 30,
        symbolEnum: Symbol?,
        color: Color = .yellow
    ) {
        self.maxRating = maxRating
        self._currentRating = currentRating
        self.width = width
        self.symbol = nil
        self.symbolEnum = symbolEnum
        self.color = color
        
        symbolString = if let symbolEnum { symbolEnum.rawValue} else { symbol!}
    }
    
    var body: some View {
        HStack {
            Image(systemName: "x.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(color)
                .opacity(currentRating == 0 ? 0 : 1)
                .onTapGesture {
                    withAnimation {
                        currentRating = 0
                    }
                }
            ForEach(0..<maxRating, id: \.self) { rating in
                Image(systemName: rating < currentRating ? "\(symbolString).fill" : symbolString)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(color)
                    .onTapGesture {
                        withAnimation {
                            currentRating = rating + 1
                        }
                    }
            }
        }
        .frame(width: CGFloat(maxRating * width))
    }
}



#Preview {
    struct PreviewWapper: View {
        let maxRating = 5
        @State var currentRating = 4
        var body: some View {
            RatingsView(
                maxRating: maxRating,
                currentRating: $currentRating,
                width: 25,
                symbolEnum: .heart,
                color: .red
            )
        }
    }
    return PreviewWapper()
}
