// PracticaTVApp.swift
// Punto de entrada de la app: es lo primero que se ejecuta al abrirla.

import SwiftUI

@main // Le dice a Swift: "la app empieza aquí".
struct PracticaTVApp: App {
    var body: some Scene {
        // WindowGroup es la ventana principal de la app.
        // Dentro ponemos la primera pantalla que verá el usuario.
        WindowGroup {
            ContentView()
        }
    }
}
