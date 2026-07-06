Feature: HU-16 Actualizar descuentos en tiempo real

Scenario Outline: Sincronización exitosa del nuevo porcentaje de rebaja
Given que el administrador visualiza la lista de ofertas activas de la tienda
When altera el campo con un <nuevo_descuento> y confirma los cambios
Then el backend actualiza la tabla transaccional
And propaga el <precio_actualizado> en las aplicaciones móviles del usuario al instante.

Examples:
      | nuevo_descuento | precio_actualizado |
      | "50%"           | "S/ 5.00"          |
      | "60%"           | "S/ 4.00"          |

Scenario Outline: Fallo de actualización por pérdida de conectividad con la BD Cloud
Given que el administrador está modificando el valor de un descuento en la plataforma
When el sistema pierde comunicación con la infraestructura cloud durante el guardado
Then la operación se revierte al <valor_original> de la oferta
And se notifica un <error_sincronizacion> al usuario administrador.

Examples:
      | valor_original | error_sincronizacion                            |
      | "30%"          | "Error de sincronización. Inténtelo de nuevo."  |
