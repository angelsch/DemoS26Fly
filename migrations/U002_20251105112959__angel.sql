-- U2__REQ_4567_agregar_columna_a_productos.sql
-- Autor: άγγελος
-- Fecha: 2025-11-05
-- Reversión de: V2__REQ_4567_agregar_columna_a_productos.sql
-- Descripción: Elimina la columna 'marca' de la tabla productos

ALTER TABLE public.productos DROP COLUMN IF EXISTS marca;