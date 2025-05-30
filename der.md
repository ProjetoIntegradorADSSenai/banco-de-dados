derDiagram
    Peca ||--o{ Separacao : "1-N"
    Peca {
        int id PK
        varchar(255) tipo
    }
    Separacao {
        int id PK
        int id_peca FK
        timestamp horario_inicial
        timestamp horario_fim
    }
