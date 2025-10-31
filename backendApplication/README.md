# BarberHub Backend

Este é o backend do projeto BarberHub, desenvolvido com Spring Boot. Ele fornece a API REST utilizada pelo frontend para gerenciamento de barbearias, agendamentos, usuários, avaliações e demais funcionalidades do sistema.

## Tecnologias Utilizadas

- Java 17+
- Spring Boot
- Spring Data JPA
- Spring Security (JWT)
- ModelMapper
- Banco de Dados relacional (ex: MySQL, PostgreSQL, H2)

## Como Executar Localmente

1. **Pré-requisitos:**
   - Java 17 ou superior instalado
   - Maven instalado
   - Banco de dados configurado (ou use o H2 em memória para testes)

2. **Configuração do Banco de Dados:**
   - Edite o arquivo `src/main/resources/application.properties` para ajustar as configurações do banco de dados conforme necessário.
   - Exemplo para MySQL:
     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/barberhub
     spring.datasource.username=seu_usuario
     spring.datasource.password=sua_senha
     spring.jpa.hibernate.ddl-auto=update
     ```

3. **Rodando o Projeto:**
   - Via terminal, na pasta `backendApplication`:
     ```bash
     ./mvnw spring-boot:run
     ```
   - Ou importe o projeto em sua IDE favorita e execute a classe `BackendApplication.java`.

4. **A API estará disponível em:**
   - `http://localhost:8080`

## Estrutura de Pastas Principal

- `src/main/java/br/barberhub/backendApplication/`
  - `controller/` — Controllers REST (endpoints da API)
  - `dto/` — Objetos de transferência de dados
  - `model/` — Entidades JPA (mapeamento do banco)
  - `repository/` — Repositórios JPA
  - `service/` — Regras de negócio e serviços
  - `config/` — Configurações do Spring, segurança, etc.
  - `security/` — Implementação de autenticação JWT
- `src/main/resources/`
  - `application.properties` — Configurações da aplicação
  - `data.sql` e `schema.sql` — Scripts de inicialização do banco (opcional)

## Integração com o Frontend

Certifique-se de que o backend está rodando na porta 8080 para integração com o frontend BarberHub Marketplace. O frontend faz requisições para esta API.

## Testes

Para rodar os testes (se houver):
```bash
./mvnw test
```

---

Em caso de dúvidas, consulte os arquivos de configuração ou abra uma issue no repositório. 