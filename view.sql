CREATE OR REPLACE VIEW agregacao AS
                SELECT 
                    p.tipo AS peca_tipo,
                    DATE_FORMAT(
                        CONVERT_TZ(
                            FROM_UNIXTIME(
                                FLOOR(UNIX_TIMESTAMP(s.horario)/(5*60))*(5*60)
                            ),
                            'UTC', 'America/Sao_Paulo'
                        ), 
                        '%Y-%m-%d %H:%i:00'
                    ) AS time_interval,
                    COUNT(*) AS total_separacoes
                FROM 
                    separacao s
                INNER JOIN 
                    peca p ON s.id_peca = p.id
                GROUP BY 
                    p.tipo,
                    time_interval
                ORDER BY 
                    time_interval, p.tipo;
