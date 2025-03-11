# Použijeme oficiální Python 3.11 slim image
FROM python:3.11-slim

# Nastavíme pracovní adresář
WORKDIR /app

# Instalujeme systémové balíčky, pokud je třeba
RUN apt-get update && apt-get install -y wget

# Zkopírujeme obsah repozitáře do kontejneru
COPY . .

# Nainstalujeme závislosti – repozitář by měl mít soubor setup.py nebo pyproject.toml
RUN pip install --upgrade pip && pip install .

# Spustíme demo skript – upravte dle toho, který skript chcete spouštět
CMD ["python", "demo/main.py"]
