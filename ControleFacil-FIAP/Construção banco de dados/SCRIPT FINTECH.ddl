-- Gerado por Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   em:        2022-05-23 22:40:25 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_usuario (
    em_usuario VARCHAR2(30 CHAR) NOT NULL,
    sn_usuario VARCHAR2(30) NOT NULL,
    nm_usuario VARCHAR2(30 CHAR) NOT NULL,
    gn_usuario VARCHAR2(30 CHAR)
);

ALTER TABLE t_usuario ADD CONSTRAINT t_usuario_pk PRIMARY KEY ( em_usuario );

CREATE TABLE t_usuario_gastos (
    ct_gasto             VARCHAR2(30 CHAR) NOT NULL,
    dt_gasto             DATE NOT NULL,
    hr_gasto             DATE NOT NULL,
    ds_gasto             VARCHAR2(60 CHAR),
    t_usuario_em_usuario VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE t_usuario_gastos ADD CONSTRAINT t_usuario_gastos_pk PRIMARY KEY ( t_usuario_em_usuario );

CREATE TABLE t_usuario_inv (
    nm_aplicacao         VARCHAR2(30 CHAR) NOT NULL,
    tp_investimento      VARCHAR2(30 CHAR) NOT NULL,
    nm_inst_fin          VARCHAR2(30 CHAR) NOT NULL,
    vl_aplicacao         NUMBER(10, 2) NOT NULL,
    dt_investimento      DATE NOT NULL,
    dt_vencimento        DATE,
    t_usuario_em_usuario VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE t_usuario_inv ADD CONSTRAINT t_usuario_inv_tp_pk PRIMARY KEY ( nm_aplicacao );

ALTER TABLE t_usuario_inv ADD CONSTRAINT t_usuario_invest_pk UNIQUE ( nm_aplicacao );

CREATE TABLE t_usuario_obj_fin (
    nm_objetivo          VARCHAR2(30) NOT NULL,
    ds_objetivo          VARCHAR2(30 CHAR),
    dt_objetivo          DATE NOT NULL,
    vl_objetivo          NUMBER(10, 2) NOT NULL,
    t_usuario_em_usuario VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE t_usuario_obj_fin ADD CONSTRAINT t_usuario_obj_fin_pk PRIMARY KEY ( nm_objetivo,
                                                                                t_usuario_em_usuario );

CREATE TABLE t_usuario_receb (
    ds_recebido          VARCHAR2(30 CHAR) NOT NULL,
    vl_recebido          NUMBER(10, 2) NOT NULL,
    dt_recebido          DATE NOT NULL,
    t_usuario_em_usuario VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE t_usuario_receb ADD CONSTRAINT t_usuario_receb_pk PRIMARY KEY ( ds_recebido,
                                                                            t_usuario_em_usuario );

ALTER TABLE t_usuario_gastos
    ADD CONSTRAINT t_usuario_gastos_t_usuario_fk FOREIGN KEY ( t_usuario_em_usuario )
        REFERENCES t_usuario ( em_usuario );

ALTER TABLE t_usuario_inv
    ADD CONSTRAINT t_usuario_inv_t_usuario_fk FOREIGN KEY ( t_usuario_em_usuario )
        REFERENCES t_usuario ( em_usuario );

ALTER TABLE t_usuario_obj_fin
    ADD CONSTRAINT t_usuario_obj_fin_t_usuario_fk FOREIGN KEY ( t_usuario_em_usuario )
        REFERENCES t_usuario ( em_usuario );

ALTER TABLE t_usuario_receb
    ADD CONSTRAINT t_usuario_receb_t_usuario_fk FOREIGN KEY ( t_usuario_em_usuario )
        REFERENCES t_usuario ( em_usuario );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                             10
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
