# Projeto Hospital VidaPlus

Sistema de gerenciamento hospitalar desenvolvido com Spring Boot para controle de pacientes, consultas e usuários.

## 📋 Pré-requisitos

- Git
- JDK 21
- Maven 3.6+
- MySQL 8.0+
- Postman (para testar a API)
- IntelliJ IDEA

## 🚀 Passos para configuração e execução

### 1. Clone o repositório

```bash
git clone https://github.com/joaogoncalves-ti/SistemaHospitalar.git

```

### 2. Configure o banco de dados

- Certifique-se de ter um usuário MySQL com login "root" e senha "unintertcc"
- Ou altere estas credenciais no arquivo `src/main/resources/application.properties`
- Abra o MySQL Workbench
- Vá para: **Server > Data Import**
- Selecione **Import from Self-Contained File** e localize o arquivo `Dump20250411.sql`
- Crie um novo schema chamado **sghss**
- Certifique-se que a opção **Dump Structure and Data** está marcada
- Clique em **Start Import**

### 3. Abra e execute o projeto

- Abra o IntelliJ IDEA
- Selecione **File > Open** e navegue até a pasta do projeto
- Aguarde o Maven baixar todas as dependências automaticamente
- Execute a classe `ProjetoHospitalApplication.java` clicando com o botão direito e selecionando **Run**

### 4. Teste com Postman

- Abra o Postman
- Clique em **Import** e selecione o arquivo `SGHSS.postman_collection.json`
- A coleção contém todos os endpoints prontos para teste
- Configure a autenticação Basic Auth com:
  - Usuário: `Admin`
  - Senha: `Admin`

## 📊 Funções por tipo de usuário

- **ADMIN**: Acesso total (usuários, pacientes, consultas e logs)
- **PROFISSIONAL**: Acesso a pacientes e consultas apenas

## ⚙️ Tecnologias utilizadas

- Spring Boot 3.4.4
- Spring Security
- Spring Data JPA
- MySQL
- Maven

---

*Em caso de problemas, verifique se todas as dependências foram baixadas corretamente pelo Maven*