# One For All

No projeto One For All, utilizei uma tabela para revisar e consolidar todos os principais conceitos vistos em `SQL`.

Recebi uma tabela não normalizada e a atualizei para o padrão de normalização e a populei para executar as querys com o objetivo de encontrar as informações solicidadatas.

---

## 📋 Pré-requisitos

- A aplicação necessita do `Docker` instalado localmente, execute o comando no terminal para verificar a instalação.

```
docker -v
```

</br>

- A aplicação necessita que as portas estejam disponiveis:
`Node`
`MySql - 3307`
</br>
- Verifique a disponibilidade de portas no terminal executando o seguinte comando:

```
docker ps -a
```

---

### 🔧 Instalação

Rodando a aplicacão.

Clone o repositorio:

```
git clone git@github.com:Maarceloo/one-for-all.git
```

Acesse `one-for-all`

```
cd one-for-all
```

Instale as dependencias:

```
npm install
```

Suba os containers:

```
docker-compose up -d
```

Abra o VSCode:

```
code .
```

<!-- ## ⚙️ Executando os testes

Explicar como executar os testes automatizados para este sistema.

### 🔩 Analise os testes de ponta a ponta

Explique que eles verificam esses testes e porquê.

```
Dar exemplos
```

### ⌨️ E testes de estilo de codificação

Explique que eles verificam esses testes e porquê.

```
Dar exemplos
``` -->

## 🛠️ Construído com

- [MySql](https://www.mysql.com/)
- [Dcker](https://www.docker.com/)

---
⌨️ Desenvolvido por [Marcelo De Lima](https://github.com/Maarceloo) 🛠️
