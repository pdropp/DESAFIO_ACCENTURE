# Automação WEB

## 📋 Pré-requisitos
Para cumprir o desafio eu estou utilizando a seguinte linguagem e o seguinte framework:


-- **VSCODE**
-- **Python**
-- **GIT**

-   **[Downlaod do VsCode](https://code.visualstudio.com/download)**
-   **[Download do Python](https://www.python.org/downloads)**
-   **[Download do Git](https://git-scm.com/downloads)**

## 🔧 Instalação

Agora que temos o projeto disponível em nossa máquina e todas as ferramentas, vamos mostrar aqui como instalar alguns recursos e ferramentas que poderão nos ajudar no processo de automação.

Dentro do **VSCode**, instale as seguintes extensões:

- **XSLT/XPath for Visual Studio Code**
- **Robot Framework Language Server**
- **Robot Framework Formatter**
- **Python**
- **Python Debugger**
- **Material Icon Theme** - Fica a critério do Dev
- **GitLens — Git supercharged**  


### Instalando as Libraries do nosso projeto.

Dentro do nosso projeto de automação, temos um arquivo requirements.txt. Dentro desse arquivos estão presentes todas as libraries que serão necessárias para podermos executar nossos testes sem problemas. 

Uma vez que temos todas as libs dentro do requirements, precisamos apenas instala-las e para isso execute o comenado a seguir:


```bash
# Comando para instalar todas as libraries
$ pip install -r requirements.txt
```

#	Automação API
Para a automação API foi utilizado apenas rest assured e o testrng