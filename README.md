
# Микросервис Eureka

## Описание

Центральный Service Discovery для микросервисной архитектуры. 
Принимает регистрацию и heartbeat от всех микросервисов, 
у которых есть @EnableDiscoveryClient / @EnableEurekaClient

##  Технологический стек

### Бэкенд
- **Java 21** — основной язык разработки (указан как source/target)
- **Spring Boot 3.2.5** — фреймворк для создания самостоятельных приложений (через spring-boot-starter-parent)
- **Spring Cloud 2023.0.1** — версия Spring Cloud, совместимая с Spring Boot 3.2.x (Hoxton SR12 эквивалент)

### Service Discovery & Load Balancing
- **Spring Cloud Netflix Eureka Server** — этот сервис является Eureka Server (реестр сервисов)
- **Spring Cloud LoadBalancer** — клиентская балансировка нагрузки (замена Ribbon в Spring Cloud 2023+)

### Тестирование
- **Spring Boot Starter Test** — JUnit 5, Mockito, AssertJ, Spring Test и др.

### Качество кода
- **Maven Checkstyle Plugin 3.2.0** - проверка стиля кода
- **Checkstyle 10.3.3** - правила стиля кода

### Сборка и деплой
- **Maven** — система сборки и управления зависимостями
- **Spring Boot Maven Plugin** — упаковка в исполняемый JAR
- ## Запуск проекта через Docker desktop
Перед началом убедитесь, что у вас установлены:

Docker Desktop
### Клонирование проекта
Проект состоит из нескольких сервисов (каждый в отдельном репозитории).
Необходимо скачать все части проекта в одну папку.


### Подготовка структуры проекта
#### Файл docker-compose.yml находится в репозитории checkdev_auth.
Необходимо: переместить его в корень проекта (checkdev/)

Итоговая структура:
```
checkdev/
├── docker-compose.yml   ← ВАЖНО (должен быть здесь)
├── checkdev_auth/
├── checkdev_eureka/
├── checkdev_generator/
├── checkdev_mock/
├── checkdev_desc/
├── checkdev_site/
├── checkdev_notification/
```
### Сборка и запуск

Перейдите в корень проекта

#### Соберите и запустите контейнеры:

docker compose build

docker compose up

#### перейдите по http://localhost:8080


### Важно

Если проект не запустится, необходимо будет вручную запустить контейнеры, сначала все базы данных,
затем сервисы в следующем порядке:

auth->eureka->generator->mock->desc->site->notification