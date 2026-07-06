Feature: HU-19 Facilitar uso de la aplicación

Scenario Outline: Navegación eficiente hacia las ofertas
Dado que el consumidor se encuentra en la pantalla principal de FreshSave
Cuando el consumidor busca un producto en oferta
Entonces la aplicación permite acceder al detalle del producto en un máximo de 3
interacciones.

Examples:
      | producto_oferta | max_interacciones |
      | "Leche Light"   | "3 clics"         |
      | "Jamón de Pavo" | "2 clics"         |