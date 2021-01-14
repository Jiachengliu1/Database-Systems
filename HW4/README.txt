Q1. 
Equation: MEDV = -0.1084 * CRIM + 0.0458 * ZN + 2.7187 * CHAS=1 - 17.376 * NOX + 3.8016 * RM - 1.4927 * DIS + 0.2996 * RAD - 0.0118 * TAX - 0.9465 * PTRATIO + 0.0093 * B - 0.5226 * LSTAT + 36.3411

There are 12 terms in equation (including the constant term). The output linear equation describes x,y relationship where x is a set of independent variables including CRIM, ZN, CHAS=1, NOX, RM, DIS, RAD, TAX, PTRATIO, B, LSTAT and y is the dependent variable MEDV. Coefficient of each independent variable represents its weight towards MEDV. The constant term 36.3411 is the y-intercept of regression line. INDUS and AGE attributes are missing here, so I assume that they do not contribute much to the relationship. Also, from the coefficient (slope) we could know NOX and RM affect most to the relationship where NOX brings a negative effect while RM brings a positive effect. CHAS=1 indicates that only tract bounds river contributes to the linear relation since CHAS is a binary variable of 1 or 0.

Q2.
Equation: num_rings = -0.8249 * sex=I + 0.0577 * sex=M - 0.4583 * length + 11.0751 * diameter + 10.7615 * height + 8.9754 * whole_weight - 19.7869 * shucked_weight - 10.5818 * viscera_weight + 8.7418 * shell_weight + 3.8946

Q3.
Equation: num_rings = -11.933 * length + 25.766 * diameter + 20.358 * height + 2.836