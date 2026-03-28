# 🧮 Cálculo de Dígitos do CPF em Assembly

Este projeto implementa o cálculo dos dígitos verificadores do CPF utilizando linguagem Assembly, com foco em aprendizado de baixo nível e manipulação direta de registradores.

## 📌 Objetivo

Demonstrar como o algoritmo de validação de CPF pode ser implementado em Assembly, explorando:

- Operações aritméticas básicas
- Uso de registradores
- Estruturas de repetição (loops)
- Manipulação de memória

## ⚙️ Tecnologias Utilizadas

- Linguagem Assembly (8051)
- Simulador: EdSim51 (ou equivalente)

## 🧠 Funcionamento do Algoritmo

O CPF possui 11 dígitos, sendo os 2 últimos dígitos verificadores.

### Etapas:

1. Multiplica-se os 9 primeiros dígitos por pesos decrescentes (10 até 2)
2. Soma-se todos os resultados
3. Calcula-se o resto da divisão por 11
4. Define-se o primeiro dígito verificador:
   - Se resto < 2 → dígito = 0
   - Caso contrário → dígito = 11 - resto
5. Repete-se o processo incluindo o primeiro dígito para obter o segundo

## 📂 Estrutura do Projeto


calculo_cpf_ass/

│

├── calculo_digitos_cpf.asm # Código principal em Assembly

└── README.md # Documentação do projeto


## ▶️ Como Executar

1. Abra o simulador (ex: EdSim51)
2. Carregue o arquivo:

calculo_digitos_cpf.asm

3. Execute o código passo a passo ou diretamente
4. Verifique os registradores/memória para conferir o resultado

## 🔍 Exemplo

Entrada (base do CPF):

482958838


Saída esperada:

CPF completo: 482.958.838-10


## 🎯 Aprendizados

Este projeto ajuda a entender:

- Programação de baixo nível
- Controle manual de fluxo
- Implementação de algoritmos sem abstrações
- Funcionamento interno de validações numéricas

## 🚀 Possíveis Melhorias

- Adicionar validação completa do CPF
- Implementar entrada dinâmica de dados
- Otimizar o uso de registradores
- Criar versão em outras arquiteturas

## 👨‍💻 Autor

Guilherme Costa  
📎 LinkedIn: https://www.linkedin.com/in/guilherme-costa-a00463291

---

💡 Projeto desenvolvido para fins educacionais.
