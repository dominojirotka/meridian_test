# Použijeme oficiální Python 3.11 slim image
FROM python:3.11-slim

# Nastavíme pracovní adresář
WORKDIR /app

# Instalujeme systémové balíčky, pokud je třeba
RUN apt-get update && apt-get install -y wget

# Zkopírujeme obsah repozitáře do kontejneru
COPY . .

# Nainstalujeme závislosti (podle setup.py / pyproject.toml)
RUN pip install --upgrade pip && pip install .

# Příklad: spustíme demo skript – upravte dle toho, co chcete spouštět
CMD ["python", "demo/main.py"]
