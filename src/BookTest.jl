module BookTest

using Reexport: @reexport
@reexport begin
using Books:
    build_all,
    gen
using DataFrames:
    DataFrame,
    filter!,
    filter,
    select!,
    select
end # @reexport

using BenchmarkTools
using StaticArrays

include("data.jl")
include("optimizing-serial-code.jl")

export example_dataframe
export inner_rows!
export inner_cols!

"""
    build()

This function is called during CI.
"""
function build()
    println("Building Example Book")
    # To avoid publishing broken websites.
    fail_on_error = true
    gen(; fail_on_error)
    build_all(; fail_on_error)
end

end # module

