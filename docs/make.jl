using Documenter, FourierFlows

makedocs(
   modules = [FourierFlows],
    format = :html,
  sitename = "FourierFlows.jl",
     pages = Any[
              "Home" => "index.md",
              "Code Basics" => "basics.md",
              "Modules" => Any[
                "modules/kuramotosivashinsky.md",
                "modules/twodturb.md",
                "modules/barotropicqg.md",
                "modules/boussinesq.md",
                "modules/traceradvdiff.md"
              ],
              "DocStrings" => Any["man/docstrings.md"]
             ]
)

deploydocs(
       repo = "github.com/FourierFlows/FourierFlows.jl.git",
     target = "build",
      julia = "0.6.3",
     osname = "linux",
       deps = nothing,
       make = nothing
 )