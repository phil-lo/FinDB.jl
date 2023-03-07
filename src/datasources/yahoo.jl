using Dates
import YFinance
using DataFrames

abstract type Yahoo <: DataSource end

"""
Fetches prices from Yahoo Finance API
"""
function prices(::Type{Yahoo}, tickers::Vector{String}, start_dt::Date, end_dt::Date; interval::AbstractString="1d")::DataFrame
    data = YFinance.get_prices.(tickers, startdt=start_dt, enddt=end_dt, exchange_local_time=true, interval=interval)
    return vcat([DataFrame(i) for i in data]...)
end

function prices(::Type{Yahoo}, tickers::Vector{String}; interval::AbstractString="1d", range::AbstractString="max")::DataFrame
    data = YFinance.get_prices.(tickers, range=range, exchange_local_time=true, interval=interval)
    return vcat([DataFrame(i) for i in data]...)
end