-- V2__REQ_4567_agregar_columna_a_productos.sql
-- Autor: άγγελος
-- Fecha: 2025-11-05
-- Requerimiento: REQ-4567
-- Descripción: Agrega columna 'marca' a la tabla productos

ALTER TABLE public.productos ADD COLUMN marca VARCHAR(100);