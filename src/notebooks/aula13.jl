### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 48026590-0b06-11ee-27b4-2f516486b769
begin
	using PlutoUI
	import PlutoUI: combine	
end

# ╔═╡ 2af474c5-3c09-4144-996d-e9d45f13c276
PlutoUI.TableOfContents(title="Sumário", indent=true)

# ╔═╡ cb19a475-e2da-44ba-901c-d55b5d28bfba
html"<button onclick=present()>Apresentação</button>"

# ╔═╡ ea004215-1351-41ac-930c-ac3438d6d0d2
md"""
# Maximização de lucros $~~~~~~~~~~~$ $(Resource("https://www1.udesc.br/imagens/id_submenu/899/cor_horizontal_rgb.jpg", :width => 150))
"""

# ╔═╡ df2b4e67-4e85-49f0-82be-a4142eb76843
md"
* **Disciplina:** 23MICI - Microeconomia I
* **Docente:** [Paulo Victor da Fonseca](https://pvfonseca.github.io)
* **Contato:** [paulo.fonseca@udesc.br](mailto:paulo.fonseca@udesc.br)
"

# ╔═╡ 4695eea0-c896-42c5-a0e5-227036394e00
md"""
!!! danger "Aviso"
	O texto que segue não tem a menor pretensão de originalidade. Ele serve apenas como registro dos principais princípios, conceitos e técnicas analíticas que são trabalhados em sala de aula.
"""

# ╔═╡ 0134331a-79d1-432b-b003-366ef028b591
md"
## Introdução
"

# ╔═╡ 5ffd3d84-7792-4d35-8f25-a54fad37f0fb
md"
* Aulas passadas: desenvolvimento de uma teoria de custos que, como vimos, apresentava um caso um pouco mais geral
* A teoria de custos aplica-se não apenas às firmas tomadoras de preços no mercado de bens mas, também, àquelas cuja escolha de produção afeta o preço de mercado
* Objetivo agora é examinar como o nível de produção é escolhido por firmas maximizadoras de lucros
* Para isso, estudaremos o modelo de maximização de lucros para uma firma operando em um mercado perfeitamente competitivo
"

# ╔═╡ 89726aa0-da6b-4135-874e-bc1f50ebff24
md"
## Hipóteses do modelo de maximização de lucros
"

# ╔═╡ b70be854-ca1c-4976-a7a2-93c61e9e2ff0
md"""
!!! info "Suposição comportamental"
	A firma é maximizadora de lucros
"""

# ╔═╡ 0f0578d9-d58b-442f-b739-434a95362871
md"""
!!! info "Hipótese simplificadora"
	Estudaremos a maximização de lucros de uma firma que produz apenas um tipo de produto (caso uniproduto)
"""

# ╔═╡ 11defcee-bc77-43bc-a767-40e988fd680f
md"""
!!! info "Ambiente de mercado"
	A firma é **tomadora de preços** (sem poder de mercado) no mercado de bens

	Mais precisamente, supomos que a virma vende seu produto em um **mercado perfeitamente competitivo**, ou seja, em um mercado composto por firmas que produzem um bem homogêneo (sem diferenciação) e detêm individualmente uma parcela relativamente pequena do mercado
"""

# ╔═╡ 196cf6f7-af8b-46a2-88d1-595b1262e647
md"
## Maximização de lucros
"

# ╔═╡ f7c5ac52-534d-43c8-bc40-d4d86bd6b12a
md"
### Curto prazo
"

# ╔═╡ 3811e8bd-36b4-4eef-998c-db40a67b0d4d
md"
* Dado que o preço de venda do produto da firma, denotado por $p$ é, para ela, uma variável exógena, resta à firma escolher o nível de produção $q$ de forma a obter o maior lucro possível
* Formalmente, a decisão de uma firma operando em um mercado perfeitamente competitivo pode ser representada pelo seguinte problema de maximização de lucros:

$$\max_{q\geq 0} \quad \pi_{CP}(q) \equiv R(q) - C_{CP}(q)$$

*  $R(q) = pq$ representa a receita total da firma no nível de produção (venda) $q$
*  $C_{CP}(q)$ representa a função custo total de curto prazo derivada do problema de minimização de custos de curto prazo da firma
"

# ╔═╡ 22407c23-09d5-4cc6-b1a9-3c7f4a8363db
md"""
!!! danger "Condição necessária de primeira ordem (solução interior)"
	Suponha que a escolha maximizadora de lucros da firma seja $q^* = (0, \infty)$

	Logo, a CPO para a maximização de lucros é obtida igualando-se o lucro marginal de curto prazo, $\pi'_{CP}(q)$, a zero:

	$$\pi'_{CP}(q) = R'(q) - C'_{CP}(q) = 0 \Rightarrow p - CMg_{CP}(q^*) = 0$$

	Então, a condição necessária de primeira ordem para maximização de lucros no curto prazo é de que a receita marginal, $RMg = R'(q) = p$, seja igual ao custo marginal de curto prazo:

	$$p = CMg_{CP}(q^*)$$

	* Se $p > CMg_{CP}(q^*)$, então $\pi'_{CP}(q^*) > 0$ de forma que $q^*$ não seria um nível maximizador de lucros (expansão da produção aumentaria os lucros da firma)

	* Se $p < CMg_{CP}(q^*)$, então $\pi'_{CP}(q^*) < 0$ de forma que $q^*$ não seria um nível maximizador de lucros (redução da produção aumentaria os lucros da firma)
"""

# ╔═╡ bbde1ff2-a170-4fec-9dcf-698861c49d38
md"""
!!! danger "Condição de encerramento no curto prazo (solução de canto)"
	Uma escolha possível para a firma é não produzir ($q = 0$)

	Neste caso, o lucro da firma é igual ao negativo do custo fixo total, ou seja, $\pi_{CP}(0) = - CF$

	Portanto, para uma firma perfeitamente competitiva será ótimo encerrar suas atividades quando o prejuízo de não operar for inferior ao prejuízo de operar:

	$$\pi_{CP}(0) = -CF > pq^* - C_{CP}(q^*) = \pi_{CP}(q^*)$$

	Como o custo total de curto prazo pode ser decomposto em custo fixo e variável, a desigualdade anterior pode ser reescrita como:

	$$pq^* < CV_{CP}(q^*) \iff p < \frac{CV_{CP}(q^*)}{q^*} = CVMe_{CP}(q^*)$$
"""

# ╔═╡ 910c392b-34b8-4f70-bc8c-15ff9966cbf3
md"
* Em resumo, a firma perfeitamente competitiva não opera se o preço de mercado for inferior ao custo variável médio no nível de produção $q^*$
"

# ╔═╡ 8c99bbf6-4975-40c7-be60-ed22e48c9566
md"""
Custo marginal e oferta. Fonte: Varian (2015)
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula14_fig1.JPG", :width=>800))
"""

# ╔═╡ 589316c2-5ab5-404c-81ed-37b46103fa8f
md"
* Embora haja dois níveis de produção em que o preço iguala-se ao custo marginal, a quantidade ofertada que maximiza lucro só pode situar-se na parte de inclinação ascendente da curva de custo marginal (CSO para maximização de lucros)

* A firma não operará nos pontos da curva de custo marginal situados abaixo da curva de custo médio pois poderia obter maiores lucros (menores perdas) se encerrasse suas atividades
"

# ╔═╡ 38d30db9-9099-4a2a-a634-3b3f2183e2d0
md"""
!!! correct "Curva de oferta de curto prazo inversa de uma firma perfeitamente competitiva"
	É a função que associa a cada nível de produção $q > 0$ da firma o correspondente valor do preço de mercado que tornaria $p$ a escolha maximizadora de lucros:

	$$p = CMg_{CP}(q), \qquad \forall q\geq \bar{q}$$

	sendo $\bar{q}$ o nível de produção no qual o custo variável médio de curto prazo é mínimo, ou seja, o ponto definido implicitamente pela condição $CMg_{CP}(\bar{q}) = CVMe_{CP}(\bar{q})$
"""

# ╔═╡ 6fffbbff-0a55-4897-9c38-8c814549b2aa
md"""
!!! correct "Curva de oferta de curto prazo de uma firma perfeitamente competitiva"
	É a função que associa a cada nível de preço $p > CVMe_{CP}(\bar{q})$ a quantidade $q$ do bem que uma firma produz para maximizar seu lucro

	Dito de outra forma, a função oferta é a inversa da função custo marginal de curto prazo:

	$$q^* = CMg_{CP}^{-1}(p), \qquad \forall p\geq CVMe(\bar{q})$$
"""

# ╔═╡ 8c4c1d42-99c4-4d6c-b5ee-d1415b1f2771
md"
* Na figura vista anteriormente, a curva de oferta é a parte ascendente da curva de custo marginal que está acima da curva de custo variável médio
"

# ╔═╡ 9a4099bc-8175-481a-a21c-608af36d3e44
md"
> **Exercício**. Considere uma função de produção Cobb-Douglas, no curto prazo, dada por $q = f(\bar{k}, l) = \bar{k}^\alpha l^\beta$
>
> A função custo de curto prazo é dada por:
>
> $$C_{CP}(q) = v\bar{k} + wq^{1/\beta}\bar{k}^{-\alpha/\beta}$$
>
> Portanto, o problema de maximização de lucros é dado por:
>
> $$\max_{q} pq - v\bar{k} - wq^{1/\beta}\bar{k}^{-\alpha/\beta}$$
>
> Quantidade ótima produzida:
>
> $$q^* = \left(\frac{w}{\beta}\right)^{-\beta/(1-\beta)}\bar{k}^{\alpha/(1-\beta)}p^{\beta/(1-\beta)}$$
>
> Características da função de oferta:
>
> 1. Positivamente inclinada: aumento de preços faz com que a firma produza mais pois está disposta a incorrer em um custo marginal mais alto
>
> 2. Curva de oferta é deslocada para a esquerda por aumentos na taxa de salários, $w$: ou seja, para um dado nível de preço de produto, a quantidade ofertada é menor se a taxa salarial for maior
>
> 3. A curva de oferta é deslocada para a direita se o insumo capital $\bar{k}$ aumentar: com um estoque de capital mais alto, no curto prazo, a firma incorre em um nível determinado de custo marginal de curto prazo a um nível de produção maior
>
> 4. A taxa de aluguel do capital, $v$ é irrelevante para decisões de oferta de curto prazo: é somente um componente de custos fixos
"

# ╔═╡ ce65780f-489f-4467-91fd-ea06f07fde15
md"
### Longo prazo
"

# ╔═╡ e10834b8-f5cf-483e-ab98-defc2ece3de1
md"
* Dado o preço de venda do produto, uma firma perfeitamente competitiva escolhe o nível de produção $q$ de maneira a obter o maior lucro possível ajustando, se necessário, todos os fatores de produção

* Problema de maximização de lucros no longo prazo:

$$\max_{q\geq 0} \pi(q) \equiv R(q) - C(q)$$

*  $R(q) = pq$ é a receita total da firma no nível de produção (venda) $q$
*  $C(q)$ é a função custo total de longo prazo derivada do problema de minimização de custos de longo prazo da firma
"

# ╔═╡ 91d54a0c-60c0-4010-ad34-afb958df9e96
md"""
!!! danger "Condição necessária de primeira ordem (solução interior)"
	Suponha que a escolha maximizadora de lucros da firma seja $q^* = (0, \infty)$

	Logo, a CPO para a maximização de lucros é obtida igualando-se o lucro marginal, $\pi'(q)$, a zero:

	$$\pi'(q^*) = R'(q^*) - C'(q^*) = p - CMg(q^*) = 0$$

	Então, a condição necessária de primeira ordem para maximização de lucros no longo prazo é de que a receita marginal seja igual ao custo marginal:

	$$p = CMg(q^*)$$
"""

# ╔═╡ fb081fe7-b7a4-4b91-a19e-b223087d7e31
md"""
!!! danger "Condição de encerramento no curto prazo (solução de canto)"
	No longo prazo, uma firma pode sair do mercado ($q = 0$)

	Neste caso, como não há custo fixo, o lucro da firma é nulo: $\pi(0) = 0$

	Portanto, para uma firma perfeitamente competitiva será ótimo encerrar suas atividades quando:

	$$\pi(q^*) = pq^* - C(q^*) < 0 = \pi(0)$$

	Esta desigualdade pode ser reescrita como:

	$$pq^* < C(q^*) \iff p < CMe(q^*)$$

	**A firma perfeitamente competitiva sai do mercado se o preço de mercado for inferior ao seu custo médio de longo prazo na escolha $q^*$**
"""

# ╔═╡ 98aff2ec-f02d-41a3-b89c-1487f07c5ff1
md"""
!!! correct "Curva de oferta de longo prazo inversa de uma firma perfeitamente competitiva"
	É a função que associa a cada nível de produção $q > 0$ da firma o correspondente valor do preço de mercado que tornaria $p$ a escolha maximizadora de lucros:

	$$p = CMg(q), \qquad \forall q\geq \tilde{q}$$

	sendo $\tilde{q}$ o nível de produção no qual o custo médio de longo prazo (que é igual ao custo variável médio de longo prazo) é mínimo, ou seja, o ponto definido implicitamente pela condição $CMg(\tilde{q}) = CMe(\tilde{q})$
"""

# ╔═╡ 8bb9da70-be31-422f-95cb-57a7ad1c46d8
md"""
!!! correct "Curva de oferta de longo prazo de uma firma perfeitamente competitiva"
	É a função que associa a cada nível de preço $p > CMe(\tilde{q})$ a quantidade $q$ do bem que uma firma produz para maximizar seu lucro

	Dito de outra forma, a função oferta é a inversa da função custo marginal de longo prazo:

	$$S(p) = CMg^{-1}(p), \qquad \forall p\geq CMe(\tilde{q})$$
"""

# ╔═╡ 71a94d2a-870e-4418-9d35-4855afeee6a0
md"""
Curva de oferta no longo prazo. Fonte: Varian (2015)
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula14_fig2.JPG", :width=>800))
"""

# ╔═╡ 6f9475e5-8cef-4c3f-80a6-d0037180c550
md"
* A curva de oferta de longo prazo será a parte de inclinação ascendente da curva de custo marginal de longo prazo que se situa acima da curva de custo médio
"

# ╔═╡ 5fae38cd-82b5-4d5f-ad73-e7db1282e453
md"
## 📚 Bibliografia

MAS-COLELL, A.; WHINSTON, M.D.; GREEN, J.R. Microeconomic Theory. New York, NY: Oxford University Press, 1995.

NICHOLSON, W.; SNYDER C. [Teoria microeconômica: Princípios básicos e aplicações](https://app.minhabiblioteca.com.br/books/9788522127030). Cengage Learning Brasil, 2019

RESENDE, J. G. L. Microeconomia I: Notas de Aula

VARIAN, H. R. Intermediate Microeconomics: A modern approach. 7.ed. New York: W.W. Norton & Company, 2006
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

julia_version = "1.9.1"
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
git-tree-sha1 = "9673d39decc5feece56ef3940e5dafba15ba0f81"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.1.2"

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
version = "5.8.0+0"

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
# ╟─48026590-0b06-11ee-27b4-2f516486b769
# ╟─2af474c5-3c09-4144-996d-e9d45f13c276
# ╟─cb19a475-e2da-44ba-901c-d55b5d28bfba
# ╟─ea004215-1351-41ac-930c-ac3438d6d0d2
# ╟─df2b4e67-4e85-49f0-82be-a4142eb76843
# ╟─4695eea0-c896-42c5-a0e5-227036394e00
# ╟─0134331a-79d1-432b-b003-366ef028b591
# ╟─5ffd3d84-7792-4d35-8f25-a54fad37f0fb
# ╟─89726aa0-da6b-4135-874e-bc1f50ebff24
# ╟─b70be854-ca1c-4976-a7a2-93c61e9e2ff0
# ╟─0f0578d9-d58b-442f-b739-434a95362871
# ╟─11defcee-bc77-43bc-a767-40e988fd680f
# ╟─196cf6f7-af8b-46a2-88d1-595b1262e647
# ╟─f7c5ac52-534d-43c8-bc40-d4d86bd6b12a
# ╟─3811e8bd-36b4-4eef-998c-db40a67b0d4d
# ╟─22407c23-09d5-4cc6-b1a9-3c7f4a8363db
# ╟─bbde1ff2-a170-4fec-9dcf-698861c49d38
# ╟─910c392b-34b8-4f70-bc8c-15ff9966cbf3
# ╟─8c99bbf6-4975-40c7-be60-ed22e48c9566
# ╟─589316c2-5ab5-404c-81ed-37b46103fa8f
# ╟─38d30db9-9099-4a2a-a634-3b3f2183e2d0
# ╟─6fffbbff-0a55-4897-9c38-8c814549b2aa
# ╟─8c4c1d42-99c4-4d6c-b5ee-d1415b1f2771
# ╟─9a4099bc-8175-481a-a21c-608af36d3e44
# ╟─ce65780f-489f-4467-91fd-ea06f07fde15
# ╟─e10834b8-f5cf-483e-ab98-defc2ece3de1
# ╟─91d54a0c-60c0-4010-ad34-afb958df9e96
# ╟─fb081fe7-b7a4-4b91-a19e-b223087d7e31
# ╟─98aff2ec-f02d-41a3-b89c-1487f07c5ff1
# ╟─8bb9da70-be31-422f-95cb-57a7ad1c46d8
# ╟─71a94d2a-870e-4418-9d35-4855afeee6a0
# ╟─6f9475e5-8cef-4c3f-80a6-d0037180c550
# ╟─5fae38cd-82b5-4d5f-ad73-e7db1282e453
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
