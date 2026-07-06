Feature: HU-02 Recibir notificaciones de ofertas cercanas

Scenario Outline: Recepción exitosa de alerta push por proximidad
Given que el consumidor tiene la aplicación activa en segundo plano
And el consumidor ha permitido el acceso a su ubicación
When la aplicación detecta una <nueva_oferta> en un supermercado en un <radio> de 5 kilómetros
Then la aplicación envía una <notificacion_push> al consumidor.

Examples:
      | radio    | nueva_oferta                   | notificacion_push                                 |
      | "3.5 km" | "Leche Gloria 30% Descuento"   | "¡Oferta cerca! Leche Gloria en Metro San Miguel" |
      | "1.2 km" | "Filete de Atún 40% Descuento" | "¡Oferta cerca! Atún Campomar en Plaza Vea Sucre" |


Scenario Outline: Permiso de ubicación denegado 
Given que el consumidor tiene activadas las <notificaciones>
And el consumidor ha denegado el <acceso a su ubicación>
When la aplicación detecta una <nueva oferta> en un supermercado en un <radio de 5 kilómetros>
Then la aplicación envía una <notificación> al consumidor.

Examples:
      | permisos_localizacion | aviso_flotante                                                |
      | "GPS_DENEGADO"        | "FreshSave requiere acceso a tu GPS para alertarte de ofertas"|
