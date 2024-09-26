#!/bin/bash

# Verificar se o Fortify CLI já está instalado
if ! command -v fcli &> /dev/null; then
  echo "Fortify CLI não encontrada, instalando manualmente."

  # Download do Fortify CLI de uma URL válida
  curl -f -sSL https://valid-url-for-fortify-cli/fortify-cli.sh -o install_fortify.sh || { echo "Erro ao baixar Fortify CLI"; exit 1; }

  # Exibir o script baixado para garantir que não há erros
  cat install_fortify.sh

  # Tornar o script executável e executar a instalação
  chmod +x install_fortify.sh
  ./install_fortify.sh

else
  echo "Fortify CLI já está instalada."
fi