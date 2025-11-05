-- Función: fn_agregar_cliente
-- Propósito: Inserta un nuevo cliente en la tabla 'clientes'
-- Fecha: 2025-11-05
-- Autor: άγγελος
-- Validación: Verifica unicidad de email y estado permitido

CREATE OR REPLACE FUNCTION fn_agregar_cliente(
  p_nombre         VARCHAR,
  p_email          VARCHAR,
  p_telefono       VARCHAR DEFAULT NULL,
  p_estado         VARCHAR DEFAULT 'activo'
)
RETURNS VOID AS $$
BEGIN
  -- Validar estado permitido
  IF p_estado NOT IN ('activo', 'inactivo') THEN
    RAISE EXCEPTION 'Estado inválido: %, debe ser "activo" o "inactivo"', p_estado;
  END IF;

  -- Insertar cliente
  INSERT INTO clientes (nombre, email, telefono, estado)
  VALUES (p_nombre, p_email, p_telefono, p_estado);
END;
$$ LANGUAGE plpgsql;