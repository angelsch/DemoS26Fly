-- Script de reversión
-- Reversión de la función fn_agregar_cliente
-- Fecha: 2025-11-05
-- Autor: άγγελος
-- Propósito: Elimina la función de inserción de clientes

DROP FUNCTION IF EXISTS fn_agregar_cliente(
  VARCHAR,
  VARCHAR,
  VARCHAR,
  VARCHAR
);