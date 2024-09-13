#!/bin/bash

# Nome da pasta da extensão
EXT_DIR="galaxy_launcher"

# Criar o diretório da extensão
mkdir -p $EXT_DIR
mkdir -p $EXT_DIR/_locales/en
mkdir -p $EXT_DIR/_locales/pt_BR
mkdir -p $EXT_DIR/_locales/es

# Criar o arquivo manifest.json
cat <<EOL > $EXT_DIR/manifest.json
{
  "manifest_version": 3,
  "name": "Galaxy Launcher",
  "version": "1.0",
  "default_locale": "en",
  "description": "A simple launcher for Galaxy.org, Galaxy.eu, and Galaxy.org.au.",
  "action": {
    "default_popup": "popup.html",
    "default_icon": {
      "16": "icon.png",
      "48": "icon.png",
      "128": "icon.png"
    }
  },
  "permissions": ["tabs", "activeTab"],
  "icons": {
    "16": "icon.png",
    "48": "icon.png",
    "128": "icon.png"
  }
}
EOL

# Criar o arquivo popup.html
cat <<EOL > $EXT_DIR/popup.html
<!DOCTYPE html>
<html>
<head>
  <style>
    body {
      width: 220px;
      padding: 15px;
      font-family: Arial, sans-serif;
      margin: 0;
      background-color: #f5f5f5;
    }
    h1 {
      font-size: 16px;
      margin: 0 0 10px 0;
      color: #333;
      text-align: center;
    }
    .button-container {
      display: flex;
      flex-direction: column;
      gap: 10px;
    }
    button {
      width: 100%;
      padding: 12px;
      font-size: 14px;
      cursor: pointer;
      border: none;
      border-radius: 5px;
      color: white;
      background-color: #007bff;
      transition: background-color 0.3s;
    }
    button:hover {
      background-color: #0056b3;
    }
    button:active {
      background-color: #004494;
    }
  </style>
</head>
<body>
  <h1>Galaxy Launcher</h1>
  <div class="button-container">
    <button id="galaxyOrg">Open Galaxy.org</button>
    <button id="galaxyEu">Open Galaxy.eu</button>
    <button id="galaxyAu">Open Galaxy.org.au</button>
  </div>

  <script src="popup.js"></script>
</body>
</html>
EOL

# Criar o arquivo popup.js
cat <<EOL > $EXT_DIR/popup.js
document.addEventListener('DOMContentLoaded', function () {
  document.getElementById('galaxyOrg').addEventListener('click', function () {
    chrome.windows.create({ 
      url: 'https://usegalaxy.org', 
      type: 'popup', 
      width: 1200, 
      height: 800 
    });
  });

  document.getElementById('galaxyEu').addEventListener('click', function () {
    chrome.windows.create({ 
      url: 'https://usegalaxy.eu', 
      type: 'popup', 
      width: 1200, 
      height: 800 
    });
  });

  document.getElementById('galaxyAu').addEventListener('click', function () {
    chrome.windows.create({ 
      url: 'https://usegalaxy.org.au', 
      type: 'popup', 
      width: 1200, 
      height: 800 
    });
  });
});
EOL

# Criar o arquivo messages.json para inglês
cat <<EOL > $EXT_DIR/_locales/en/messages.json
{
  "extensionName": {
    "message": "Galaxy Launcher"
  },
  "extensionDescription": {
    "message": "A simple launcher for Galaxy.org, Galaxy.eu, and Galaxy.org.au."
  },
  "openGalaxyOrg": {
    "message": "Open Galaxy.org"
  },
  "openGalaxyEu": {
    "message": "Open Galaxy.eu"
  },
  "openGalaxyAu": {
    "message": "Open Galaxy.org.au"
  }
}
EOL

# Criar o arquivo messages.json para português do Brasil
cat <<EOL > $EXT_DIR/_locales/pt_BR/messages.json
{
  "extensionName": {
    "message": "Galaxy Launcher"
  },
  "extensionDescription": {
    "message": "Um simples lançador para Galaxy.org, Galaxy.eu e Galaxy.org.au."
  },
  "openGalaxyOrg": {
    "message": "Abrir Galaxy.org"
  },
  "openGalaxyEu": {
    "message": "Abrir Galaxy.eu"
  },
  "openGalaxyAu": {
    "message": "Abrir Galaxy.org.au"
  }
}
EOL

# Criar o arquivo messages.json para espanhol
cat <<EOL > $EXT_DIR/_locales/es/messages.json
{
  "extensionName": {
    "message": "Galaxy Launcher"
  },
  "extensionDescription": {
    "message": "Un lanzador simple para Galaxy.org, Galaxy.eu y Galaxy.org.au."
  },
  "openGalaxyOrg": {
    "message": "Abrir Galaxy.org"
  },
  "openGalaxyEu": {
    "message": "Abrir Galaxy.eu"
  },
  "openGalaxyAu": {
    "message": "Abrir Galaxy.org.au"
  }
}
EOL

# Copiar o ícone para o diretório da extensão
# Certifique-se de que o ícone 'icon.png' esteja no mesmo diretório que este script ou ajuste o caminho conforme necessário
cp icon.png $EXT_DIR/

echo "Extensão criada com sucesso na pasta $EXT_DIR"

