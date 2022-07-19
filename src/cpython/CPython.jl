"""
    module CPython

This module provides a direct interface to the Python C API.
"""
module C

import Base: @kwdef
import CondaPkg
import Pkg
using Libdl, Requires, UnsafePointers, Serialization, ..Utils

include("consts.jl")
include("pointers.jl")
include("extras.jl")
include("context.jl")
include("gil.jl")
include("jlwrap.jl")
include("gc.jl")

function __init__()
    init_context()
    with_gil() do
        init_jlwrap()
    end
end

end
