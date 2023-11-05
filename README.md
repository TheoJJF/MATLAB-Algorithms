# MATLAB - Algorithms

This repository contains a collection of algorithms used in numerical analysis
and numerical linear algebra. All algorithms are implemented in MATLAB, which means MATLAB must be installed
before running any script in this repository.

## MATLAB Installation
For steps on purchasing/installing MATLAB, please follow [MathWorks Documentation](https://www.mathworks.com/help/install/install-products.html)

## List of Algorithms
### Numerically Stable Algorithms
1. [Backward Substitution](backward_substitution.m)
1. [Gaussian Elimination with Partial Pivoting](ge_partial_pivoting.m)
1. [PLU Decomposition](plu_decomposition.m)
1. [Cholesky Decomposition](cholesky_decomposition.m)
1. [Full QR Decomposition](full_qr_decomposition.m)


### Numerically Unstable Algorithms
1. [Gaussian Elimination ](gaussian_elimination.m)
1. [LU Decomposition](lu_decomposition.m)
1. [Reduced QR Decomposition](reduced_qr_decomposition.m)

## Algorithm Information

### Backward Substitution 
**General Formula**
$$x_i=\dfrac{b_i-\displaystyle\sum_{j=i+1}^n a_{ij}x_j}{a_{ii}}$$

**Time Complexity**
$$O(n^2)$$

### Gaussian Elimination with/without Partial Pivoting
**Time Complexity**
$$O(n^3)$$

### LU/PLU Decomposition
