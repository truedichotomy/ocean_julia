# 2019-12-14: Donglai Gong

if (pwd() in LOAD_PATH) == false
    push!(LOAD_PATH, pwd());
end

using Pkg
Pkg.add("IJulia")
Pkg.add("PyCall")

Pkg.add("ArgParse")
Pkg.add("WorldOceanAtlasTools")
Pkg.add("ShallowWaters")
Pkg.add("PhysOcean")
Pkg.add("AIBECS")
Pkg.add("Revise")
Pkg.add("Debugger")

Pkg.add("Dates")
Pkg.add("Statistics")
Pkg.add("SparseArrays")
Pkg.add("DifferentialEquations")
Pkg.add("LinearAlgebra")
Pkg.add("Missings")
#Pkg.add("Oceananigans")

Pkg.add("Makie")
Pkg.add("GeometryTypes")
Pkg.add("Colors")
Pkg.add("Interact")
Pkg.add("ImageFiltering")

Pkg.add("ScikitLearn")
Pkg.add("LsqFit")
Pkg.add("TimeSeries")
Pkg.add("Indicators")
Pkg.add("DynamicalSystems")
Pkg.add("DifferentialEquations")
Pkg.add("GeoJSON")
Pkg.add("Pandas")
Pkg.add("MATLAB")
Pkg.add("StatsPlots")
Pkg.add("Interact")

Pkg.add("ArgParse")
Pkg.add("SparseArrays")

Pkg.add("Flux")
Pkg.add("DiffEqFlux")
Pkg.add("Optim")
Pkg.add("Lathe")
Pkg.add("ClimateTools")
Pkg.add("MLJ")
Pkg.add("MLJBase")
Pkg.add("MLJModels")
Pkg.add("ScientificTypes")
Pkg.add("MLJLinearModels")
Pkg.add("XGBoost")
Pkg.add("Knet")
Pkg.add("Turing")
Pkg.add("BayesNets")
Pkg.add("Clustering")
Pkg.add("TimeSeries")
Pkg.add("Measurements")
Pkg.add("Indicators")
Pkg.add("GLM")
Pkg.add("HypothesisTests")
Pkg.add("StatsBase")
Pkg.add("DecisionTree")
Pkg.add("NaiveBayes")
Pkg.add("MultivariateStats")
Pkg.add("GaussianMixtures")
Pkg.add("TimeseriesPrediction")
Pkg.add("NearestNeighbors")
Pkg.add("DynamicalSystems")
Pkg.add("StochasticDiffEq")
Pkg.add("DiffEqBase")
#Pkg.add("DiffEqGPU") # Note that this package somehow prevents a bunch of different packages from upgrading to the latest version. add with care!!!
Pkg.add("ONNX")
Pkg.add("Zygote")
Pkg.add("LsqFit")
Pkg.add("FFTW")
Pkg.add("NLsolve")
Pkg.add("Convex")
Pkg.add("DecisionTree")
Pkg.add("Distributions")
Pkg.add("NaNMath")
Pkg.add("JuliaBerry")
Pkg.add("TextAnalysis")
Pkg.add("Word2Vec")
Pkg.add("WordTokenizers")
Pkg.add("CorpusLoaders")
Pkg.add("WordNet")
Pkg.add("Quaternions")

Pkg.add("Distances")
Pkg.add("Geodesy")
Pkg.add("GDAL")
Pkg.add("NetCDF")
Pkg.add("NCDatasets")
Pkg.add("LightGraphs")
Pkg.add("Images")
Pkg.add("GeoInterface")
Pkg.add("GeoJSON")
Pkg.add("Shapefile")
Pkg.add("CFTime")
Pkg.add(PackageSpec(url="https://github.com/kouketsu/GSW.jl", rev="master"))
Pkg.add(PackageSpec(url="https://github.com/JuliaGeo/GeoDatasets.jl", rev="master"))

Pkg.add("Tables")
Pkg.add("JSON3")
Pkg.add("Parsers")
Pkg.add("Glob")
Pkg.add("CSV")
Pkg.add("Feather")
Pkg.add("DataFrames")
Pkg.add("Query")
#Pkg.add("JuliaDB")
Pkg.add("LightGraphs")
Pkg.add("FileIO")
Pkg.add("HDF5")
Pkg.add("JLD2")
Pkg.add("OnlineStats")
Pkg.add("StatsPlots")
Pkg.add("Turing")

Pkg.add("Convex")
Pkg.add("JuMP")
#Pkg.add("MultiJuMP")
Pkg.add("LsqFit")
Pkg.add("NLsolve")
Pkg.add("GridInterpolations")
Pkg.add("Interpolations")
Pkg.add("Dierckx")

Pkg.add("EarthOrientation")
Pkg.add("WCS")
Pkg.add("SkyCoords")
Pkg.add("AstroLib")
Pkg.add("AstroTime")
Pkg.add("Cosmology")
Pkg.add("DustExtinction")
Pkg.add("EarthOrientation")
Pkg.add("FITSIO")
Pkg.add("OIFITS")
Pkg.add("UnitfulAstro")

Pkg.add("DistributedArrays")
Pkg.add("Dagger")
Pkg.add("CUDA")

Pkg.add("Cxx")
#Pkg.add("Immerse")
Pkg.add("BinaryBuilder")
Pkg.add("BinaryProvider")

Pkg.add("AWSS3")
#Pkg.add("SQLite")
Pkg.add("JuliaDB")
#Pkg.add("AWSSDK")
Pkg.add("Kuber")

Pkg.add("PyPlot")
Pkg.add("WebIO")
Pkg.add("UnicodePlots")
#Pkg.add("Blink")
Pkg.add("Plots")
Pkg.add("StatsPlots")
Pkg.add("PlotlyJS")
Pkg.add("ORCA")
Pkg.add("ImageMagick")
Pkg.add("ImageIO")
#Pkg.add("Juno")

#ENV["JULIA_PARDISO"] = "/Users/gong/lib/Pardiso/libpardiso600-MACOS-X86-64.dylib"
#Pkg.add("Pardiso")

using Conda
Conda.add("cmocean",channel="conda-forge")

if Sys.iswindows() == false
    #ENV["PYTHON"] = ENV["HOME"] * "/anaconda3/bin/python3"
    ENV["PYTHON"] = ENV["HOME"] * "/.julia/conda/3/bin/python3"
else
    ENV["PYTHON"] = "C:" * ENV["HOMEPATH"] * "\\.julia\\conda\\3\\python.exe"
end
Pkg.build("PyCall")

using NCDatasets
using CSV, Glob, FileIO, JLD2, DataFrames #Serialization, FileIO, JLD
using Missings, Dates
using GSW, Statistics, NaNMath
using IJulia, PyPlot, PyCall
using Makie, Interact
