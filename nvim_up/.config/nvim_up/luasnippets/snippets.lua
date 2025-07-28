local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local i = ls.insert_node
local d = ls.dynamic_node
local sn = ls.snippet_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {
	s("iferr", { t({ "if err != nil {", "    log.Fatal(err)}", "" }) }),
	s("mainf", fmt("func main(){{\n    {}\n }}", { i(0) })),
	-- s("fori", fmt("for {};{};{} {{\n\t{}\n}}", { i(1, "i:=0"), i(2, "i<n"), i(3, "i++"), i(0) })),
	s(
		"fori",
		fmt("for {} := {}; {} < {}; {} {{\n {} \n {} \n}}", {
			i(1, "i"), -- Variabile di iterazione
			i(2, "0"), -- Valore iniziale
			f(function(args)
				return args[1][1]
			end, { 1 }), -- Condizione dinamica basata sulla variabile
			i(0, "n"),
			f(function(args)
				return args[1][1] .. "++"
			end, { 1 }), -- Incremento dinamico basato sulla variabile
			f(function(args)
				return "fmt.Println(" .. args[1][1] .. ")"
			end, { 1 }), -- Corpo del ciclo, usa la variabile
			i(0),
		})
	),
})

ls.add_snippets("lua", {
	-- ls.parser.parse_snippet("lf", "local $1 = function($2)\n  $0\nend\n"),
	-- s("lf", { t({ "local " }), i(1), t({ " = function(" }), i(2), t({ ")", "  " }), i(0), t({ "", "end" }) }),
	s("lf", fmt("local {} = function({})\n  {}\nend\n", { i(1), i(2), i(0) })),
})

ls.add_snippets("c", {
	s("mainf", fmt("int main(int argc, char* argv[]) {{\n    return 0;\n}}", {})),
})

ls.add_snippets("cpp", {
	s("mainf", fmt("int main(int argc, char* argv[]) {{\n    return 0;\n}}", {})),
})

ls.add_snippets("odin", {
	s(
		"fori",
		fmt("for {} := {}; {} < {}; {} {{\n {} \n {} \n}}", {
			i(1, "i"), -- Variabile di iterazione
			i(2, "0"), -- Valore iniziale
			f(function(args)
				return args[1][1]
			end, { 1 }), -- Condizione dinamica basata sulla variabile
			i(0, "n"),
			f(function(args)
				return args[1][1] .. "+=1"
			end, { 1 }), -- Incremento dinamico basato sulla variabile
			f(function(args)
				return "fmt.Println(" .. args[1][1] .. ")"
			end, { 1 }), -- Corpo del ciclo, usa la variabile
			i(0),
		})
	),
})

ls.add_snippets("markdown", {
	s("code", fmt("```{}\n{}\n```", { i(1, "linguaggio"), i(0) })),
})

ls.add_snippets("all", {
	s("tilde", { t({ "~" }) }),
	s("backtick", { t({ "`" }) }),
})
