Feature: HU-17 Destacar productos con mayores descuentos

Scenario Outline: Asignación automática de etiqueta de realce a oferta agresiva
Given que el sistema procesa una oferta ingresada por el personal administrativo
When el motor verifica que el descuento es <descuento_ingresado> igual o superior al 30%
Then la plataforma adhiere una <etiqueta_destacada> de Super Oferta
And despliega el producto en el banner principal del cliente.

Examples:
      | descuento_ingresado | etiqueta_destacada |
      | "35%"               | "Super Oferta"     |
      | "50%"               | "Super Oferta"     |

Scenario Outline: Exclusión de etiqueta destacada por descuento menor al umbral
Given que un producto perecedero es registrado en el inventario de mermas
When el porcentaje de descuento ingresado por el supermercado es <descuento_bajo> inferior al 30%
Then el sistema guarda el artículo en el catálogo normal
And omite la etiqueta destacada manteniendo el flujo ordinario.

Examples:
      | descuento_bajo |
      | "15%"          |
      | "25%"          |