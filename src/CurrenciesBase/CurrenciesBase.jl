module CurrenciesBase

using Compat
using Requests

using ..CurrencyData

import Base: +, -, *, /, ==

# Exports
export AbstractMonetary, Monetary
export currency, decimals, @usingcurrencies
export currencyinfo, iso4217num, iso4217alpha, shortsymbol, longsymbol
export valuate, ExchangeRateTable, ecbrates
export Basket, StaticBasket, DynamicBasket
export simplefv, compoundfv
export newcurrency!, @usingcustomcurrency

# Monetary type, currencies, and arithmetic
include("monetary.jl")
include("currency.jl")
include("arithmetic.jl")

# Baskets
include("basket.jl")
include("mixed.jl")

# Computations (valuation)
include("valuate.jl")
include("usingcurrencies.jl")
include("custom.jl")

# Deprecations
include("deprecated.jl")

end  # module CurrenciesBase
