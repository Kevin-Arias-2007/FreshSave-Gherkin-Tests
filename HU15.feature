Feature: HU-15 Publicar producto con descuento

Scenario Outline: Registro y publicación exitosa del lote perecedero
Given que el administrador está autenticado en el panel comercial de supermercados
When completa el formulario con un <producto> con <stock> y <descuento> válidos
And presiona el botón de confirmar publicación del lote
Then el sistema registra el inventario en la base de datos
And despliega el <mensaje_exito> en pantalla.

Examples:
      | producto           | stock | descuento | mensaje_exito                        |
      | "Yogurt Griego 1L" | "15"  | "40%"     | "¡Oferta publicada en el catálogo!"  |
      | "Pollo Brasa kg"   | "8"   | "30%"     | "¡Oferta publicada en el catálogo!"  |


Scenario Outline: Rechazo de publicación por ingreso de campos obligatorios vacíos
Given que el administrador completa los datos del artículo perecedero
When intenta enviar el formulario dejando la <casilla_stock> vacía o en cero
Then el sistema interrumpe el guardado de la información
And genera una <alerta_validacion> visual resaltando el campo en rojo.

Examples:
      | casilla_stock | alerta_validacion                   |
      | "0"           | "El stock debe ser mayor a cero"    |
      | ""            | "El campo de stock es obligatorio"  |
