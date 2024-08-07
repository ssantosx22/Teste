# Use uma imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos de requisitos para o diretório de trabalho
COPY requirements.txt .

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copie o código da aplicação
COPY app.py .

# Defina a variável de ambiente para garantir que a saída de logs do Flask seja exibida
ENV FLASK_ENV=development

# Exponha a porta 5000 para acesso externo
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]

