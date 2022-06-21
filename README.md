# Unit Cell Plotter

This julia package can be used to visualize the unit cells.

At present

- only 2D unit cells can be generated
- It uses python's matplotlib and numpy for plotting. Detailed instructions on the setup are given **here**.

## Installation

From Julia REPL, execute the following,

```julia
julia> using Pkg
julia> Pkg.add("https://github.com/338rajesh/FEPreProcessing.jl#main")
```

### Instructions for setting up matplotlib and numpy environment

## Documentation

This module exports the following single function.

```julia
julia> using UnitCellPlotter
julia> plot_unit_cell(ruc_bbox, inclusions; <kwargs>)
```

where,

- `ruc_bbox::NTuple{4, Float64}`
- `inclusions::Dict{String,Matrix{Float64}}`
- kwargs, Keyword Arguments
  - `image_path::Union{String, Nothing} = nothing,`
  - `matrix_color::Union{String, Symbol, Nothing} = :grey,`
  - `fibre_color::Union{String, Symbol, Nothing} = :black,`
  - `matrix_edge_color::Union{String, Symbol, Nothing} = nothing,`
  - `fibre_edge_color::Union{String, Symbol, Nothing} = nothing,`
  - `fibre_edge_thickness::Union{Float64, Nothing} = nothing,`
  - `z_comp_in_data::Bool = true,`
  - `pixels::NTuple{2, Float64}=(100.0, 100.0),`

> **Note**: Unit cell with inclusions/particles can be exported into all the formats supported by `matplotlib.pyplot.savefig()` method. This can be specified by the image file extension in `image_path` keyword.

The following table shows admissible inclusion shapes and their respective data matrix shapes.

| Inclusion shape ID  |   | Data Matrix Representation  | Data matrix shape   |
|---|---|---|---|
| CIRCLE  |   | `[x \| y \| radius]`  | (n, 3)  |
| CAPSULE  |   | `[x \| y \| theta \| smjx \| smnx]`   | (n, 5) |
| ELLIPSE  |   | `[x \| y \| theta \| smjx \| smnx]`   | (n, 5) |
| RECTANGLE  |   | `[x \| y \| theta \| smjx \| smnx \| c_radius]`   | (n, 6) |
| CSHAPE  |   | `[x \| y \| theta \| ro ri \| alpha]`   | (n, 6) |
| RPOLYGON  |   | `[x \| y \| theta \| side_len \| c_radius \| num_sides]`   | (n, 6) |
| NLOBE  |   | `[x \| y \| theta \| ro \| lobe_radius \| num_lobes]`   | (n, 6) |
| nSTAR  |   | `[x \| y \| theta \| ro \| rb \| rt \| rbf \| num_tips]`   | (n, 8) |
||||||

Here, `rb`: base radius, `ri`: inner radius, `ro`: outer radius, `rt`: tip radius, `rbf`: base fillet radius, `c_radius`: corner radius.

### Example


## Goals

- Writing tests for all the shapes
- Extending to 3D unit cell visualizations
- Make it purely julia based plots with as least number of dependencies.
