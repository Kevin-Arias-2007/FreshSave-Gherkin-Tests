Feature: HU-08 Visualizar resultados de búsqueda

Scenario Outline: Carga exitosa de resultados
Given el consumidor realiza una busqueda de productos
When el consumidor selecciona la opción <Buscar>
Then la aplicación muestra los resultados en menos de 3 segundos

Examples:
      | Buscar      | tiempo_respuesta |
      | "Lácteos"   | "2.1 segundos"   |
      | "Embutidos" | "1.8 segundos"   |