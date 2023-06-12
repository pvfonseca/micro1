### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ a1aa557e-03db-11ee-34e6-d104c106eb09
begin
	using PlutoUI
	import PlutoUI: combine	
end

# ╔═╡ 85636721-bdfe-4931-a5f6-ff2b3424b025
PlutoUI.TableOfContents(title="Sumário", indent=true)

# ╔═╡ 5a5daea1-76e9-4227-914e-6eda89bda8c1
html"<button onclick=present()>Apresentação</button>"

# ╔═╡ d521b9a0-b435-4ccf-988a-1c5bb4c24a93
md"""
# Minimização de custos $~~~~~~~~~~~$ $(Resource("https://www1.udesc.br/imagens/id_submenu/899/cor_horizontal_rgb.jpg", :width => 150))
"""

# ╔═╡ e723428a-18a1-4365-81aa-e6593d1f1c5c
md"
* **Disciplina:** 23MICI - Microeconomia I
* **Docente:** [Paulo Victor da Fonseca](https://pvfonseca.github.io)
* **Contato:** [paulo.fonseca@udesc.br](mailto:paulo.fonseca@udesc.br)
"

# ╔═╡ 4f27d138-5b77-44b3-8c42-890487ba3e0c
md"""
!!! danger "Aviso"
	O texto que segue não tem a menor pretensão de originalidade. Ele serve apenas como registro dos principais princípios, conceitos e técnicas analíticas que são trabalhados em sala de aula.
"""

# ╔═╡ a02c3486-68ac-4349-8983-9cc677c67dd6
md"
## Custo econômico $\times$ custo contábil
"

# ╔═╡ 7a9ce2d8-35c1-427a-9372-e307e40fd565
md"
* Antes de discutirmos a teoria dos custos, algumas questões o conceito de custos devem ser esclarecidas
* Especificamente, a distinção entre **custo contábil** e **custo econômico**
"

# ╔═╡ b8a7909a-af09-441a-9f0a-991e0367ff65
md"""
!!! danger "Custo contábil"
	A visão de custo do contador enfatiza despesas pecuniárias, custos históricos, depreciação e outros registros históricos
"""

# ╔═╡ da39aa33-83ce-4504-8fcf-915772179d8e
md"""
!!! info "Custo econômico"
	O custo econômico de qualquer insumo é o pagamento exigido para manter esse insumo em seu emprego atual

	De maneira equivalente, o custo econômico de um insumo é a remuneração que este insumo receberia em seu melhor emprego alternativo
"""

# ╔═╡ afe49ef2-88ba-4a7c-9633-ec5c28ce5802
md"
* Dados contábeis geralmente estão facilmente disponíveis
* Os conceitos econômicos correspondentes, por sua vez, podem ser mais difíceis de mensurar
* Se a medida contábil não diferir muito de sua contraparte econômica, ela pode ser uma boa aproximação para muitos propósitos práticos
* Colocaremos, aqui, questões de mensuração de lado e utilizaremos os conceitos relevantes para a decisão - custos econômicos - ao longo da análise
"

# ╔═╡ c609bb0f-dcec-496a-bee6-4d76dfd069a7
md"
### Hipóteses simplificadoras
"

# ╔═╡ 86fddf41-50a1-45b2-87ea-11c1d86b8441
md"
* Estudaremos a minimização e curvas de custo de uma firma que produz apenas um tipo de produto $q$ (caso uniproduto) utilizando apenas dois tipos de insumo:
    - trabalho homogêneo ($l$, medido em horas de trabalho)
    - capital homogêneo ($k$, medido em horas-máquina)
* Admitiremos que a firma é tomadora de preços nos mercados de fatores (i.e., insumos são contratados em mercados perfeitamente competitivos), ou seja, empresas podem comprar (ou vender) todos os serviços de mão de obra ou de capital que desejarem, sob as taxas de aluguel vigentes ($w$ e $v$)
* Portanto, a firma paga por unidades dos insumos trabalho e capital os preços exógenos $w > 0$ e $v > 0$, respectivamente
* Portanto, o custo total $C$ para a firma durante o período é dado por:

$$\text{Custo total} = C = wl + vk,$$

em que $l$ e $k$ representam a utilização dos insumos trabalho e capital, respectivamente, durante o período analisado
"

# ╔═╡ 0ce9da62-56e8-401b-8f73-679ba2d5dc86
md"
## Relação entre maximização de lucros e minimização de custos
"

# ╔═╡ 20406724-bb47-404c-9d34-8973cd66f61c
md"""
* Os lucros econômicos ($\pi$) serão definidos como a diferença entre a receita total ($R$) da firma e seus custos totais ($C$)
* Suponha que a firma adote o preço de mercado ($p$) para a sua produção total ($q$) como dado e, além disso, que sua função de produção é $q = f(k,l)$
* Formalmente, então, teremos:

$$\pi = R - C = pq - wl - vk = pf(k,l) - wl - vk$$

* Ou seja, os lucros econômicos desta empresa são uma função da quantidade de capital e de trabalho empregados

* Supondo que a firma tem como objetivo a maximização de seus lucros, então, podemos estudar seu comportamento examinando como $k$ e $l$ são escolhidos de maneira a maximizar a expressão anterior
* Isso, por sua vez, levaria a uma teoria da oferta e uma teoria da "demanda derivada" para os insumos de capital e mão de obra
* Nosso objetivo, agora, é desenvolver uma teoria de custos que seja um pouco mais geral
    - Aplica-se não somente às firmas tomadoras de preços no mercado de bens (concorrência perfeita)
    - Mas, também, àquelas cuja escolha de produção afeta o preço de mercado (e.g., monopólios e oligopólios)
* A teoria mais geral é aplicável até mesmo para organizações sem fins lucrativos (desde que estejam interessadas em operar de forma eficiente)
* Outra vantagem em analisar a minimização de custos separadamente da maximização de lucros é que é mais simples analisar este elemento de forma isolada e, só depois, adicionar os _insights_ obtidos em uma teoria mais geral das operações das firmas
"""

# ╔═╡ e7fc3a9a-edb7-40d7-9024-235cab20178c
md"
### Suposição comportamental
"

# ╔═╡ ccbd6014-11f9-48f2-beb2-f08fa21c357c
md"
* As condições derivadas para as opções de insumos minimizadores de custos surgirão, novamente, como um subproduto da análise da maximização de lucros na próxima seção da disciplina
* Para isso, iremos supor que a firma é maximizadora de lucros
* Logo, a combinação de insumos ótima $(k^*, l^*)$, associada ao plano de produção maximizador de lucros $(-k^*, -l^*, q^*)$, deve ser minimizadora de custos pois, caso não o fosse, haveria outro plano de produção envolvendo um menor custo e, portanto, um maior lucro
"

# ╔═╡ a7f9c9df-cf51-400d-a438-edb8d36cb278
md"""
!!! warning "Maximização de lucros"
	A análise de maximização de lucros que veremos posteriormente só é válida para firmas competitivas
	
	A minimização de custos, por sua vez, é válida não somente para firmas competitivas mas, também, para firmas que possuam algum controle sobre o preço do seu produto
"""

# ╔═╡ 8ec87fe3-a98d-4279-87f9-ed27c16a6c26
md"
## Minimização de custos
"

# ╔═╡ 351c82f9-25e7-4e4f-b37a-154040b04d97
md"""
!!! correct "Isocusto"
	Isocusto é o conjunto $\{(k, l) \in \mathbb{R}_+^2| vk + wl = C\}$ formado por todas as combinações de insumos $(k, l)$ que geram o mesmo custo total $C \geq 0$
"""

# ╔═╡ d5629cf7-3a10-4688-8a06-9bf946573925
md"
* A isocusto associada ao custo total $C$ pode ser descrita pela seguinte equação da reta:

$$k = \frac{C}{v} - \frac{w}{v}l$$

* Note que a inclinação (coeficiente angular) é o negativo da razão entre os preços dos fatores de produção, $-w/v$
"

# ╔═╡ 4bfd5a69-fc8f-498a-8ee1-0655dc77b190
md"""
!!! info "Problema de minimização de custos"
	A firma deve escolher a combinação de insumos $(k^*, l^*)$ para atingir uma meta de produção $q_0$ com o menor custo possível

	Formalmente, a firma deve resolver o seguinte problema de otimização:

	$$\begin{align}
		\min_{k,l} \quad & \quad wl + vk \\
		\text{s.r.} \quad & \quad f(k,l) = q_0\end{align}$$
"""

# ╔═╡ 034ed565-77fa-4fc3-9376-0945d31bcf73
md"
* A função Lagrangeana associada ao problema de otimização restrito é dada por:

$$\mathcal{L}(k, l; \lambda) = wl + vk + \lambda[q_0 - f(k,l)]$$

* As condições necessárias de primeira ordem para um ponto de mínimo restrito são dadas por:

$$\begin{align}
\frac{\partial \mathcal{L}}{\partial l} &= w - \lambda \frac{\partial f}{\partial l} = 0 \\
\frac{\partial \mathcal{L}}{\partial k} &= v - \lambda \frac{\partial f}{\partial k} = 0 \\
\frac{\partial \mathcal{L}}{\partial \lambda} &= q_0 - f(k,l) = 0\end{align}$$

* Portanto, das duas primeiras equações do sistema, temos que:
$$\frac{w}{v} = \frac{f_l}{f_k} = TTS(l,k)$$

* Ou seja, no caso padrão (tecnologia estritamente convexa e isoquanta continuamente diferenciável), na escolha minimizadora de custos $(k^*, l^*)$ a curva de isocusto é tangente à isoquanta, de forma que suas inclinações são iguais
* A firma minimizadora de custos deve igualar a TTS dos dois insumos à razão de seus preços
"

# ╔═╡ b181162b-3dec-433c-9656-2443a30b154b
md"""
Condição de tangência entre isoquanta e isocusto no ponto de minimização de custos. Fonte: Nicholson e Snyder (2019)
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula12_fig1.PNG", :width=>800))
"""

# ╔═╡ a0192403-d3e8-463b-99cf-6b537a01a894
md"
* A condição de otimalidade obtida anteriormente pode ser reescrita da seguinte forma:

$$\frac{f_k}{v} = \frac{f_l}{w}$$

* Ou seja, para que os custos sejam minimizados, a produtividade marginal por cada unidade monetária dispendida deve ser a mesma para todos os insumos

* Qualquer quantidade de insumo que não satisfazer essa razão custo-benefício comum não deve ser selecionada

* Alternativamente, podemos, ainda, escrever a condição de igualdade da seguinte forma:

$$\frac{w}{f_l} = \frac{v}{f_k} = \lambda$$

* Essa expressão nos mostra o custo extra de se obter uma unidade a mais de produção, selecionando mão de obra ou entrada de capital adicional

* Por causa da minimização de custos, esse custo marginal é o mesmo, independentemente do insumo selecionado

* Esse custo marginal comum também é medido pelo multiplicador de Lagrange, $\lambda$, do problema de minimização de custos

* Como em problemas de otimização restrita, o multiplicador de Lagrange mostra o quanto se incorreria, em termos de custos extras, caso a restrição de produção fosse relaxada levemente
"

# ╔═╡ 90afdb29-63f2-47de-9ec5-a2df4c2cd264
md"""
!!! correct "Função demanda condicional de fatores (demanda contingente de insumos)"
	Se a isoquanta é extritamente convexa, existe uma, e somente uma, combinação de insumos ótima $(k^*, l^*)$ que resolve o problema de minimização de custos, a qual é uma função contínua dos preços $(v, w) \in \mathbb{R}_{++}^2$ e da meta de produção $q \geq 0$, ou seja:

	$$\begin{align}k &= k^c(v, w, q), \\ l &= l^c(v, w, q)\end{align}$$
"""

# ╔═╡ b74f35b2-d7ed-449d-9c44-4f4fc3d244b9
md"""
!!! correct "Função custo total"
	A função custo total mede o custo total mínimo de produzir $q$ unidades de um bem quando os preços dos fatores de produção são $(v, w) \in \mathbb{R}_{++}^2$ e a tecnologia de produção é $f(k,l)$:

	$$C = C(v, w, q)$$

	A função custo é obtida substituindo as funções de demanda condicionais de fatores na função objetivo do problema de minimização de custos, ou seja:

	$$C(v, w, q) = vk^c(v, w, q) + wl^c(v, w, q)$$
"""

# ╔═╡ f38e5ed6-421e-481d-ae0e-c488b31e082e
md"""
!!! correct "Função custo médio"
	A **função custo médio** (AC) é o custo mínimo total por unidade produzida:

	$$\text{Custo médio} = AC(v, w, q) = \frac{C(v, w, q)}{q}$$
"""

# ╔═╡ 2c787fc7-ab5e-405d-befc-cd4e4a3802d8
md"""
!!! correct "Função custo marginal"
	A **função custo marginal** (MC) é a variação do custo total mínimo gerada pela variação de uma unidade de produção:

	$$\text{Custo marginal} = MC(v, w, q) = \frac{\partial C(v, w, q)}{\partial q}$$
"""

# ╔═╡ 6161e491-3150-4894-8a37-8f2ff8eb340e
md"
### Propriedades das funções custo
"

# ╔═╡ 5e5bfaea-7907-4d31-96b9-b6e6b90ab6b7
md"""
!!! info "Propriedades das funções custo"
	* A função custo total satisfaz as seguintes propriedades:
	1.  $C(v, w, 0) = 0$
	2.  $C(v, w, q)$ é estritamente crescente em $q$
	3.  $C(v, w, q)$ é não-decrescente nos preços dos insumos $v$ e $w$
	4.  $C(v, w, q)$ é homogênea de grau 1 nos preços dos insumos $v$ e $w$, isto é:

	$$C(tv, tw, q) = tC(v, w, q), \qquad \forall t>0$$

	5. A função custo total é côncava nos preços dos insumos $v$ e $w$
	6. Lema de Shephard:

	$$\begin{align}
			\frac{\partial C(v, w, q)}{\partial v} &= k^c(v, w, q), \\
			\frac{\partial C(v, w, q)}{\partial w} &= l^c(v, w, q)\end{align}$$
"""

# ╔═╡ d75a77c6-11f9-4b66-912c-6cf613e9b113
md"
### Trajetória de expansão da firma
"

# ╔═╡ 058cd477-479e-4ad4-8ffd-4efe1b05cda2
md"
* O processo de minimização de custos de uma firma pode ser realizado para cada nível de produção
* Sob a hipótese de preços unitários dos insumos constantes, podemos facilmente observar as escolhas de insumos minimizadoras de custos que a firma escolhe
* A **trajetória (caminho) de expansão da firma** é a coleção de pontos que satisfazem a condição de tangência que o processo de minimização de custos requer, mostra como os insumos utilizados expandem à medida que a produção expande (mantendo os preços dos insumos constantes)
"

# ╔═╡ f24a27fa-9652-4a7c-941f-910ace5fe8d4
md"""
Trajetória de expansão da firma. Fonte: Nicholson e Snyder (2019)
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula12_fig2.PNG", :width=>800))
"""

# ╔═╡ 21567368-9473-4b40-8664-13fac52c0d9a
md"""
!!! warning "Trajetória de expansão da firma"
	* Note que a trajetória de expansão não precisa ser uma linha reta
	* O uso de alguns insumos pode aumentar mais rápido que outros, à medida que a produção aumenta
	* Essa é uma questão relacionada ao formato da função de produção
	* Se a função de produção apresenta retornos constantes de escala (ou, de forma mais geral, for homotética), então, a trajetória de expansão será uma linha reta pois a TTS dependerá apenas da razão de $k$ por $l$ - razão esta que será constante ao longo da trajetória linear de expansão
"""

# ╔═╡ 30cf223c-3121-4a06-86a1-054f4580a12e
md"""
Inferioridade de insumos: trabalho. Fonte: Nicholson e Snyder (2019)
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula12_fig3.PNG", :width=>800))
"""

# ╔═╡ b3b7d29b-63b5-4c0b-98da-e21d25f30061
md"""
> **Proporções fixas**. Função custo para o caso de proporções fixas:
>
> $$q = f(k,l) = \min\{\alpha k, \beta l\}$$
>
> Neste caso sabemos que a produção ocorrerá nos vértices das isoquantas da função de produção, onde $q = \alpha k = \beta l$
>
> Portanto, a função custo total será:
>
> $$C(v, w, q) = vk + wl = v\left(\frac{q}{\alpha}\right) + w \left(\frac{q}{\beta}\right) = q\left(\frac{v}{\alpha} + \frac{w}{\beta}\right)$$
"""

# ╔═╡ ccfb8268-f769-4d58-b613-57554b539dfb
md"""
> **Cobb-Douglas:** $q = f(k,l) = k^\alpha l^\beta$
>
> A condição de otimalidade de minimização de custos para este caso é dada por:
>
> $$\frac{w}{v} = \frac{\beta}{\alpha}\frac{k}{l}$$
>
> Portanto:
>
> $$k = \frac{\alpha}{\beta}\frac{w}{v}l$$
>
> Substituindo na função de produção, temos que:
>
> $$q = k^\alpha l^\beta = \left(\frac{\alpha}{\beta}\frac{w}{v}\right)^\alpha l^{\alpha + \beta}$$
>
> Portanto, a função demanda condicional por trabalho é dada por:
>
> $$l^c(v, w, q) = q^{\frac{1}{\alpha + \beta}} \left(\frac{\beta}{\alpha}\right)^{\frac{\alpha}{\alpha + \beta}} w^{-\frac{\alpha}{\alpha + \beta}} v^{\frac{\alpha}{\alpha + \beta}}$$
>
> A função demanda condicional por capital pode ser obtida de maneira similar:
>
> $$k^c(v, w, q) = q^{\frac{1}{\alpha + \beta}} \left(\frac{\alpha}{\beta}\right)^{\frac{\beta}{\alpha + \beta}} w^{\frac{\beta}{\alpha + \beta}} v^{\frac{-\beta}{\alpha + \beta}}$$
>
> A função custo total é dada por:
>
> $$C(v, w, q) = vk^c + wl^c = q^{\frac{1}{\alpha + \beta}}Bv^{\frac{\alpha}{\alpha+\beta}}w^{\frac{\beta}{\alpha+\beta}}$$
>
> onde $B\equiv (\alpha + \beta)\alpha^{-\frac{\alpha}{\alpha + \beta}}\beta^{-\frac{\beta}{\alpha+\beta}}$
"""

# ╔═╡ 2e812924-dea6-4dd0-acc0-e0e15f41ca65
md"
## Função custo no curto prazo
"

# ╔═╡ c4f64f27-d80e-4d9b-a652-f03ec1c72f56
md"
* Em economia, é tradicional fazermos uma distinção entre o **curto prazo** e o **longo prazo**
* EMbora uma definição temporal precisa não possa ser fornecida para esses termos, o objetivo geral da distinção é diferenciar um curto período durante o qual os agentes econômicos têm apenas uma flexibilidade limitada em suas ações e um período mais longo que proporciona maior liberdade
* Essa distinção é particularmente importante na teoria da firma e seus custos
* Isso porque economistas estão interessados em analisar as reações da oferta em diferentes intervalos de tempo
"

# ╔═╡ 0e3fea8f-c3f0-4f77-afa2-09964288ac25
md"""
!!! correct "Função custo de curto prazo"
	* A função custo de curto prazo (ou função custo restringida) é a função que fornece o custo total mínimo necessário para atingir uma meta de produção $q$ de um bem quando a firma não pode ajustar a quantidade de pelo menos um dos fatores de produção

	* Formalmente, supomos que no curto prazo o fator de produção capital utilizado pela firma seja fixo em um nível predeterminado $\bar{k} > 0$

	* Assim, a função custo de curto prazo é dada por:

	$$C_{CP}(v, w, q; \bar{k}) \equiv \min_{l} v\bar{k} + wl \quad \text{s.r.} \quad q = f(\bar{k}, l)$$
"""

# ╔═╡ d565a390-479c-4885-a846-12758ff91ba2
md"
* No caso de apenas um insumo variável, a escolha ótima da firma é óbvia: é a quantidade mínima do insumo variável que é capaz de produzir $q$ unidades do bem final
* Para o caso de vários insumos, a escolha não é tão simples, já que a firma pdoe escolher a substituição entre os insumos variáveis existentes
* Como estamos considerando o caso de apenas um insumo variável, as **demandas condicionais de fatores de curto prazo** podem ser representadas como:

$$\begin{align}
k^* &= \bar{k}, \\
l^* &= l_{CP}(v, w, q; \bar{k})\end{align}$$

* A demanda pelo insumo trabalho depende do nível que a firma possui do fator capital, $\bar{k}$

* Dadas as demandas condicionais de fatores de curto prazo, a **função custo de curto prazo** é obtida simplesmente substituindo tais demandas na função-objetivo do problema de minimização de custos de curto prazo:

$$C_{CP}(v, w, q; \bar{k}) = vk^* + wl^* = v\bar{k} + wl_{CP}(v, w, q; \bar{k})$$

* Note que o **custo variável de curto prazo** é: $CV_{CP} = wl_{CP}(v, w, q; \bar{k})$

* E o **custo fixo de curto prazo** é: $CF_{CP} = v\bar{k}$
"

# ╔═╡ 7b3277d5-af53-405c-b72b-8a2427d8c036
md"
### Funções custos: definições
"

# ╔═╡ f2ff5607-5d57-435b-a2ff-b95347281185
md"
* Os custos totais de uma firma podem ser divididos em várias categorias
"

# ╔═╡ 56df8b45-11da-4004-aadc-bbeee03d1dcd
md"""
!!! correct "Custo fixo"
	* O custo fixo de uma firma é a parte do custo que não varia com a quantidade produzida

	* Em outras palavras, custos fixos são aqueles associados aos fatores de produção fixos - fatores cujas quantidades utilizadas independem do nível de produção e, sobretudo, recebem pagamento haja ou não produção

	* Exemplos: aluguel, contadores, segurança, etc.
"""

# ╔═╡ 5b017406-a4d7-4363-8eac-e4ba6f2bef00
md"""
!!! correct "Custo variável"
	* O custo variável é a parte do custo que varia com a quantidade produzida

	* Exemplos: gastos com mão-de-obra, insumos variáveis, etc.
"""

# ╔═╡ f6fffb2d-1167-4cf8-a39c-59f83ced194b
md"""
!!! warning "Custo variável e custo fixo"
	A classificação de um custo como fixo ou variável depende do horizonte temporal da análise

	No longo prazo, todos os custos são variáveis
"""

# ╔═╡ ed21185b-0b97-4c56-96fb-ebfee3e0c2ca
md"
* O custo total é a soma do custo fixo e do custo variável
* Outros dois tipos de custos importantes são custos irrecuperáveis ou afundados (_sunk costs_) e custos quase-fixos
"

# ╔═╡ 583d7b15-1241-4e41-a96c-d390b4d078bc
md"""
!!! correct "Custos irrecuperáveis ou afundados"
	* São tipos de custos fixos que uma vez incorridos não podem ser recuperados caso a firma decida não produzir (sair do mercado)

	* Exemplo: bens de capital com elevado grau de especificidade de uso apresentam mercados de revenda e de aluguel pouco desenvolvidos ou inexistentes, de forma que os custos irrecuperáveis associados são elevados
"""

# ╔═╡ 76951cd6-ce41-4695-b207-fd9441cb8d76
md"""
!!! correct "Custos quase-fixos"
	* Custos quase-fixos ocorrem apenas se a firma decide produzir uma quantidade positiva do bem

	* Se ela produz zero, não gasta nada desse custo

	* Se ela produz qualquer quantidade positiva, ela gasta um valor fixo
"""

# ╔═╡ d9608af2-10f9-4c49-9198-d58b1c9ead1e
md"
* Em suma, os custos fixos independem do nível de produção e têm de ser pagos mesmo que a firma não produza
* Custos quase-fixos, embora também independentes do nível de produção, só precisam ser pagos se a firma produzir uma quantidade estritamente positiva
"

# ╔═╡ 1a370f57-90dd-4fe9-a557-81ce32a534c5
md"
### Custo médio de curto prazo
"

# ╔═╡ e0022b6b-f4f7-4616-ab52-f62643dc742e
md"""
!!! correct "Custo médio de curto prazo"
	É o custo mínimo por unidade produzida quando pelo menos um dos fatores de produção é fixo:

	$$CMe_{CP}(v, w, q; \bar{k}) \equiv \frac{C_{CP}(v, w, q; \bar{k})}{q} = \underbrace{\frac{v\bar{k}}{q}}_{\color{pink}CFMe_{CP}} + \underbrace{\frac{wl_{CP}(v,w,q;\bar{k})}{q}}_{\color{black}CVMe_{CP}}$$

	Como se pode observar, o custo médio de curto prazo pode ser decomposto em:

	1. **Custo fixo médio de curto prazo**: $CFMe_{CP}(v, w, q; \bar{k}) \equiv \frac{v\bar{k}}{q}$

	2. **Custo variável médio de curto prazo**: $CVMe_{CP}(v, w, q; \bar{k}) \equiv \frac{wl_{CP}(v, w, q; \bar{k})}{q}$
"""

# ╔═╡ b1fdc06c-ba3c-41cb-8bec-91688bb39c68
md"
## 📚 Bibliografia

MAS-COLELL, A.; WHINSTON, M.D.; GREEN, J.R. Microeconomic Theory. New York, NY: Oxford University Press, 1995.

NICHOLSON, W.; SNYDER C. [Teoria microeconômica: Princípios básicos e aplicações](https://app.minhabiblioteca.com.br/books/9788522127030). Cengage Learning Brasil, 2019

VARIAN, H. R. [Microeconomia: uma abordagem moderna](https://app.minhabiblioteca.com.br/books/9788595155107). 9.ed. Rio de Janeiro: Elsevier, 2015
"

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.51"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.0"
manifest_format = "2.0"
project_hash = "dcebd3174a85b0f68c71e8431fe1914ebcbe8db2"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.2+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "d75853a0bdbfb1ac815478bacd89cd27b550ace6"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.3"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "a5aef8d4a6e8d81f171b2bd4be5265b01384c74c"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.10"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "b478a748be27bd2f2c73a7690da219d0844db305"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.51"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "259e206946c293698122f63e2b513a7c99a244e8"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.1.1"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "7eb1686b4f04b82f96ed7a4ea5890a4f0c7a09f1"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "5.10.1+6"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "aadb748be58b492045b4f56166b5188aa63ce549"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.7"

[[deps.URIs]]
git-tree-sha1 = "074f993b0ca030848b897beff716d93aca60f06a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.7.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─a1aa557e-03db-11ee-34e6-d104c106eb09
# ╟─85636721-bdfe-4931-a5f6-ff2b3424b025
# ╟─5a5daea1-76e9-4227-914e-6eda89bda8c1
# ╟─d521b9a0-b435-4ccf-988a-1c5bb4c24a93
# ╟─e723428a-18a1-4365-81aa-e6593d1f1c5c
# ╟─4f27d138-5b77-44b3-8c42-890487ba3e0c
# ╟─a02c3486-68ac-4349-8983-9cc677c67dd6
# ╟─7a9ce2d8-35c1-427a-9372-e307e40fd565
# ╟─b8a7909a-af09-441a-9f0a-991e0367ff65
# ╟─da39aa33-83ce-4504-8fcf-915772179d8e
# ╟─afe49ef2-88ba-4a7c-9633-ec5c28ce5802
# ╟─c609bb0f-dcec-496a-bee6-4d76dfd069a7
# ╟─86fddf41-50a1-45b2-87ea-11c1d86b8441
# ╟─0ce9da62-56e8-401b-8f73-679ba2d5dc86
# ╟─20406724-bb47-404c-9d34-8973cd66f61c
# ╟─e7fc3a9a-edb7-40d7-9024-235cab20178c
# ╟─ccbd6014-11f9-48f2-beb2-f08fa21c357c
# ╟─a7f9c9df-cf51-400d-a438-edb8d36cb278
# ╟─8ec87fe3-a98d-4279-87f9-ed27c16a6c26
# ╟─351c82f9-25e7-4e4f-b37a-154040b04d97
# ╟─d5629cf7-3a10-4688-8a06-9bf946573925
# ╟─4bfd5a69-fc8f-498a-8ee1-0655dc77b190
# ╟─034ed565-77fa-4fc3-9376-0945d31bcf73
# ╟─b181162b-3dec-433c-9656-2443a30b154b
# ╟─a0192403-d3e8-463b-99cf-6b537a01a894
# ╟─90afdb29-63f2-47de-9ec5-a2df4c2cd264
# ╟─b74f35b2-d7ed-449d-9c44-4f4fc3d244b9
# ╟─f38e5ed6-421e-481d-ae0e-c488b31e082e
# ╟─2c787fc7-ab5e-405d-befc-cd4e4a3802d8
# ╟─6161e491-3150-4894-8a37-8f2ff8eb340e
# ╟─5e5bfaea-7907-4d31-96b9-b6e6b90ab6b7
# ╟─d75a77c6-11f9-4b66-912c-6cf613e9b113
# ╟─058cd477-479e-4ad4-8ffd-4efe1b05cda2
# ╟─f24a27fa-9652-4a7c-941f-910ace5fe8d4
# ╟─21567368-9473-4b40-8664-13fac52c0d9a
# ╟─30cf223c-3121-4a06-86a1-054f4580a12e
# ╟─b3b7d29b-63b5-4c0b-98da-e21d25f30061
# ╟─ccfb8268-f769-4d58-b613-57554b539dfb
# ╟─2e812924-dea6-4dd0-acc0-e0e15f41ca65
# ╟─c4f64f27-d80e-4d9b-a652-f03ec1c72f56
# ╟─0e3fea8f-c3f0-4f77-afa2-09964288ac25
# ╟─d565a390-479c-4885-a846-12758ff91ba2
# ╟─7b3277d5-af53-405c-b72b-8a2427d8c036
# ╟─f2ff5607-5d57-435b-a2ff-b95347281185
# ╟─56df8b45-11da-4004-aadc-bbeee03d1dcd
# ╟─5b017406-a4d7-4363-8eac-e4ba6f2bef00
# ╟─f6fffb2d-1167-4cf8-a39c-59f83ced194b
# ╟─ed21185b-0b97-4c56-96fb-ebfee3e0c2ca
# ╟─583d7b15-1241-4e41-a96c-d390b4d078bc
# ╟─76951cd6-ce41-4695-b207-fd9441cb8d76
# ╟─d9608af2-10f9-4c49-9198-d58b1c9ead1e
# ╟─1a370f57-90dd-4fe9-a557-81ce32a534c5
# ╠═e0022b6b-f4f7-4616-ab52-f62643dc742e
# ╟─b1fdc06c-ba3c-41cb-8bec-91688bb39c68
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
