using DataExemplo
using Documenter

DocMeta.setdocmeta!(DataExemplo, :DocTestSetup, :(using DataExemplo); recursive=true)

makedocs(;
    modules=[DataExemplo],
    authors="Augusto Manzano",
    repo="https://github.com/J-AugustoManzano/DataExemplo.jl/blob/{commit}{path}#{line}",
    sitename="DataExemplo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://J-AugustoManzano.github.io/DataExemplo.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/J-AugustoManzano/DataExemplo.jl",
    devbranch="master",
)
