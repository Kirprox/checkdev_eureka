
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