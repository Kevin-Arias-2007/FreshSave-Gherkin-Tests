Feature: HU-13 Acceder a la plataforma

Scenario Outline: Servicio temporalmente no disponible
Dado que el consumidor intenta acceder a FreshSave
Cuando la aplicación presenta una interrupción del servicio
Entonces la aplicación muestra un mensaje informando la indisponibilidad temporal.

Examples:
      | uptime_mensual |
      | "99.9%"        |

Scenario Outline: Servicio temporalmente no disponible
    Dado que el consumidor intenta acceder a FreshSave
    Cuando la aplicación presenta una interrupción del servicio
    Then la aplicación muestra un <mensaje_indisponibilidad> informando la indisponibilidad temporal.
    
Examples:
      | mensaje_indisponibilidad                                     |
      | "Servicio temporalmente no disponible. Inténtelo más tarde." |
