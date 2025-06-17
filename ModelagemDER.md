```mermaid
erDiagram
    Peca ||--o{ Separacao : "separa"
    Peca {
        id INT PK
        tipo VARCHAR
    }
    Separacao {
        id INT PK
        id_peca INT FK
        horario TIMESTAMP
    }

    Dispositivo {
        id INT PK
        nome VARCHAR(255)
        estado BOOLEAN
    }
```
