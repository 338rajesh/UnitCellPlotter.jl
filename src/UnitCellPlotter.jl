module UnitCellPlotter

using PyCall

"""
plot_udc_ruc()

# Args

- ruc_bbox::NTuple{4, Float64},
- inclusions::Dict{String, Matrix{Float64}};
- image_path::Union{String, Nothing} = nothing,
- matrix_color::Union{String, Symbol} = :grey,
- fibre_color::Union{String, Symbol} = :black,
- matrix_edge_color::Union{String, Symbol, Nothing} = nothing,
- fibre_edge_color::Union{String, Symbol, Nothing} = nothing,
- z_comp_in_data:: Bool = true,

"""
function plot_unit_cell(
    ruc_bbox::NTuple{4,Float64},
    inclusions::Dict{String,Matrix{Float64}};
    image_path::Union{String,Nothing} = nothing,
    matrix_color::Union{String,Symbol} = :grey,
    fibre_color::Union{String,Symbol} = :black,
    matrix_edge_color::Union{String,Symbol,Nothing} = nothing,
    fibre_edge_color::Union{String,Symbol,Nothing} = nothing,
    fibre_edge_thickness::Union{Float64,Nothing} = nothing,
    z_comp_in_data::Bool = true
)
    @pyinclude(joinpath(@__DIR__, "plot_2D_shapes.py"))
    py"plot_unit_cell"(
        ruc_bbox, inclusions,
        image_path = image_path,
        matrix_color = matrix_color,
        fibre_color = fibre_color,
        matrix_edge_color = matrix_edge_color,
        fibre_edge_color = fibre_edge_color,
        fibre_edge_thickness = fibre_edge_thickness,
        z_comp_in_data = z_comp_in_data,
    )

end

export plot_unit_cell

end
