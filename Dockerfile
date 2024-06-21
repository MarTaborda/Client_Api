# Usar la imagen oficial de Node.js como base
FROM node:22.1

# Establecer el directorio de trabajo
WORKDIR /usr/local/app

# Copiar el package.json y el package-lock.json al directorio de trabajo
COPY package*.json ./

# Instalar las dependencias de la aplicación
RUN npm install

# Copiar el resto del código de la aplicación al contenedor
COPY . .

# Exponer el puerto en el que la aplicación se ejecutará
EXPOSE 3000

# Definir el comando por defecto para ejecutar la aplicación
CMD ["node", "Client.js"]
