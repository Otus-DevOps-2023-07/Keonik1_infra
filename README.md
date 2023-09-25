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

# ДЗ6
## Чеклист
- [x] Основное ДЗ
- [x] Задания со звездочками

## Сделано
- Добавлен файл `terraform/main.tf`, который содержит конфигурацию ноды с приложением
- Добавлен файл `terraform/lb.tf`, который содержит конфигурацию для load balancer
- Добавлен файл `terraform/outputs.tf`, который содержит конфигурацию для load balancer
- Добавлена автоматическая установка приложения при развертывании
- Значения данных вынесены в файл `terraform/terraform.tfvars`
- Добавлен файл `terraform/terraform.example.tfvars`, в котором определены переменные
- Добавлен файл `terraform/variables.tf`, в котором инициализированы переменные.
- Добавлены файды для развертывания приложения в директорию `terraform/files/`

Для запуска приложения использовать команды:
```bash
terraform init
terraform plan
terraform apply -auto-approve
```
Для того чтобы обавить кастомный файл переменных использовать ключ `-var-file` ко всем командам

Для удаления инфраструктуры используется команда:
```bash
terraform destroy
```

Для обновления статуса текущих ресурсов использовать команду 
```bash
terraform refresh
```