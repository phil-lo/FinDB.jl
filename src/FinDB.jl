module FinDB

using YFinance
using DataFrames
using Dates

include("datasources/sources.jl")
include("datasources/yahoo.jl")

export prices, Yahoo

end # module FinDB
