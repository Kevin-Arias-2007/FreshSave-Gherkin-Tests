Feature: HU-14 Proteger información personal

Scenario Outline: Protección de información personal
Dado que el consumidor registra información personal en la aplicación
Cuando la aplicación almacena los datos del consumidor
Entonces la aplicación protege la información registrada contra accesos no
autorizados

Examples:
      | protocolo_cifrado | algoritmo_seguridad |
      | "TLS 1.3 (HTTPS)" | "SHA-256"           |
