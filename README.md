# NFeedS

## Project documentation

### Technologies

- Java 17
- maven
- Spring Framework
- Postgres
- Docker

### Project organization

Each module described in the architecture has it's own spring boot project.

The components of the service are divided in : Process Layer, Business Logic, Adapters, Data Layer.

To specify to which category a component belongs to the name of the project folder has one of the following prefix:
- Ad : Adapter
- BL : Business Logic
- DL : Data layer
- PL : Process layer

The folder structure is as follow:

```
NFeedS
|-- Misc
|-- modules
```

In the Misc folder there are all the scripts and configuration files to clone and make the app run.
While in the modules folder (create automatically after running the cloning script) there is the source code of each
component of the service.

### Dependencies

In this section are listed the maven dependencies used for each component category, in addition each project has the 
following dependencies:

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-web</artifactId>
</dependency>

<dependency>
    <groupId>org.projectlombok</groupId>
    <artifactId>lombok</artifactId>
</dependency>
```

#### Adapter

#### Data layer

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-jpa</artifactId>
</dependency>

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-rest</artifactId>
</dependency>

<dependency>
    <groupId>org.postgresql</groupId>
    <artifactId>postgresql</artifactId>
    <scope>runtime</scope>
</dependency>
```

#### Business Logic

#### Process Layer

