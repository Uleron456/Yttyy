-- Crea la tabla de estrellas
CREATE TABLE stars (
  star_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  type VARCHAR(50) NOT NULL,        -- Ejemplo: "enana amarilla", "gigante roja"
  mass FLOAT,                       -- Masa en unidades solares
  radius FLOAT,                     -- Radio en unidades solares
  distance_from_earth FLOAT         -- Distancia a la Tierra en años luz (opcional)
);

-- Crea la tabla de planetas
CREATE TABLE planets (
  planet_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  type VARCHAR(50) NOT NULL,        -- Ejemplo: "tellúrico", "gaseoso"
  mass FLOAT,                       -- Masa en unidades terrestres o comparables
  radius FLOAT,                     -- Radio en unidades terrestres
  orbital_period FLOAT,             -- Periodo orbital en días o años
  star_id INT NOT NULL,             -- Estrella a la que orbita
  FOREIGN KEY (star_id) REFERENCES stars(star_id)
);

-- Crea la tabla de lunas
CREATE TABLE moons (
  moon_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  planet_id INT NOT NULL,           -- Planeta al que orbita
  FOREIGN KEY (planet_id) REFERENCES planets(planet_id)
);

-- Crea la tabla de asteroides
CREATE TABLE asteroids (
  asteroid_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  mass FLOAT,                       -- Masa aproximada
  composition VARCHAR(50),          -- Ejemplo: "rocosa", "metálica"
  orbital_period FLOAT              -- Periodo orbital en días o años
);
