### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ aa9a3091-ec78-4e06-8c01-c38ad4fee1d2
begin
	using PlutoUI
	using Plots
	using LaTeXStrings
	using Measures
	import PlutoUI: combine
	theme(:ggplot2)
	gr(size=(800,600), lw = 2, fontfamily = "Computer Modern", grid=true, tickfontsize = 12, guidefontsize=16, framestyle=:box, margin=3mm, right_margin=7mm, guidefonthalign=:right, guidefontvalign=:top)	
end

# ╔═╡ 94e82b5e-80ee-46de-b7b3-b4208b32e8d0
PlutoUI.TableOfContents(title="Sumário", indent=true)

# ╔═╡ c4905be0-a70a-11ed-2bc6-2b848eadee2f
md"""
# Conceitos iniciais $~~~~~~~~~~~~~~~$ $(Resource("https://www1.udesc.br/imagens/id_submenu/899/cor_horizontal_rgb.jpg", :width => 200))
"""

# ╔═╡ 36bd9a50-e97a-4fc2-86b1-c62a0ee3f31c
md"
* **Disciplina:** 23MICI - Microeconomia I
* **Data:**  07/03/2023
* **Docente:** [Paulo Victor da Fonseca](https://pvfonseca.github.io)
* **Contato:** [paulo.fonseca@udesc.br](mailto:paulo.fonseca@udesc.br)
"

# ╔═╡ b61777b2-f6ad-4ed7-909a-0353213f56bf
md"""
!!! danger "Aviso"
	O texto que segue não tem a menor pretensão de originalidade. Ele serve apenas como registro dos principais princípios, conceitos e técnicas analíticas que são trabalhados em sala de aula.
"""

# ╔═╡ 0c872825-d70a-4a7b-b7e5-be1e3ca69680
html"<button onclick='present()'>Apresentação</button>"

# ╔═╡ 45d932c9-7332-4026-b492-528461ee42b6
md"
## Introdução
"

# ╔═╡ ce82a70c-14fd-4f6d-a8f6-92cbdf7333f9
md"
Uma característica distintiva da teoria microeconômica é se propor a modelar a atividade econômica como interações de agentes econômicos individuais que buscam satisfazer seus interesses privados.

A disciplina de Microeconomia I tem como foco a **tomada de decisão no nível individual**.

Como é tradicional em microeconomia, faremos distinção entre dois conjuntos de agentes: **consumidores e firmas individuais**.

Quando consideramos a teoria da decisão individual, temos duas abordagens distintas de modelagem para as decisões de um agente:

1. **Abordagem baseada nas preferências:** assume que o agente tomador de decisão possui uma relação de preferência sobre o conjunto de escolhas possíveis que satisfaz certos axiomas de racionalidade.
* Descrição dos ''gostos'' dos indivíduos.
* Imposição de hipóteses de racionalidade.
* Análise das implicações para comportamento individual.

2. **Abordagem baseada nas escolhas:** foca diretamente no comportamento de escolhas do agente, impondo algumas restrições de consistência.
* Imposição de critérios de consistência sobre as escolhas observadas.
* Interpretação das escolhas observadas como preferências reveladas.
"

# ╔═╡ 7579a2d8-9922-4c38-a793-76d855520fe0
md"""
!!! warning "Abordagens distintas"
	A abordagem baseada nas preferências é a mais tradicional e, portanto, é a que será enfatizada ao longo do curso.

	A abordagem de preferência relevada, e a relação entre os dois tratamentos distintos, será brevemente analisada na parte final do bloco de Teoria do Consumidor.
"""

# ╔═╡ 9d8266c5-818f-4825-b9d4-1684eede6495
md"
## Noções primitivas
"

# ╔═╡ 75052c23-2517-4e3d-8dca-d1e48e745935
md"
Existem quatro blocos fundamentais para qualquer modelo de escolha do consumidor:
* Conjunto (campo) de escolha
* Conjunto factível (viável)
* Relação de preferências
* Hipótese comportamental

Ao longo do curso analisaremos o comportamente do consumidor individual. Mas cabe ressaltar que a estrutura básica acima descrita é extremamente geral e, portanto, flexível. Ao especificarmos a forma com que cada um destes componentes assume em um dado contexto, muitas situações distintas envolvendo escolha podem ser formalmente descritas e analisadas.
"

# ╔═╡ b05b7f51-9e98-4e3e-8cbf-8b753cd29561
md"
### Conjunto consumo
---
"

# ╔═╡ 0b443d0f-65a0-4827-bd44-a6146535ac50
md"
> **Noção primitiva**: bem ou mercadoria.
"

# ╔═╡ cdb8f825-0c56-4503-a524-95632adcf229
md"
Um bem ou mercadoria será tudo o que pode ser usado, armazenado ou consumido: bens físicos, serviços, trabalho ou lazer, etc.
"

# ╔═╡ 875b6971-dd2c-45af-82b8-3d530019fdbf
md"""
!!! correct "Definição - Cesta de consumo"
	Uma **cesta de consumo** é um vetor $x \in \mathbb{R}^n$  que especifica a quantidade de cada um dos $n$ bens existentes denotado por:
	
	$$x = \begin{bmatrix}x_1 & x_2 & \dots & x_n \end{bmatrix} \quad \text{ou} \quad x = \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_n\end{bmatrix}.$$

	Sendo $x_i$ a quantidade do $i$-ésimo bem em um dado intervalo de tempo.
"""

# ╔═╡ 57a3f60d-c416-435b-befc-335b3acfda66
md"""
!!! warning "Observações"
	1. Note que aqui estamos adotando a hipótese de que todos os bens são perfeitamente divisíveis.
	
	2. Elementos negativos na cesta de consumo, normalmente, representam débitos ou saídas líquidas de bens.
"""

# ╔═╡ 19b0bee7-4909-4075-bb55-f08cf32766f5
md"
Nosso ponto de partida é o universo de todas as opções disponíveis ao consumidor.

Todas essas escolhas potenciais disponíveis a um indivíduo são representadas pelo que chamamos de **conjunto de escolha**. No contexto da teoria do consumidor, este conjunto é chamado de **conjunto consumo**.
"

# ╔═╡ 5c80aa3a-98ae-4b12-b03d-880eb1908aa7
md"
> Espaço de mercadorias: $\mathbb{R}^n$.
"

# ╔═╡ b1ef4740-f074-4333-b1ce-154291e0c846
md"""
!!! correct "Definição - Conjunto consumo"
	O **conjunto consumo** $X \subset \mathbb{R}^n$ é o campo de escolha do consumidor, subconjunto do espaço de mercadorias, formado por todas as cestas de consumo que o consumidor pode conceber - sendo elas possíveis de serem adquiridas ou não - dadas as restrições impostas pelo ambiente físico.
"""

# ╔═╡ 4273bad5-16bb-455a-8e91-9e70646b175d
md"
> ⚠️ Note que o conjunto consumo enumera, apenas, as possibilidades que o consumidor gostaria de consumir, e não o que realmente é possível de ser consumido.
"

# ╔═╡ 5cbbcad7-412c-4d9a-811a-6e6c96bbe7e1
md"
No entanto, sabemos que em muitas situações, o universo de escolhas dos consumidores está sujeito a restrições que são comuns a todos os agentes.
"

# ╔═╡ f4d7393d-9c42-4c86-bbde-d53496196dfa
md"""
#### Exemplos
"""

# ╔═╡ 218dcac2-efae-4451-941a-5aa2ded3bc51
md"
Em todos os exemplos abaixo estamos impondo restrição de não-negatividade sobre o conjunto consumo e, além disso, considerando o caso em que $n = 2$.
"

# ╔═╡ 22787c04-4085-401a-b75a-1927eb713e52
md"
---
###### Restrições físicas
---
"

# ╔═╡ 2958c303-33ca-42e7-8077-da1f0f81af7d
md"
1. Restrição física imposta sobre as possibilidades de escolha entre lazer e uma mercadoria qualquer (e.g., coca-cola): não é possível consumir mais que 24h de lazer por dia.
"

# ╔═╡ 676a4a02-5893-4b27-84e1-c6b2b1d1bcf0
begin	
	hline([24], fill = (0, 0.3, :orange), yticks=0:24:30, ylims=(0, 30), xticks=:none, label=:none, lw=1, lcolor=:orange)	
	xlabel!("Coca-cola")
	ylabel!("Horas de lazer")
	scatter!((1.98,22), marker=(25,0.4,:lightblue), series_annotations = [text(L"X", :center, 18)], label=:none)
	annotate!([(1.9, 25, text("Restrição Física", color=:darkblue))])
end

# ╔═╡ 1d8b3e59-b47c-4c5d-8ed0-bcf129dae084
md"
2. Bens indivisíveis: a figura abaixo representa uma situação em que o primeiro bem (coca-cola) é perfeitamente divisível, enquanto o segundo (casa) está disponível apenas em quantidades inteiras não-negativas.

Neste caso, o consumidor está impedido de escolher qualquer cesta $x \notin \mathbb{R}_+ \times \mathbb{Z}_+$.
"

# ╔═╡ c6dd676b-269f-42f8-9881-99186cc75cbf
begin	
	hline([1, 2, 3], label=:none, lw=1, lc=[:black :black :black])
	ylims!(0,3.5)
	xlims!(0,1)
	yticks!(0:1:4)
	xticks!(:none)
	xlabel!("Coca-cola")
	ylabel!("Casas")	
	scatter!((1,2.1), marker=(25,0.4,:lightblue), series_annotations = [text(L"X", :center, 18)], label=:none)
	quiver!([0.98],[2.23],quiver=([-0.07],[0.77]), color=:darkblue, lw=0.5, ls=:dot)
	quiver!([0.99],[1.96],quiver=([-0.07],[-0.94]), color=:darkblue, lw=0.5, ls=:dot)	
	annotate!([(1.12, 2, text(L"X"))])
end

# ╔═╡ 9db4e4b3-8c9b-466b-bc8a-55c6d384a05c
md"
3. A próxima figura ilustra o fato de que é impossível almoçar no mesmo instante no RU e no shopping.
"

# ╔═╡ 7dd46758-bea7-41ba-8c09-5756eeabb92f
begin	
	plot(Shape([(0,0), (0,1)]),lw=1,legend=:none)
	plot!(Shape([(0,0), (1,0)]),lw=1,legend=:none)#, arrow=true, annotations = [(0.3, 0.2, L"X")], color=:blue)
	xlabel!("Almoço RU 12h")
	ylabel!("Almoço shopping 12h")
	xlims!(0,0.9)
	ylims!(0,0.9)
	xticks!(:none)
	yticks!(:none)
	quiver!([0.1],[0.08],quiver=([0],[-0.07]), color=:darkblue, lw=0.5, ls=:dash)
	quiver!([0.08],[0.1],quiver=([-0.07],[0]), color=:darkblue, lw=0.5, ls=:dash)
	annotate!([(0.1, 0.1, L"X")])
end

# ╔═╡ be9f4608-0048-4de3-802c-57c2f696812f
md"
4. Suponha, agora, uma situação sob a qual o consumidor necessita de, no mínimo, 4 unidades de pães/dia para assegurar sua sobrevivência. Além disso, assuma a existência de dois tipos de pães (francês e integral).
"

# ╔═╡ 8c60382b-8839-4811-8722-d0f863e2b4b2
begin
	plot(Shape([(4,0), (10, 0), (10, 10), (0, 10), (0, 4)]), fill=(0.3, :orange), lw=0, legend=:none)
	plot!([(4,0), (0,4)], lw=2, lc=:orange)
	xlims!(0,9)
	ylims!(0,9)
	hline!([0], lc=:black, lw=1, ls=:dash)
	vline!([0], lc=:black, lw=1, ls=:dash)
	xlabel!("Pão francês")
	ylabel!("Pão integral")
	scatter!((8.9,8.8), marker=(25,0.4,:lightblue), series_annotations = [text(L"X", :center, 18)], label=:none)
end

# ╔═╡ b3f3ea17-f1cb-4a2f-aeae-e425a4e1350d
md"
---
###### Restrições institucionais
---
"

# ╔═╡ 31ebab5a-0c6c-4824-ac67-3632831410a1
md"
1. Existência de uma legislação trabalhista que proíba que o trabalhador oferte mais do que 16h de trabalho diárias.
"

# ╔═╡ a92a02de-59c8-4673-bbea-688531ad1d40
begin	
	plot(Shape([(0,8), (1.2,8), (1.2,24), (0,24)]), fill = (0, 0.3, :orange), ylims=(0, 30), xlims=(0,1), label=:none, lw=1, lcolor=:orange)
	xticks!([0])
	yticks!([8, 24])
	xlabel!("Coca-cola")
	ylabel!("Horas de lazer")
	scatter!((0.98,22), marker=(25,0.4,:lightblue), series_annotations = [text(L"X", :center, 18)], label=:none)
	annotate!([(0.9, 25, text("Restrição Física", color=:darkblue))])
	annotate!([(0.85, 7, text("Restrição Institucional", color=:darkblue))])
end

# ╔═╡ 6a6237ed-67cb-4025-89a0-3dca9fee8841
md"
2. Racionamento, e.g., uma proibição de que o consumidor adquira mais do que 20l de leite mensalmente.
"

# ╔═╡ caa7e0e5-734b-45e8-addd-a20b19ba2a2e
begin		
	plot(Shape([(0,0), (0,20), (1,20), (1,0)]), xlims=(0,0.97), ylims=(0, 30), fill = (0, 0.3, :darkorange), label=:none, lw=0, lcolor=:orange)
	xticks!([0])
	yticks!([0, 20])
	xlabel!("Pão") 
	ylabel!("Leite")
	scatter!((0.96,18), marker=(25,0.4,:lightblue), series_annotations = [text(L"X", :center, 18)], label=:none)
	annotate!([(0.82, 21, text("Restrição Institucional", color=:darkblue))])
end

# ╔═╡ 882a0c7a-be77-4743-b3db-84d5fe4f38aa
md"""
> Ao longo do curso, assumiremos um conjunto consumo igual ao espaço de mercadorias (que restringiremos ao ortante não-negativo):
>
> $$X = \mathbb{R}_+^n.$$
"""

# ╔═╡ 911de4eb-9041-477d-be5e-7ddc7afb9c7b
md"""
!!! warning "Observação"
	Em muitos dos casos, para possibilitar a análise gráfica, adotaremos a hipótese de dois bens, i.e., o espaço de mercadorias é igual ao $\mathbb{R}_+^2$.

	Esta hipótese não é tão restritiva quanto aparenta: se nosso objetivo é estudar a demanda de um tipo qualquer de mercadoria, sob algumas condições, podemos agregar todos os outros bens em um **bem composto**.
"""

# ╔═╡ bed6d7dc-c1bf-47cc-8a25-c03c1e5c29a3
begin
	plot(Shape([(0,0), (0,1), (1,1), (1,0)]), fill=(0, 0.3, :orange), legend=:none, lw=0, grid=true)
	xlims!(0, 0.9)
	ylims!(0, 0.9)
	xticks!([0])
	yticks!([0])
	vline!([0], ls=:dashdot,lw=0.5,lcolor=:black)
	hline!([0], ls=:dashdot,lw=0.5,lcolor=:black)
	xlabel!(L"x_1")
	ylabel!(L"x_2")
	scatter!((0.83,0.8), marker=(65,0.4,:lightblue), series_annotations = [text(L"\quad X = \mathbb{R}_+^2", :center, 18)], label=:none)
end

# ╔═╡ d9bc624b-4c74-4f7e-a3d1-82001504643a
md"
### Conjunto factível
---
"

# ╔═╡ ab5c8da1-cab3-4048-be05-d81ed44246de
md"
Tipicamente as escolhas não são feitas de maneira irrestrita. Adicionalmente às restrições físicas e institucionais incorporadas ao conjunto consumo, os consumidores se deparam com restrições econômicas relevantes, e.g., sua escolha de consumo é limitada àquelas cestas de consumo passíveis de serem adquiridas.
"

# ╔═╡ bb5146e5-4ba4-4a83-a3b6-9674086966c7
md"""
!!! correct "Definição - Conjunto factível"
	O **conjunto factível** $B \subset X$ é o subconjunto do conjunto consumo que permanece após levarmos em consideração todas as restrições impostas sobre o acesso dos consumidores às mercadorias, sejam elas físicas, institucionais ou econômicas.
"""

# ╔═╡ 494b83f9-63ec-4e8e-90ab-324d01e0cea0
md"""
🔶 Aqui adotaremos como conjunto factível, o **conjunto orçamentário competitivo (ou Walrasiano)**.

[$(Resource("https://upload.wikimedia.org/wikipedia/commons/5/5d/Walrass.jpg", width => 400))](https://pt.wikipedia.org/wiki/L%C3%A9on_Walras)
"""

# ╔═╡ 1ddbc63a-bc5b-4777-b843-f2386077229f
md"""
!!! correct "Definição - Conjunto orçamentário competitivo (ou Walrasiano)"
	O conjunto orçamentário competitivo (ou Walrasiano) é o subconjunto $\mathcal{B}$ do espaço de mercadorias $X$ formado pelas cestas de consumo que um consumidor pode efetivamente adquirir ao se deparar com um vetor de preços unitários $\textbf{p} \in \mathbb{R}^n$ e tendo uma renda $I \in \mathbb{R}_+$.

	Formalmente:
	
	$$\mathcal{B}(\textbf{p},I) = \{\textbf{x} \in \mathbb{R}_+^n| \textbf{p} \cdot \textbf{x} \leq I\}. \label{eq1}\tag{1}$$
"""

# ╔═╡ f27ff794-cdb9-4931-88f3-20049b35b0df
md"""
> ⚠ Note que $\textbf{p} \cdot \textbf{x} \equiv \sum_{i=1}^n p_i x_i$.
> 
> * O problema do consumidor é, portanto, enunciado da seguinte forma: _Escolher uma cesta de consumo $x$ do conjunto orçamentário competitivo $\mathcal{B}(\textbf{p},I)$_.
"""

# ╔═╡ 68173882-f3dc-4b70-853b-c3d0a8a2b414
md"""
!!! warning "Hipóteses subjacentes"
	1. O consumidor é **tomador de preços**.
	2. **Mercados completos**.
"""

# ╔═╡ 4aa52e04-f6f8-4ad5-b8dd-32221bbf972c
begin
	plot([0, 25], [25, 0], fill=(0, 0.4, :navyblue), lw=0, grid=true, label=:none)
	scatter!((7.5,10), marker=(50,0.4,:white), series_annotations = [text(L"\mathcal{B}(\textbf{p}, I)", :center, 18)], label=:none)	
	xlims!(0, 28)
	ylims!(0, 28)
	xlabel!(L"x_1")
	ylabel!(L"x_2")
	xticks!([0, 25], [L"0", L"I/p_1"])
	yticks!([0, 25], [L"0", L"I/p_2"])	
end

# ╔═╡ 21b0a1f3-1ecb-43d1-8c78-0c831cac3975
md"""
!!! correct "Definição - Hiperplano orçamentário"
	O **hiperplano orçamentário** é o conjunto de cestas de consumo que custam exatamente $I$ unidades monetárias (i.e., a restrição é satisfeita com igualdade). Formalmente:

	$$\bar{\mathcal{B}}(\textbf{p},I) \equiv \{\textbf{x} \in X| \textbf{p}\cdot\textbf{x} = I\} \subset \mathcal{B}.\label{eq2}\tag{2}$$
	
	Em particular, quando há somente dois bens o hiperplano orçamentário torna-se uma **reta orçamentária**.
"""

# ╔═╡ 8fd22a46-8fa1-416b-8827-163ed0be8180
begin
	plot([0, 25], [25, 0], fill=(0, 0.4, :navyblue), lw=0, grid=true, label=:none)
	scatter!((7.5,10), marker=(50,0.4,:white), series_annotations = [text(L"\mathcal{B}(\textbf{p}, I)", :center, 18)], label=:none)
	plot!([0,25], [25,0], lc=:black, label="Hiperplano orçamentário")	
	xlims!(0, 28)
	ylims!(0, 28)
	xlabel!(L"x_1")
	ylabel!(L"x_2")
	xticks!([0, 25], [L"0", L"I/p_1"])
	yticks!([0, 25], [L"0", L"I/p_2"])
	quiver!([13.8],[14.5],quiver=([-1.5],[-1.5]), color=:black, lw=0.5, ls=:dash)
	annotate!([(18, 15, L"Inclinação = -\frac{p_1}{p_2}")])
end

# ╔═╡ d8a0ca44-89db-43a5-a781-0dddf7ad36e1
md"""
> * A inclinação da reta orçamentária informa o valor de troca de mercado entre os dois bens: para se obter uma unidade adicional do bem $1$, temos que abrir mão de $−p_1/p_2$ unidades do bem $2$.
>
> * A inclinação da reta orçamentária é, portanto, o **custo de oportunidade** do bem $2$ em termos do bem $1$.
>
> * Mostre que a inclinação da reta orçamentária ($n = 2$) é igual a $-p_1/p_2$.
"""

# ╔═╡ d1fb617e-52bc-4035-99fa-a4a5a40d3099
md"""
!!! hint "Inclinação da reta orçamentária"
	Suponha que o consumidor esteja dispendendo toda sua renda consumindo $x_1$ unidades do bem $1$ e $x_2$ unidades do bem $2$:

	$$p_1 x_1 + p_2 x_2 = I \tag{a}.$$

	Caso este agente decida aumentar o consumo do bem $1$ em $\Delta x_1$ unidades, deverá abrir mão de uma quantidade do bem $2$, representada por $\Delta x_2$, de modo que a reta orçamentária continue válida. Formalmente:

	$$p_1(x_1 + \Delta x_1) + p_2(x_2 + \Delta x_2) = I. \tag{b}$$

	Subtraindo (b) de (a), obtemos:

	$$p_1 \Delta x_1 + p_2 \Delta x_2 = 0 \Rightarrow \frac{\Delta x_2}{\Delta x_1} = -\frac{p_1}{p_2}. \tag{c}$$
"""

# ╔═╡ d53eb652-d8aa-4226-b913-c7700be495eb
md"
##### Efeitos de variações na renda e nos preços
"

# ╔═╡ 2006361d-c13c-406d-bf52-6bf72bd315be
begin
	precox = @bind px Slider(1:0.5:4, default=2)
	precoy = @bind py Slider(1:0.5:4, default=2)
	renda  = @bind I  Slider(40:2:60, default=50)

	md"""
	* Qual o efeito sobre o conjunto orçamentário quando os preços unitários variam?
	
	Preço de x: $(precox)
	
	Preço de y: $(precoy)
	
	Renda: $~~~~~$ $(renda)
	"""
end

# ╔═╡ e720fae6-0d86-49cd-888c-1bec92979351
begin
	plot([0, 25], [25, 0], fill=(0, 0.7, :black), label="Conjunto original", lw=0, grid=true)
	plot!([0, I/px], [I/py, 0], fill=(0, 0.5, :orange), label="Conjunto pós-variação", lw=0, grid=true)
	xlims!(0, 50)
	ylims!(0, 50)
	xlabel!(L"x")
	ylabel!(L"y")	
end

# ╔═╡ 1e80a601-4273-419e-bc9f-1a5abefa5aa5
md"""
| Variável |  Valor padrão | Novo valor |
| :--- |  ---: | ---: |
| Preço de x |  2.0 | $px |
| Preço de y |  2.0 | $py |
| Renda |  50 | $I |
"""

# ╔═╡ 0ea2b0d0-1c4d-47d2-8b0e-d718c5ca3075
md"""
* Considere o conjunto orçamentário definido em ($\ref{eq1}$).

* O que ocorreria caso todos os preços e a renda aumentassem na mesma proporção $\lambda$?

$\begin{align}
(\lambda p_1) x_1 + \dots + (\lambda p_n) x_n &\leq \lambda I, \\
p_1 x_1 + \dots + p_n x_n &\leq I.
\end{align}$

* Intuitivamente, se todos os preços da economia aumentam (ou diminuem) na mesma proporção, incluindo a renda, então, nada muda no universo de escolhas factíveis.

* Podemos, então, transformar um dos preços da economia em **numerário** (normalizar o preço de um bem em 1). Por exemplo, se adotamos o bem 1 como bem-numerário, temos:

$$x_1 + \frac{p_2}{p_1}x_2 + \frac{p_3}{p_1}x_3 + \dots + \frac{p_n}{p_1}x_n \leq \frac{I}{p_1}.$$
"""

# ╔═╡ 7dd2a254-9a2a-4313-b81c-16fa0f7552a8
md"
##### Não-linearidades
O hiperplano orçamentário definido em ($\ref{eq2}$) é linear. Neste caso, descreve um mercado sem custos de transação, racionamentos, alíquotas de impostos sobre a renda ou produtos, descontos por quantidade, pagamentos de hora-extra, etc.
"

# ╔═╡ c80e486b-4825-4daa-b759-ba43105ad873
md"
###### 1. Racionamento
* Suponha uma economia com dois bens onde o governo decide racionar o consumo de um dos bens (sem perda de generalidade, o bem 1).
* Cada consumidor pode adquirir, no máximo, $\bar{x_1}$ unidades do bem 1, ainda pagando o preço $p_1$ para qualquer $x_1 \leq \bar{x_1}$.
* Acima de $\bar{x_1}$, o consumidor não pode mais adquirir este bem.
* Duas situações são possíveis:

$$\begin{cases}
	\bar{x_1} \geq I/p_1, & \quad \text{não há alterações na reta orçamentária} \\
	\bar{x_1} \leq I/p_1, & \quad \text{consumo normal até $\bar{x_1}$, a partir deste ponto não é mais possível consumir o bem 1.}
\end{cases}$$

* Neste caso, portanto, o conjunto orçamentário passa a ser:

$$\mathcal{B}(\textbf{p}, I; \bar{x_1}) = \{x \in X| \textbf{p}\cdot \textbf{x} \leq I \quad \text{e} \quad x_1\leq \bar{x_1} \}.$$
"

# ╔═╡ c8426078-8185-4830-855d-1f14b8cc7e1d
begin
	plot(Shape([(0,0), (5,0), (5,5), (0,10)]), fill=(0, 0.4, :darkorange), lw=0,label=:none)
	plot!([(0,10), (10,0)], ls=:dash, lw=1, lc=:black, label=:none)
	plot!([(0,10), (5,5), (5,0)], lw=2, lc=:black, label="Reta orçamentária")
	xlabel!(L"x_1")
	ylabel!(L"x_2")
	scatter!((2,4), marker=(50,0.4,:white), series_annotations = [text(L"\mathcal{B}(\textbf{p}, I; \bar{x_1})", :center, 13)], label=:none)
end

# ╔═╡ 56920984-059c-486d-9fbc-7f02e626def1
md"
###### 2. Taxação por nível de consumo
* Certos bens possuem preços que variam de acordo com a quantidade consumida (e.g., energia elétrica, água).
* Para um pequeno consumo de água, o governo cobra um preço menor por litro consumido que o preço cobrado para consumos maiores.
* Motivação: evitar desperdícios, beneficiar a parcela mais pobre da população que tende a consumir menos água em média, etc.
* Suponha, então, a seguinte situação:

$$\begin{cases}
	x_1 \in [0, \bar{x_1}], & \quad \text{preço} \quad p_1, \\
	x_1 \in (\bar{x_1}, +\infty), & \quad \text{preço} \quad p_1^{'} > p_1.
\end{cases}$$
"

# ╔═╡ 3077c2ea-3685-47b1-9ce9-8a4e54d59dd8
begin
	plot(Shape([(0,0), (7.5,0), (5,5), (0,10)]), fill=(0, 0.4, :darkorange), lw=0,label=:none)
	plot!([(0,10), (5,5), (7.5,0)],lw=2,lc=:black,label="Reta orçamentária")
	plot!([(5,0), (5,5)], ls=:dash, lw=1, lc=:black, label=:none)
	xticks!([0, 5], ["0", L"\bar{x_1}"])
	yticks!([0, 10], ["0", L"\frac{I}{p_2}"])
	xlabel!(L"x_1")
	ylabel!(L"x_2")
	quiver!([2.5],[9.2],quiver=([0],[-1.5]), color=:black, lw=0.5, ls=:dash)
	annotate!([(2.5, 9.5, L"Inclinação = -\frac{p_1}{p_2}")])
	quiver!([6.5],[4.7],quiver=([-0.5],[-1.5]), color=:black, lw=0.5, ls=:dash)
	annotate!([(6.5, 5, L"Inclinação = -\frac{p_1^{'}}{p_2}")])
end

# ╔═╡ 5fd9df4d-7787-49c6-9333-9e2c893c64a7
md"
---
**Imposto sobre quantidade:**

* Suponha que o consumidor tenha de pagar uma quantia $t > 0$ por unidade adquirida do bem 1.
* O preço efetivamente pago, portanto, é $p_1 + t$.
* Assim, a nova reta orçamentária é dada por: $(p_1 + t)x_1 + p_2x_2 = I$.
* Note que a reta orçamentária torna-se mais íngreme.
"

# ╔═╡ cd82a001-4da7-4e92-a75d-2d9c4c6dd646
begin
	imposto = @bind t Slider(0:0.5:4, default = 0)
	md"""
	Imposto sobre quantidade ($t$) = $(imposto)
	"""
end

# ╔═╡ 3d2617c8-1bc8-4082-9dca-9b180c174500
begin
	m = 60 # renda
	preco1 = 4 # preço do bem 1
	preco2 = 4 # preço do bem 2
	plot(range(0, stop=15, length = 50), x -> m/preco2 - preco1/preco2 * x, lc=:black, lw=2, label=L"t = 0")
	plot!(range(0, stop=15, length = 50), x -> m/preco2 - ((preco1 + t)/preco2) * x, lc=:darkorange, lw=2, ls=:dash, label="t = $t")
	ylims!(0.3, 15)	
	xlabel!(L"x_1")
	ylabel!(L"x_2")
	xticks!([0, 15, m/(preco1 + t)], ["0", L"\frac{I}{p_1}", L"\frac{I}{p_1 + t}"])
	yticks!([0, m/preco2], ["0", L"\frac{I}{p_2}"])
end

# ╔═╡ 391cb663-ea13-4f6b-b54d-492a2c278628
md"
---
**Imposto _ad valorem_:**

* Suponha que o consumidor tenha de pagar uma fração $0 < \tau < 1$ sobre o valor de compra do bem 1.
* O preço efetivamente pago, portanto, é $(1 + \tau)p_1$.
* Assim, a nova reta orçamentária é dada por: $(1 + \tau)p_1x_1 + p_2x_2 = I$.
* Note que a reta orçamentária torna-se mais íngreme.
"

# ╔═╡ 67f2b85a-1542-4a88-a075-5a9e58057f58
begin
	taxa = @bind τ Slider(0:0.1:1, default = 0)
	md"""
	Imposto _ad valorem_: ($\tau$) = $(taxa)
	"""
end

# ╔═╡ c7e4b166-3a2b-40d9-af0a-8abe258016fe
begin
	m0 = 60 # renda
	preco10 = 4 # preço do bem 1
	preco20 = 4 # preço do bem 2
	plot(range(0, stop=15, length = 50), x -> m0/preco20 - preco10/preco20 * x, lc=:black, lw=2, label=L"\tau = 0")
	plot!(range(0, stop=15, length = 50), x -> m0/preco20 - ((1 + τ)preco10)/preco20 * x, lc=:darkorange, lw=2, ls=:dash, label=L"\tau" * " = $(τ)")
	ylims!(0.3, 15)	
	xlabel!(L"x_1")
	ylabel!(L"x_2")
	xticks!([0, 15, m0/((1 + τ) * preco10)], ["0", L"\frac{I}{p_1}", L"\frac{I}{(1 + \tau)p_1}"])
	yticks!([0, m0/preco20], ["0", L"\frac{I}{p_2}"])
end

# ╔═╡ 1d9d65b2-16ab-4d83-ad02-f687b930e7d3
md"""
## 📚 Bibliografia

JEHLE, G. A.; RENY, P. J. Advanced microeconomic theory. 3.ed. Pearson Education Limited, 2011.

MAS-COLELL, A.; WHINSTON, M.D.; GREEN, J.R. Microeconomic Theory. New York, NY: Oxford University Press, 1995.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LaTeXStrings = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
Measures = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
LaTeXStrings = "~1.3.0"
Measures = "~0.3.2"
Plots = "~1.38.4"
PlutoUI = "~0.7.49"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.0"
manifest_format = "2.0"
project_hash = "8a424a354113296559ff4da205f2c59cbfd6cf4e"

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

[[deps.BitFlags]]
git-tree-sha1 = "43b1a4a8f797c1cddadf60499a8a077d4af2cd2d"
uuid = "d1d4a3ce-64b1-5f1a-9ba4-7e7e69966f35"
version = "0.1.7"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "CompilerSupportLibraries_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "4b859a208b2397a7a623a03449e4636bdb17bcf2"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+1"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "c6d890a52d2c4d55d326439580c3b8d0875a77d9"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.15.7"

[[deps.ChangesOfVariables]]
deps = ["LinearAlgebra", "Test"]
git-tree-sha1 = "844b061c104c408b24537482469400af6075aae4"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.5"
weakdeps = ["ChainRulesCore"]

    [deps.ChangesOfVariables.extensions]
    ChainRulesCoreExt = "ChainRulesCore"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "9c209fb7536406834aa938fb149964b985de6c83"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.1"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "ColorVectorSpace", "Colors", "FixedPointNumbers", "Random", "SnoopPrecompile"]
git-tree-sha1 = "aa3edc8f8dea6cbfa176ee12f7c2fc82f0608ed3"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.20.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "SpecialFunctions", "Statistics", "TensorCore"]
git-tree-sha1 = "600cc5508d66b78aae350f7accdb58763ac18589"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.9.10"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "fc08e5930ee9a4e03f84bfb5211cb54e7769758a"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.10"

[[deps.Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "61fdd77467a5c3ad071ef8277ac6bd6af7dd4c04"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.6.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.2+0"

[[deps.Contour]]
git-tree-sha1 = "d05d9e7b7aedff4e5b51a029dced05cfb6125781"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.6.2"

[[deps.DataAPI]]
git-tree-sha1 = "e8119c1a33d267e16108be441a287a6981ba1630"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.14.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "d1fff3a548102f48987a52a2e0d114fa97d730f0"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.13"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
git-tree-sha1 = "9e2f36d3c96a820c678f2f1f1782582fcf685bae"
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"
version = "1.9.1"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "2fb1e02f2b635d0845df5d7c167fec4dd739b00d"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.3"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bad72f730e9e91c08d9427d5e8db95478a3c323d"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.4.8+0"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "PCRE2_jll", "Pkg", "Zlib_jll", "libaom_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "74faea50c1d007c85837327f6775bea60b5492dd"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.2+2"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "87eb71354d8ec1a96d4a7636bd57a7347dde3ef9"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.4+0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "d972031d28c8c8d9d7b41a536ad7bb0c2579caca"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.8+0"

[[deps.GR]]
deps = ["Artifacts", "Base64", "DelimitedFiles", "Downloads", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Pkg", "Preferences", "Printf", "Random", "Serialization", "Sockets", "TOML", "Tar", "Test", "UUIDs", "p7zip_jll"]
git-tree-sha1 = "9e23bd6bb3eb4300cb567bdf63e2c14e5d2ffdbc"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.71.5"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Pkg", "Qt5Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "aa23c9f9b7c0ba6baeabe966ea1c7d2c7487ef90"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.71.5+0"

[[deps.Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE2_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "d3b3624125c1474292d0d8ed0f65554ac37ddb23"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.74.0+2"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HTTP]]
deps = ["Base64", "CodecZlib", "Dates", "IniFile", "Logging", "LoggingExtras", "MbedTLS", "NetworkOptions", "OpenSSL", "Random", "SimpleBufferStream", "Sockets", "URIs", "UUIDs"]
git-tree-sha1 = "37e4657cd56b11abe3d10cd4a1ec5fbdb4180263"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "1.7.4"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "129acf094d168394e80ee1dc4bc06ec835e510a3"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+1"

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
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.IniFile]]
git-tree-sha1 = "f550e6e32074c939295eb5ea6de31849ac2c9625"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.1"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "49510dfcb407e572524ba94aeae2fced1f3feb0f"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.8"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.JLFzf]]
deps = ["Pipe", "REPL", "Random", "fzf_jll"]
git-tree-sha1 = "f377670cda23b6b7c1c0b3893e37451c5c1a2185"
uuid = "1019f520-868f-41f5-a6de-eb00f4b6a39c"
version = "0.1.5"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b53380851c6e6664204efb2e62cd24fa5c47e4ba"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.2+0"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bf36f528eec6634efc60d7ec062008f171071434"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "3.0.0+1"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "OrderedCollections", "Printf", "Requires"]
git-tree-sha1 = "2422f47b34d4b127720a18f86fa7b1aa2e141f29"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.18"

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

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[deps.Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "6f73d1dd803986947b2c750138528a999a6c7733"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.6.0+0"

[[deps.Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c7cb1f5d892775ba13767a87c7ada0b980ea0a71"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+2"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "3eb79b0ca5764d4799c06699573fd8f533259713"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.4.0+0"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["DocStringExtensions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "680e733c3a0a9cea9e935c8c2184aea6a63fa0b5"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.21"
weakdeps = ["ChainRulesCore", "ChangesOfVariables", "InverseFunctions"]

    [deps.LogExpFunctions.extensions]
    ChainRulesCoreExt = "ChainRulesCore"
    ChangesOfVariablesExt = "ChangesOfVariables"
    InverseFunctionsExt = "InverseFunctions"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoggingExtras]]
deps = ["Dates", "Logging"]
git-tree-sha1 = "cedb76b37bc5a6c702ade66be44f831fa23c681e"
uuid = "e6f89c97-d47a-5376-807f-9c37f3926c36"
version = "1.0.0"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "42324d08725e200c23d4dfb549e0d5d89dede2d2"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.10"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "MozillaCACerts_jll", "Random", "Sockets"]
git-tree-sha1 = "03a9b9718f5682ecb107ac9f7308991db4ce395b"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.1.7"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+0"

[[deps.Measures]]
git-tree-sha1 = "c13304c81eec1ed3af7fc20e75fb6b26092a1102"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.2"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "f66bdc5de519e8f8ae43bdc598782d35a25b1272"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.1.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "a7c3d1da1189a1c2fe843a3bfa04d18d20eb3211"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.0.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "887579a3eb005446d514ab7aeac5d1d027658b8f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+1"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.1+0"

[[deps.OpenSSL]]
deps = ["BitFlags", "Dates", "MozillaCACerts_jll", "OpenSSL_jll", "Sockets"]
git-tree-sha1 = "6503b77492fd7fcb9379bf73cd31035670e3c509"
uuid = "4d8831e6-92b7-49fb-bdf8-b643e874388c"
version = "1.3.3"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6e9dba33f9f2c44e08a020b0caf6903be540004"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.19+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.PCRE2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "efcefdf7-47ab-520b-bdef-62a2eaa19f15"
version = "10.42.0+0"

[[deps.Parsers]]
deps = ["Dates", "SnoopPrecompile"]
git-tree-sha1 = "18f84637e00b72ba6769034a4b50d79ee40c84a9"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.5"

[[deps.Pipe]]
git-tree-sha1 = "6842804e7867b115ca9de748a0cf6b364523c16d"
uuid = "b98c9c47-44ae-5843-9183-064241ee97a0"
version = "1.3.0"

[[deps.Pixman_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b4f5d02549a10e20780a24fce72bea96b6329e29"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.40.1+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.0"

[[deps.PlotThemes]]
deps = ["PlotUtils", "Statistics"]
git-tree-sha1 = "1f03a2d339f42dca4a4da149c7e15e9b896ad899"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "3.1.0"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "Printf", "Random", "Reexport", "SnoopPrecompile", "Statistics"]
git-tree-sha1 = "c95373e73290cf50a8a22c3375e4625ded5c5280"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.3.4"

[[deps.Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "JLFzf", "JSON", "LaTeXStrings", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "Pkg", "PlotThemes", "PlotUtils", "Preferences", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "RelocatableFolders", "Requires", "Scratch", "Showoff", "SnoopPrecompile", "SparseArrays", "Statistics", "StatsBase", "UUIDs", "UnicodeFun", "Unzip"]
git-tree-sha1 = "87036ff7d1277aa624ce4d211ddd8720116f80bf"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.38.4"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "eadad7b14cf046de6eb41f13c9275e5aa2711ab6"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.49"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Qt5Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "xkbcommon_jll"]
git-tree-sha1 = "0c03844e2231e12fda4d0086fd7cbe4098ee8dc5"
uuid = "ea2cea3b-5b76-57ae-a6ef-0a8af62496e1"
version = "5.15.3+2"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
deps = ["SnoopPrecompile"]
git-tree-sha1 = "261dddd3b862bd2c940cf6ca4d1c8fe593e457c8"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.3"

[[deps.RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "RecipesBase", "SnoopPrecompile"]
git-tree-sha1 = "e974477be88cb5e3040009f3767611bc6357846f"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.6.11"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "90bc7a7c96410424509e4263e277e43250c05691"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "1.0.0"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "f94f779c94e58bf9ea243e77a37e16d9de9126bd"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.1.1"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.SimpleBufferStream]]
git-tree-sha1 = "874e8867b33a00e784c8a7e4b60afe9e037b74e1"
uuid = "777ac1f9-54b0-4bf8-805c-2214025038e7"
version = "1.1.0"

[[deps.SnoopPrecompile]]
deps = ["Preferences"]
git-tree-sha1 = "e760a70afdcd461cf01a575947738d359234665c"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "a4ada03f999bd01b3a25dcaa30b2d929fe537e00"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.1.0"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "d75bda01f8c31ebb72df80a46c88b25d1c79c56d"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.1.7"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f9af7f195fb13589dd2e2d57fdb401717d2eb1f6"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.5.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "d1bf48bfcc554a3761a133fe3a9bb01488e06916"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.21"

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

[[deps.TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "94f38103c984f89cf77c402f2a68dbd870f8165f"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.11"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.URIs]]
git-tree-sha1 = "ac00576f90d8a259f2c9d823e91d1de3fd44d348"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Unzip]]
git-tree-sha1 = "ca0969166a028236229f63514992fc073799bb78"
uuid = "41fe7b60-77ed-43a1-b4f0-825fd5a5650d"
version = "0.2.0"

[[deps.Wayland_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "ed8d92d9774b077c53e1da50fd81a36af3744c1c"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.21.0+0"

[[deps.Wayland_protocols_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4528479aa01ee1b3b4cd0e6faef0e04cf16466da"
uuid = "2381bf8a-dfd0-557d-9999-79630e7b1b91"
version = "1.25.0+0"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "93c41695bc1c08c46c5899f4fe06d6ead504bb73"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.10.3+0"

[[deps.XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "5be649d550f3f4b95308bf0183b82e2582876527"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.6.9+4"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4e490d5c960c314f33885790ed410ff3a94ce67e"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.9+4"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fe47bd2247248125c428978740e18a681372dd4"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.3+4"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[deps.Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6783737e45d3c59a4a4c4091f5f88cdcf0908cbb"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.0+3"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "daf17f441228e7a3833846cd048892861cff16d6"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.13.0+3"

[[deps.Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "926af861744212db0eb001d9e40b5d16292080b2"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.0+4"

[[deps.Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "0fab0a40349ba1cba2c1da699243396ff8e94b97"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll"]
git-tree-sha1 = "e7fd7b2881fa2eaa72717420894d3938177862d1"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "d1151e2c45a544f32441a567d1690e701ec89b00"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "dfd7a8f38d4613b6a575253b3174dd991ca6183e"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.9+1"

[[deps.Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "e78d10aab01a4a154142c5006ed44fd9e8e31b67"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.1+1"

[[deps.Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "4bcbf660f6c2e714f87e960a171b119d06ee163b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.2+4"

[[deps.Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "5c8424f8a67c3f2209646d4425f3d415fee5931d"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.27.0+4"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "79c31e7844f6ecf779705fbc12146eb190b7d845"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.4.0+3"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e45044cd873ded54b6a5bac0eb5c971392cf1927"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.2+0"

[[deps.fzf_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "868e669ccb12ba16eaf50cb2957ee2ff61261c56"
uuid = "214eeab7-80f7-51ab-84ad-2988db7cef09"
version = "0.29.0+0"

[[deps.libaom_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3a2ea60308f0996d26f1e5354e10c24e9ef905d4"
uuid = "a4ae2306-e953-59d6-aa16-d00cac43593b"
version = "3.4.0+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.7.0+0"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "b910cb81ef3fe6e78bf6acee440bda86fd6ae00c"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"

[[deps.xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll", "Wayland_protocols_jll", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "9ebfc140cc56e8c2156a15ceac2f0302e327ac0a"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "1.4.1+0"
"""

# ╔═╡ Cell order:
# ╠═aa9a3091-ec78-4e06-8c01-c38ad4fee1d2
# ╟─94e82b5e-80ee-46de-b7b3-b4208b32e8d0
# ╟─c4905be0-a70a-11ed-2bc6-2b848eadee2f
# ╟─36bd9a50-e97a-4fc2-86b1-c62a0ee3f31c
# ╟─b61777b2-f6ad-4ed7-909a-0353213f56bf
# ╟─0c872825-d70a-4a7b-b7e5-be1e3ca69680
# ╟─45d932c9-7332-4026-b492-528461ee42b6
# ╟─ce82a70c-14fd-4f6d-a8f6-92cbdf7333f9
# ╟─7579a2d8-9922-4c38-a793-76d855520fe0
# ╟─9d8266c5-818f-4825-b9d4-1684eede6495
# ╟─75052c23-2517-4e3d-8dca-d1e48e745935
# ╟─b05b7f51-9e98-4e3e-8cbf-8b753cd29561
# ╟─0b443d0f-65a0-4827-bd44-a6146535ac50
# ╟─cdb8f825-0c56-4503-a524-95632adcf229
# ╟─875b6971-dd2c-45af-82b8-3d530019fdbf
# ╟─57a3f60d-c416-435b-befc-335b3acfda66
# ╟─19b0bee7-4909-4075-bb55-f08cf32766f5
# ╟─5c80aa3a-98ae-4b12-b03d-880eb1908aa7
# ╟─b1ef4740-f074-4333-b1ce-154291e0c846
# ╟─4273bad5-16bb-455a-8e91-9e70646b175d
# ╟─5cbbcad7-412c-4d9a-811a-6e6c96bbe7e1
# ╟─f4d7393d-9c42-4c86-bbde-d53496196dfa
# ╟─218dcac2-efae-4451-941a-5aa2ded3bc51
# ╟─22787c04-4085-401a-b75a-1927eb713e52
# ╟─2958c303-33ca-42e7-8077-da1f0f81af7d
# ╟─676a4a02-5893-4b27-84e1-c6b2b1d1bcf0
# ╟─1d8b3e59-b47c-4c5d-8ed0-bcf129dae084
# ╟─c6dd676b-269f-42f8-9881-99186cc75cbf
# ╟─9db4e4b3-8c9b-466b-bc8a-55c6d384a05c
# ╟─7dd46758-bea7-41ba-8c09-5756eeabb92f
# ╟─be9f4608-0048-4de3-802c-57c2f696812f
# ╠═8c60382b-8839-4811-8722-d0f863e2b4b2
# ╟─b3f3ea17-f1cb-4a2f-aeae-e425a4e1350d
# ╟─31ebab5a-0c6c-4824-ac67-3632831410a1
# ╟─a92a02de-59c8-4673-bbea-688531ad1d40
# ╟─6a6237ed-67cb-4025-89a0-3dca9fee8841
# ╟─caa7e0e5-734b-45e8-addd-a20b19ba2a2e
# ╟─882a0c7a-be77-4743-b3db-84d5fe4f38aa
# ╟─911de4eb-9041-477d-be5e-7ddc7afb9c7b
# ╟─bed6d7dc-c1bf-47cc-8a25-c03c1e5c29a3
# ╟─d9bc624b-4c74-4f7e-a3d1-82001504643a
# ╟─ab5c8da1-cab3-4048-be05-d81ed44246de
# ╟─bb5146e5-4ba4-4a83-a3b6-9674086966c7
# ╟─494b83f9-63ec-4e8e-90ab-324d01e0cea0
# ╟─1ddbc63a-bc5b-4777-b843-f2386077229f
# ╟─f27ff794-cdb9-4931-88f3-20049b35b0df
# ╟─68173882-f3dc-4b70-853b-c3d0a8a2b414
# ╟─4aa52e04-f6f8-4ad5-b8dd-32221bbf972c
# ╟─21b0a1f3-1ecb-43d1-8c78-0c831cac3975
# ╟─8fd22a46-8fa1-416b-8827-163ed0be8180
# ╟─d8a0ca44-89db-43a5-a781-0dddf7ad36e1
# ╟─d1fb617e-52bc-4035-99fa-a4a5a40d3099
# ╟─d53eb652-d8aa-4226-b913-c7700be495eb
# ╟─2006361d-c13c-406d-bf52-6bf72bd315be
# ╟─e720fae6-0d86-49cd-888c-1bec92979351
# ╟─1e80a601-4273-419e-bc9f-1a5abefa5aa5
# ╟─0ea2b0d0-1c4d-47d2-8b0e-d718c5ca3075
# ╟─7dd2a254-9a2a-4313-b81c-16fa0f7552a8
# ╟─c80e486b-4825-4daa-b759-ba43105ad873
# ╟─c8426078-8185-4830-855d-1f14b8cc7e1d
# ╟─56920984-059c-486d-9fbc-7f02e626def1
# ╟─3077c2ea-3685-47b1-9ce9-8a4e54d59dd8
# ╟─5fd9df4d-7787-49c6-9333-9e2c893c64a7
# ╟─cd82a001-4da7-4e92-a75d-2d9c4c6dd646
# ╟─3d2617c8-1bc8-4082-9dca-9b180c174500
# ╟─391cb663-ea13-4f6b-b54d-492a2c278628
# ╟─67f2b85a-1542-4a88-a075-5a9e58057f58
# ╟─c7e4b166-3a2b-40d9-af0a-8abe258016fe
# ╟─1d9d65b2-16ab-4d83-ad02-f687b930e7d3
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
