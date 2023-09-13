# Keonik1_infra
Keonik1 Infra repository

# Pritunl
bastion_IP = 51.250.84.164
someinternalhost_IP = 10.128.0.4

# Testapp
testapp_IP = 84.201.175.3
testapp_port = 9292


# ДЗ5 
## Сделано:
- Установлен packer
- Сделаны конфигурационные файлы ВМ (`*.pkr.hcl` и `.json`) для последующей установки reddit-monolith приложения
- Секреты были вынесены в отдельный файл с переменными
- Создан образ ВМ и запущено на нем приложение.

Для создания образа использовать команду
```bash
packer build -var-file="./variables.pkr.hcl" ./ubuntu16.pkr.hcl
```