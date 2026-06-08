# Proyecto Base - Semana 6: Temas y Navegación (UIDE)

Este es el proyecto base que usamos en la clase de **Programación Móvil (Semana 6)**. La idea es arrancar con una aplicación que ya tenga la estructura de navegación resuelta y pantallas básicas listas, para luego enfocarnos en aprender a configurar temas, el uso de `ThemeData` y cómo cambiar entre modo claro/oscuro de forma dinámica.

Los colores del tema están personalizados con la identidad de la **UIDE** (Azul Marino y Dorado/Amarillo).

## Conceptos que se ven en este proyecto

* **Navegación con GoRouter:** Definimos las rutas de la app en `lib/router/app_router.dart` de forma independiente.
* **Temas con Material 3:** Uso de `ThemeData`, `colorSchemeSeed` y la definición de propiedades personalizadas para componentes específicos (como `appBarTheme` o `elevatedButtonTheme`).
* **Lifting State Up (InheritedWidget):** Implementación de `ThemeScope` en `main.dart` para cambiar el tema globalmente desde cualquier pantalla sin pasar callbacks manualmente por todos lados.
* **El bug de colores hardcodeados (HypoCompass):** Demostración práctica de por qué usar colores fijos (como el amarillo en el AppBar de inicio) rompe la consistencia cuando el usuario cambia a modo oscuro.

## Estructura de archivos

El proyecto está organizado de forma muy sencilla:

* `lib/main.dart`: El punto de entrada. Aquí está el widget principal (`MyApp2`) configurado como `StatefulWidget` para mantener el estado del tema y el `ThemeScope` para compartirlo.
* `lib/router/app_router.dart`: Configuración de GoRouter con las 4 rutas.
* `lib/theme/app_theme.dart`: Los estilos claro y oscuro con los colores institucionales UIDE.
* `lib/screens/`: Carpeta con los esqueletos de las pantallas:
  * `home_screen.dart`: Pantalla principal con botones de navegación y el botón en el AppBar para cambiar el tema.
  * `profile_screen.dart`, `settings_screen.dart`, `detail_screen.dart`: Esqueletos limpios para trabajar en clase.

## Para empezar a correrlo

Solo clona el repositorio, entra a la carpeta y ejecuta:

```bash
flutter pub get
flutter run
```

Cualquier duda la resolvemos en la plenaria de la clase.
