// ContentView.swift
// La pantalla principal. El mismo código funciona en iPhone y en Apple TV.

import SwiftUI

struct ContentView: View {
    // @State = un dato que puede cambiar. Cuando cambia, la pantalla se redibuja sola.
    @State private var contador = 0
    @State private var indiceColor = 0

    // Lista de colores por los que vamos pasando con el botón "Color".
    private let colores: [Color] = [.blue, .green, .orange, .purple, .pink]

    var body: some View {
        // VStack coloca los elementos uno debajo de otro.
        VStack(spacing: 40) {
            Text("¡Hola!")
                .font(.largeTitle)
                .bold()

            Text(dispositivo)
                .font(.title3)
                .foregroundStyle(.secondary)

            // El número del contador, grande y del color elegido.
            Text("\(contador)")
                .font(.system(size: tamanoNumero, weight: .heavy, design: .rounded))
                .foregroundStyle(colores[indiceColor])
                .contentTransition(.numericText()) // animación al cambiar el número

            // HStack coloca los elementos uno al lado de otro.
            HStack(spacing: 20) {
                Button("+1") {
                    withAnimation { contador += 1 }
                }
                .buttonStyle(.borderedProminent)

                Button("Color") {
                    // Pasa al siguiente color; al llegar al último, vuelve al primero.
                    indiceColor = (indiceColor + 1) % colores.count
                }
                .buttonStyle(.bordered)

                Button("Reiniciar", role: .destructive) {
                    withAnimation { contador = 0 }
                }
                .buttonStyle(.bordered)
            }
        }
        .padding()
    }

    // Texto distinto según el aparato. #if os(tvOS) elige el código al compilar.
    private var dispositivo: String {
        #if os(tvOS)
        return "Estás usando la app en una Apple TV 📺"
        #else
        return "Estás usando la app en un iPhone 📱"
        #endif
    }

    // En la tele el número se ve desde lejos, así que lo hacemos más grande.
    private var tamanoNumero: CGFloat {
        #if os(tvOS)
        return 220
        #else
        return 110
        #endif
    }
}

// Vista previa: permite ver la pantalla en Xcode sin ejecutar la app.
#Preview {
    ContentView()
}
