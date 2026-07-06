Feature: HU-01 Visualizar información del supermercado

Scenario Outline: Visualización exitosa de información del supermercado
Given que el consumidor ha ingresado a la <aplicacion>
And el consumidor ha seleccionado un <supermercado> de la lista de resultados
When el consumidor accede a la información del establecimiento
Then la aplicación muestra la <direccion> del supermercado
And la aplicación muestra el <horario> de atención disponible.

Examples:
      | aplicacion  | supermercado       | direccion                       | horario               |
      | "FreshSave" | "Metro San Miguel" | "Av. La Marina 2500, San Miguel"| "08:00 AM - 10:00 PM" |
      | "FreshSave" | "Plaza Vea Sucre"  | "Av. Sucre 450, Pueblo Libre"   | "07:00 AM - 11:00 PM" |






