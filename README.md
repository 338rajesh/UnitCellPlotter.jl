# Unit Cell Plotter

This julia package can be used to visualize the unitcells.

At present 2D unit cells can be generated.

## Procedure

Unit cell with inclusions/particles can be generated and exported into
`.png`, `.pdf` formats, using the julia method `plot_unit_cell()`.

| Inclusion shape  |   | DataMatrixSize  | Position Info    |   Shape Info  |
|---|---|---|---|---|
| Circle  |   | (n, 3)  | x, y  | radius    |
| Capsule  |   | (n, 5)   |x, y, $\theta$ |  semi major and minor axis lengths   |
| Ellipse  |   | (n, 5)   |x, y, $\theta$ |  semi major and minor axis lengths   |



## Goals
- Get the 3D unit cell visualizations

