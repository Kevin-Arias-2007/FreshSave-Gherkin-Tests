Feature: HU-03 Ordenar supermercados por cercanía

Scenario Outline: Ordenar supermercados por cercanía 
Given que el consumidor visualiza una <lista de supermercados>.
When el consumidor selecciona la opción <Supermercados más cercanos>
Then la aplicación muestra los <supermercados> desde el más cercano hasta el más lejano.

Examples:
      | lista_de_supermercados  | opcion_ordenar                | supermercados                           |
      | "Tottus, Metro"         | "Supermercados más cercanos"  | "1. Tottus (0.8 km), 2. Metro (0.2 km)" |

