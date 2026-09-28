# Seminário de Arquitetura e Organização de Computadores

**Instituição:** FATEC Antonio Seabra  
**Professor:** Mestre Felipe Maciel  
**Tema:** Sistemas Embarcados e Computação Ubíqua  

---

## 👥 Integrantes do Grupo
* Giovanni Vieira
* Gustavo Ilescas
* Matheus Gabriel
* Alex Marola
* Wagner Sousa

---

## 📌 Capítulo 1: Sistemas Embarcados

### 1. Conceito
Um **Sistema Embarcado** (*Embedded System*) é um sistema computacional constituído por hardware e software projetado para executar uma tarefa específica dentro de um sistema maior[cite: 1]. Eles são integrados em produtos ou equipamentos para controlar ou monitorar uma determinada função ou processo[cite: 1].

Geralmente, são projetados para serem compactos, de baixo custo, confiáveis e eficientes no consumo de energia, lidando com restrições severas de espaço, memória e capacidade de processamento[cite: 1].

---

### 2. Computadores Tradicionais vs. Sistemas Embarcados

| Característica | Computadores Tradicionais | Sistemas Embarcados |
| :--- | :--- | :--- |
| **Uso** | Geral e multitarefa (navegador, jogos, planilhas) | Específico e dedicado a uma única função |
| **Flexibilidade** | Altíssima (usuário altera softwares e SO livremente) | Baixa (software/firmware gravado de fábrica) |
| **Hardware** | Modular, expansível e atualizável (RAM, SSD, GPU) | Compacto, integrado e soldado numa única placa |
| **Consumo de Energia** | Alto (fontes potentes ou baterias de curta duração) | Baixo a baixíssimo (opera por anos com baterias pequenas) |
| **Sistema Operacional** | Complexo e pesado (Windows, macOS, Linux completo) | Inexistente (código direto) ou minimalista (RTOS) |
| **Interface do Usuário** | Rica e visual (telas HD, mouse, teclado, touch) | Simples, limitada ou ausente (botões, LEDs, displays básicos) |

---

### 3. Por que são tão diferentes?

* **Custo e Restrição de Recursos:** Enquanto computadores tradicionais visam a máxima performance comercial, nos embarcados o foco é o custo de fabricação em massa[cite: 1]. Economizar centavos em um microcontrolador gera uma economia colossal em escala[cite: 1].
* **Funcionamento em Tempo Real (*Real-Time*):** Computadores comuns operam por "melhor esforço" (*best-effort*)[cite: 1]. Nos embarcados, a previsibilidade temporal é crítica para a segurança[cite: 1]. A resposta a estímulos físicos deve ocorrer em milissegundos exatos para evitar falhas catastróficas[cite: 1].
* **Interação com o Mundo Físico:** Utilizam sensores para "ler" o ambiente (temperatura, pressão, movimento) e atuadores para "agir" sobre ele (motores, válvulas, alarmes)[cite: 1].

---

### 4. Estudo de Caso Histórico: AGC (Apollo Guidance Computer)

O **Apollo Guidance Computer (AGC)** foi o primeiro sistema embarcado reconhecido da história, responsável pela navegação e controle dos Módulos de Comando e Lunar do Projeto Apollo na década de 1960[cite: 1].

#### Especificações Técnicas:
* **Clock Interno:** 1,024 MHz
* **Massa:** ~32 kg | **Consumo:** ~55 Watts
* **Processador:** Feito com ~2.800 portas duplas NOR soldadas em 26 módulos[cite: 1].
* **Memória Fixa (ROM):** 36 kilowords (~72 KB)[cite: 1].
* **Memória Apagável (RAM):** 2 kilowords (~4 KB) baseada em núcleos magnéticos de ferrite[cite: 1].

#### Interface e I/O do AGC:
A comunicação entre os astronautas e o AGC era realizada através da interface **DSKY** utilizando comandos divididos em *Verbs* (Ações) e *Nouns* (Dados)[cite: 1].

![Tabela I/O do AGC e Teclado DSKY](/assets/imagens/agc-dsky-io.png)

---

### 5. Estudo de Caso Automotivo: Sistema de Freios ABS (ECU)

O ABS foi o primeiro sistema embarcado de segurança crítica a se popularizar na indústria automotiva, processando dados de sensores e operando atuadores hidráulicos em milissegundos para evitar o travamento das rodas[cite: 1].

#### Arquitetura de Controle da ECU:
![Fluxo de Controle da ECU do ABS](/assets//imagens/abs-fluxo-ecu.png)

#### Componentes Mecânicos e Hidráulicos:
![Diagrama Hidráulico e Sensor de Roda do ABS](/assets/imagens/abs-diagrama-hidraulico.png)

* **Anel Fônico / Tooth Wheel:** Engrenagem dentada presa à roda[cite: 1].
* **Speed Sensor:** Lê a velocidade da roda através dos dentes do anel fônico[cite: 1].
* **ECU:** Analisa os dados, controla a pressão das válvulas e gerencia a recirculação do fluido[cite: 1].
* **Accumulator & Pump:** Armazenam e recirculam o fluido de freio para aliviar a pressão[cite: 1].

---

## 📌 Capítulo 2: Computação Ubíqua

### 1. Conceito
A **Computação Ubíqua** (ou Onipresente) é o conceito no qual a tecnologia está tão integrada ao dia a dia que se torna invisível[cite: 1]. Os computadores deixam de ser desktops e passam a estar presentes em roupas, carros, eletrodomésticos e no ambiente, auxiliando as pessoas sem que elas percebam[cite: 1].

Termo criado em 1988 por **Mark Weiser**, cientista-chefe da Xerox PARC[cite: 1].

![Xerox PARC e o Computador Xerox Alto](/assets/imagens/xerox-alto.png)

---

### 2. Aplicações e Exemplo de Estudo de Caso

* **Exemplos do Cotidiano:** Assistentes virtuais (Alexa, Google Nest), Smart TVs, Smartwatches, GPS, sensores automáticos de presença[cite: 1].
* **Aplicações Industriais:** Casas inteligentes, Indústria 4.0, Logística e Cidades Inteligentes[cite: 1].

#### Estudo de Caso: Shenzhen (China)
Shenzhen é conhecida como o "Vale do Silício do Hardware", utilizando redes 5G integradas a milhões de sensores urbanos[cite: 1].

![Esquema Técnico do Poste Inteligente em Shenzhen](/assets/imagens/poste-inteligente-5g.png)

---

### 3. Benefícios vs. Riscos

#### Principais Benefícios:
* Análise e Inteligência Artificial no próprio dispositivo (*Edge AI*)[cite: 1].
* Experiências sensíveis ao contexto e automação proativa[cite: 1].
* Simplificação e automação de fluxos de trabalho do cotidiano[cite: 1].

#### Principais Riscos e Desafios:
* **Segurança e Privacidade:** Risco de exposição de dados pessoais por conta dos sensores sempre ativos[cite: 1].
* **Recursos de Hardware:** Limitações de processamento, espaço e bateria em dispositivos vestíveis[cite: 1].
* **Falta de Padronização:** Dificuldade de interoperabilidade entre aparelhos de fabricantes diferentes[cite: 1].