# Dynamic Power Allocation for N-NOMA

The `powerAdjustment` function is a crucial component designed to adjust power allocations based on user feedback error, specifically for Non-Orthogonal Multiple Access (NOMA) systems.

## Table of Contents

- [Functionality](#functionality)
- [Usage](#usage)
- [Inputs and Outputs](#inputs-and-outputs)
- [Contribution](#contribution)
- [License](#license)

## Functionality

The function aims to refine power allocations (`g`) considering the error `epsilon` with respect to certain bounds defined by `epsilon_max`. By analyzing the errors and making adjustments, the function can optimize the NOMA power allocations for better system performance.

## Usage

To use the `powerAdjustment` function in MATLAB, simply import the function file into your workspace or project directory and call it as:

```matlab
adjusted_g = powerAdjustment(current_g, epsilon_values);
