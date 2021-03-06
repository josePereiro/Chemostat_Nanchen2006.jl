## -------------------------------------------------------------------
# Data from
# Nanchen, Annik, Alexander Schicker, and Uwe Sauer. “Nonlinear Dependency of 
# Intracellular Fluxes on Growth Rate in Miniaturized Continuous Cultures of
# Escherichia Coli.” Applied and Environmental Microbiology 72, no. 2 (February 2006): 
# 1164–72. https://doi.org/10.1128/AEM.72.2.1164-1172.2006.

## -------------------------------------------------------------------
# From FIG 3: Multidimensional diagram for mini-scale chemostat cultures of E. coli.
# This data was take by hand from the graph
const FIG3 = Dict()

function _populate_FIG3()

    empty!(FIG3)

    FIG3["D"] = Dict(
        "name" => "Dilution rate",
        "unit" => "1/ hr",
        "val" => [
            0.05, 0.04, 0.05, 0.06, 0.09, 0.09, 0.11, 0.11, 0.11, 0.19, 0.19, 
            0.19, 0.29, 0.31, 0.31, 0.41, 0.40, 0.41, 0.51, 0.55, 0.58, 0.69, 0.75
        ]
    )
    FIG3["X"] = Dict(
        "name" => "Biomass concentration",
        "unit" => "gDW/ L",
        "val" => [
            0.23, 0.27, 0.33, 0.28, 0.28, 0.31, 0.31, 0.35, 0.35, 0.36, 0.37, 
            0.37, 0.37, 0.37, 0.37, 0.39, 0.39, 0.38, 0.41, 0.41, 0.41, 0.37, 0.20
        ]
    )

end
## -------------------------------------------------------------------
# From supplementary materials TABLE 2
const TABLE2 = Dict()

function _populate_TABLE2()

    empty!(TABLE2)

    TABLE2["Biomass"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.04, 0.05, 0.06, 0.08, 0.09, 0.09, 0.09, 0.11, 0.11, 0.18, 0.18, 0.28, 0.28, 0.31, 0.31, 0.4, 0.41],
        "err" => [0.0, 0.01, 0.0, 0.01, 0.01, 0.01, 0.01, 0.0, 0.0, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.02]
    )

    TABLE2["O2 + 2NADH -> 2P/O x ATP"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [3.84, 5.42, 4.68, 6.21, 6.22, 6.68, 6.68, 7.83, 7.87, 9.11, 9.09, 13.58, 13.6, 14.11, 14.14, 17.19, 17.47],
        "err" => [0.84, 1.17, 1.07, 1.34, 1.34, 1.23, 1.23, 1.78, 1.77, 1.01, 1.01, 1.59, 1.59, 1.77, 1.77, 1.66, 2.24]
    )

    TABLE2["NADPH -> NADH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.84, 1.45, 0.53, 0.29, 0.48, 0.56, 0.71, 0.55, 0.76, 0.58, 0.61, 1.82, 1.93, 1.34, 1.45, 2.58, 2.51],
        "err" => [0.78, 0.87, 0.77, 0.91, 0.92, 0.9, 0.86, 0.9, 0.92, 0.8, 0.8, 1.01, 1.01, 1.06, 1.07, 1.0, 1.23]
    )

    TABLE2["ICT + AcCoA -> MAL + FUM + NADH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.12, 0.11, 0.61, 0.98, 0.94, 0.8, 0.81, 0.97, 0.96, 1.33, 1.32, 0.54, 0.54, 0.94, 0.94, 0.0, 0.0],
        "err" => [0.06, 0.09, 0.13, 0.18, 0.17, 0.06, 0.04, 0.19, 0.19, 0.14, 0.14, 0.17, 0.17, 0.17, 0.17, 0.0, 0.0]
    )

    TABLE2["AcCoA -> Acetate + ATP"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
        "err" => [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
    )

    TABLE2["PEP + CO2 -> OAA"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.42, 0.64, 0.35, 0.5, 0.53, 0.64, 0.63, 0.66, 0.65, 0.84, 0.83, 1.68, 1.67, 1.9, 1.89, 2.59, 2.61],
        "err" => [0.08, 0.13, 0.08, 0.1, 0.1, 0.11, 0.11, 0.14, 0.14, 0.1, 0.1, 0.19, 0.19, 0.22, 0.22, 0.22, 0.34]
    )

    TABLE2["OAA + ATP -> PEP + CO2"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.35, 0.66, 0.61, 1.19, 1.17, 0.86, 0.85, 0.72, 0.71, 1.16, 1.16, 0.64, 0.64, 1.83, 1.82, 0.88, 0.9],
        "err" => [0.06, 0.12, 0.13, 0.17, 0.17, 0.12, 0.12, 0.15, 0.15, 0.14, 0.13, 0.12, 0.12, 0.21, 0.21, 0.15, 0.16]
    )

    TABLE2["MAL -> PYR + CO2 + NADH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.1, 0.0, 0.21, 0.0, 0.0, 0.26, 0.28, 0.56, 0.55, 0.41, 0.41, 0.67, 0.67, 0.0, 0.0, 0.46, 0.42],
        "err" => [0.04, 0.0, 0.07, 0.07, 0.06, 0.13, 0.16, 0.14, 0.14, 0.12, 0.12, 0.13, 0.13, 0.01, 0.01, 0.13, 0.34]
    )

    TABLE2["MAL -> OAA + NADH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [1.24, 1.84, 1.87, 2.89, 2.82, 2.59, 2.55, 2.84, 2.82, 3.52, 3.51, 3.81, 3.8, 4.99, 4.98, 4.45, 4.58],
        "err" => [0.25, 0.37, 0.39, 0.48, 0.47, 0.38, 0.38, 0.6, 0.6, 0.35, 0.35, 0.43, 0.43, 0.56, 0.56, 0.47, 0.53]
    )

    TABLE2["FUM -> MAL"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [1.21, 1.73, 1.46, 1.91, 1.89, 2.05, 2.02, 2.43, 2.41, 2.61, 2.6, 3.94, 3.92, 4.05, 4.04, 4.91, 5.0],
        "err" => [0.26, 0.38, 0.32, 0.45, 0.45, 0.42, 0.42, 0.57, 0.57, 0.32, 0.32, 0.51, 0.51, 0.57, 0.57, 0.53, 0.74]
    )

    TABLE2["OGA -> FUM + CO2 + 1.5*ATP + 2NADH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [1.09, 1.61, 0.85, 0.93, 0.94, 1.25, 1.21, 1.46, 1.45, 1.28, 1.28, 3.4, 3.38, 3.11, 3.1, 4.91, 5.0],
        "err" => [0.27, 0.41, 0.21, 0.49, 0.49, 0.48, 0.39, 0.46, 0.46, 0.25, 0.25, 0.57, 0.57, 0.63, 0.63, 0.53, 0.74]
    )

    TABLE2["ICT -> OGA + CO2 + NADPH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [1.14, 1.66, 0.92, 1.06, 1.08, 1.4, 1.36, 1.63, 1.61, 1.56, 1.56, 3.81, 3.8, 3.58, 3.56, 5.48, 5.58],
        "err" => [0.27, 0.4, 0.22, 0.46, 0.46, 0.46, 0.37, 0.46, 0.46, 0.24, 0.24, 0.56, 0.56, 0.62, 0.62, 0.53, 0.72]
    )

    TABLE2["OAA + AcCoA -> ICT"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [1.26, 1.77, 1.53, 2.05, 2.02, 2.2, 2.17, 2.59, 2.57, 2.88, 2.88, 4.35, 4.34, 4.52, 4.5, 5.48, 5.58],
        "err" => [0.26, 0.37, 0.33, 0.44, 0.43, 0.4, 0.4, 0.57, 0.57, 0.31, 0.31, 0.51, 0.51, 0.56, 0.56, 0.53, 0.72]
    )

    TABLE2["PYR -> AcCoA + CO2 + NADH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [1.47, 1.98, 2.26, 3.24, 3.17, 3.23, 3.21, 3.82, 3.79, 4.64, 4.63, 5.57, 5.55, 6.2, 6.19, 6.42, 6.55],
        "err" => [0.27, 0.36, 0.46, 0.47, 0.46, 0.33, 0.41, 0.72, 0.71, 0.41, 0.41, 0.5, 0.5, 0.56, 0.56, 0.53, 0.7]
    )

    TABLE2["PEP -> PYR + ATP"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [1.45, 2.04, 2.15, 3.44, 3.37, 3.19, 3.15, 3.51, 3.47, 4.58, 4.53, 5.48, 5.47, 6.85, 6.84, 6.86, 7.03],
        "err" => [0.23, 0.34, 0.4, 0.45, 0.44, 0.36, 0.35, 0.61, 0.6, 0.35, 0.35, 0.43, 0.43, 0.57, 0.56, 0.49, 0.51]
    )

    TABLE2["PGA -> PEP"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [1.56, 2.07, 1.95, 2.83, 2.8, 3.06, 3.02, 3.56, 3.52, 4.42, 4.38, 6.77, 6.76, 7.2, 7.19, 8.91, 9.09],
        "err" => [0.24, 0.33, 0.35, 0.36, 0.35, 0.33, 0.32, 0.57, 0.56, 0.3, 0.3, 0.49, 0.49, 0.55, 0.55, 0.54, 0.64]
    )

    TABLE2["T3P -> PGA + ATP + NADH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [1.63, 2.14, 2.04, 2.97, 2.94, 3.21, 3.17, 3.74, 3.7, 4.72, 4.68, 7.24, 7.23, 7.73, 7.71, 9.59, 9.79],
        "err" => [0.23, 0.32, 0.35, 0.35, 0.35, 0.32, 0.31, 0.57, 0.56, 0.3, 0.3, 0.49, 0.49, 0.55, 0.55, 0.54, 0.63]
    )

    TABLE2["S7P + T3P -> E4P + F6P"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.07, 0.09, 0.09, 0.1, 0.13, 0.11, 0.14, 0.13, 0.16, 0.31, 0.31, 0.39, 0.41, 0.41, 0.43, 0.5, 0.49],
        "err" => [0.02, 0.02, 0.02, 0.03, 0.03, 0.03, 0.03, 0.04, 0.04, 0.05, 0.05, 0.06, 0.06, 0.07, 0.07, 0.06, 0.06]
    )

    TABLE2["P5P + E4P -> F6P + T3P"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.05, 0.07, 0.06, 0.06, 0.09, 0.07, 0.1, 0.08, 0.11, 0.23, 0.23, 0.27, 0.29, 0.28, 0.3, 0.34, 0.33],
        "err" => [0.02, 0.02, 0.02, 0.03, 0.03, 0.03, 0.03, 0.04, 0.04, 0.05, 0.05, 0.06, 0.06, 0.07, 0.07, 0.06, 0.06]
    )

    TABLE2["2P5P -> S7P + T3P"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.07, 0.09, 0.09, 0.1, 0.13, 0.11, 0.14, 0.13, 0.16, 0.31, 0.31, 0.39, 0.41, 0.41, 0.43, 0.5, 0.49],
        "err" => [0.02, 0.02, 0.02, 0.03, 0.03, 0.03, 0.03, 0.04, 0.04, 0.05, 0.05, 0.06, 0.06, 0.07, 0.07, 0.06, 0.06]
    )

    TABLE2["F6P + ATP -> 2T3P"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.77, 1.0, 0.95, 1.4, 1.37, 1.52, 1.48, 1.77, 1.73, 2.12, 2.08, 3.31, 3.3, 3.53, 3.52, 4.44, 4.53],
        "err" => [0.11, 0.16, 0.17, 0.18, 0.18, 0.17, 0.16, 0.29, 0.28, 0.17, 0.16, 0.26, 0.26, 0.29, 0.29, 0.29, 0.33]
    )

    TABLE2["6PG -> T3P + PYR"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.05, 0.07, 0.08, 0.11, 0.12, 0.11, 0.12, 0.14, 0.15, 0.28, 0.31, 0.38, 0.38, 0.42, 0.42, 0.41, 0.46],
        "err" => [0.05, 0.06, 0.07, 0.11, 0.11, 0.12, 0.11, 0.14, 0.13, 0.14, 0.14, 0.19, 0.19, 0.21, 0.2, 0.21, 0.22]
    )

    TABLE2["G6P -> F6P"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.65, 0.85, 0.81, 1.25, 1.16, 1.35, 1.25, 1.57, 1.46, 1.58, 1.55, 2.68, 2.63, 2.86, 2.8, 3.63, 3.73],
        "err" => [0.09, 0.13, 0.14, 0.16, 0.14, 0.14, 0.13, 0.25, 0.23, 0.13, 0.12, 0.21, 0.21, 0.24, 0.23, 0.25, 0.28]
    )


    TABLE2["6PG -> P5P + CO2 + NADPH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.21, 0.27, 0.26, 0.31, 0.39, 0.34, 0.42, 0.39, 0.5, 0.97, 0.97, 1.23, 1.29, 1.33, 1.39, 1.65, 1.63],
        "err" => [0.05, 0.07, 0.07, 0.09, 0.09, 0.09, 0.09, 0.11, 0.12, 0.14, 0.13, 0.18, 0.18, 0.2, 0.2, 0.18, 0.19]
    )

    TABLE2["G6P -> 6PG + NADPH"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.26, 0.34, 0.34, 0.42, 0.51, 0.45, 0.54, 0.53, 0.65, 1.24, 1.28, 1.61, 1.67, 1.74, 1.8, 2.06, 2.09],
        "err" => [0.05, 0.06, 0.07, 0.08, 0.08, 0.08, 0.08, 0.1, 0.11, 0.11, 0.11, 0.16, 0.16, 0.17, 0.17, 0.19, 0.2]
    )

    TABLE2["GLC + ATP -> G6P"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.91, 1.19, 1.15, 1.67, 1.67, 1.8, 1.8, 2.11, 2.12, 2.84, 2.84, 4.31, 4.31, 4.62, 4.62, 5.71, 5.84],
        "err" => [0.12, 0.17, 0.18, 0.18, 0.18, 0.16, 0.16, 0.3, 0.3, 0.15, 0.15, 0.25, 0.25, 0.29, 0.29, 0.28, 0.33]
    )

    TABLE2["uAC"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
        "err" => [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
    )

    TABLE2["uGLC"] = Dict(
        "unit" => "mmol/ gDW hr",
        "val" => -[0.9, 1.2, 1.1, 1.7, 1.7, 1.8, 1.8, 2.0, 2.0, 2.8, 2.8, 4.2, 4.2, 4.6, 4.6, 5.7, 5.8],
        "err" => [0.1, 0.2, 0.2, 0.2, 0.2, 0.2, 1.2, 0.3, 0.3, 0.2, 0.2, 0.3, 0.4, 0.3, 0.3, 0.3, 0.3]
    )

    TABLE2["D"] = Dict(
        "unit" => "1/ hr",
        "val" => [0.04, 0.05, 0.06, 0.09, 0.09, 0.09, 0.09, 0.11, 0.11, 0.19, 0.19, 0.29, 0.29, 0.31, 0.31, 0.4, 0.41],
        "err" => [0.01, 0.01, 0.0, 0.01, 0.01, 0.01, 0.01, 0.0, 0.0, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.02]
    )
end

## -------------------------------------------------------------------
const DAT_IDERS = [
    "GLC + ATP -> G6P", "Biomass", "PEP -> PYR + ATP", "FUM -> MAL", 
    "AcCoA -> Acetate + ATP", "O2 + 2NADH -> 2P/O x ATP", "G6P -> 6PG + NADPH", 
    "T3P -> PGA + ATP + NADH", "S7P + T3P -> E4P + F6P", "MAL -> OAA + NADH", 
    "PYR -> AcCoA + CO2 + NADH", "xi", "PGA -> PEP", "P5P + E4P -> F6P + T3P", 
    "F6P + ATP -> 2T3P", "ICT + AcCoA -> MAL + FUM + NADH", "X", "MAL -> PYR + CO2 + NADH", 
    "uGLC", "PEP + CO2 -> OAA", "D", "NADPH -> NADH", "uAC", "OGA -> FUM + CO2 + 1.5*ATP + 2NADH", 
    "cGLC", "ICT -> OGA + CO2 + NADPH", "G6P -> F6P", "OAA + AcCoA -> ICT", "6PG -> T3P + PYR", 
    "2P5P -> S7P + T3P", "6PG -> P5P + CO2 + NADPH", "OAA + ATP -> PEP + CO2"
]

## -------------------------------------------------------------------
# BUNDLE
const EXPS = 1:17
const BUNDLE = Dict()
function _populate_bundle()

    empty!(BUNDLE)
    _populate_TABLE2()
    _populate_FIG3()

    BUNDLE["D"] = TABLE2["D"]

    # cell concentration (X)
    # I will average values extracted from FIG 3
    # estimated error from the handed procedure of copying from fig3
    rewrite_err = 0.03 # gDW/ L 
    fig3Xs = Dict()
    for (fig3D, fig3X) in zip(FIG3["D"]["val"], FIG3["X"]["val"])
        get!(fig3Xs, fig3D, [])
        push!(fig3Xs[fig3D], fig3X)
    end

    BUNDLE["X"] = Dict()
    BUNDLE["X"]["name"] = "cell concentration"
    BUNDLE["X"]["unit"] = "gDW / L"
    BUNDLE["X"]["val"] = []
    BUNDLE["X"]["err"] = []
    for D in BUNDLE["D"]["val"]
        av = mean(fig3Xs[D])
        err = length(fig3Xs[D]) > 1 ? max(std(fig3Xs[D]), rewrite_err) : rewrite_err
        push!(BUNDLE["X"]["val"], av)
        push!(BUNDLE["X"]["err"], err)
    end

    # xi
    BUNDLE["xi"] = Dict()
    BUNDLE["xi"]["name"] = "dilution specific cell concentration"
    BUNDLE["xi"]["units"] = "gCDW/ L h"
    BUNDLE["xi"]["val"] = BUNDLE["X"]["val"] ./ BUNDLE["D"]["val"]
    BUNDLE["xi"]["err"] = BUNDLE["X"]["err"]

    # cGLC
    # "M9 minimal medium with 1 g per liter glucose as 
    # the limiting substrate at a pH of 7.0"
    # MM_glc = 180.156 g/mol
    # c(g/L) / MM_glc(g/mol) = (mol/L) * 1e3 = (mmol/L)
    BUNDLE["cGLC"] = Dict()
    BUNDLE["cGLC"]["name"] = "feed glc concentration"
    BUNDLE["cGLC"]["units"] = "mM"
    BUNDLE["cGLC"]["val"] = fill((1.0 / 180.156) * 1e3, length(BUNDLE["D"]["val"]))
    BUNDLE["cGLC"]["err"] = fill(0.0, length(BUNDLE["D"]["val"]))

    # rxns
    for (rxn, dat) in TABLE2
        rxn == "D" && continue
        BUNDLE[rxn] = TABLE2[rxn]
    end
end

## ------------------------------------------------------------------
# API
const msd_mets = ["GLC", "AC"]

_get_val(id, dk) = BUNDLE[string(id)][dk]
_get_val(id, dk, exp::Int) = BUNDLE[string(id)][dk][exp]
_get_val(id, dk, ref, dflt) = try; _get_val(id, dk, ref); catch err; dflt end

for fun in [:val, :err]
    dk = string(fun)
    @eval $(fun)(id) = _get_val(id, $(dk))
    @eval $(fun)(id, ref) = _get_val(id, $(dk), ref)
    @eval $(fun)(id, ref, dflt) = _get_val(id, $(dk), ref, dflt)

    for p in [:u, :c]
        pstr = string(p)
        pfun = Symbol(p, fun)
        @eval $(pfun)(id, args...) = $(fun)(string($(pstr), id), args...)
    end
end

unit(id) = BUNDLE[string(id)]["unit"]

ciD_X(id) = [cval(id, exp, 0.0) * val(:D, exp) / val(:X, exp) for exp in EXPS]
ciD_X(id, exp) = cval(id, exp, 0.0) * val(:D, exp) / val(:X, exp)