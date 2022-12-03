library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


package nn_package is

    
    -- Data representation constants
    constant N : integer := 16; -- Number of bits (data width)
    constant F : integer := 11; -- Number of fractional bits
    constant I : integer := N-F; -- Number of integer bits
    constant ONE : real := 2.0**F;
    constant ONE_int : integer := integer(ONE); -- 1 in fixed point representation
    

    type input_array is array(0 to 800) of real;-- input array
   

    constant input_1 : input_array := (-4.000,-3.99000000000000,-3.98000000000000,-3.97000000000000,-3.96000000000000,-3.95000000000000,-3.94000000000000,-3.93000000000000,-3.92000000000000,-3.91000000000000,-3.90000000000000,-3.89000000000000,-3.88000000000000,-3.87000000000000,-3.86000000000000,-3.85000000000000,-3.84000000000000,-3.83000000000000,-3.82000000000000,-3.81000000000000,-3.80000000000000,-3.79000000000000,-3.78000000000000,-3.77000000000000,-3.76000000000000,-3.75000000000000,-3.74000000000000,-3.73000000000000,-3.72000000000000,-3.71000000000000,-3.70000000000000,-3.69000000000000,-3.68000000000000,-3.67000000000000,-3.66000000000000,-3.65000000000000,-3.64000000000000,-3.63000000000000,-3.62000000000000,-3.61000000000000,-3.60000000000000,-3.59000000000000,-3.58000000000000,-3.57000000000000,-3.56000000000000,-3.55000000000000,-3.54000000000000,-3.53000000000000,-3.52000000000000,-3.51000000000000,-3.50000000000000,-3.49000000000000,-3.48000000000000,-3.47000000000000,-3.46000000000000,-3.45000000000000,-3.44000000000000,-3.43000000000000,-3.42000000000000,-3.41000000000000,-3.40000000000000,-3.39000000000000,-3.38000000000000,-3.37000000000000,-3.36000000000000,-3.35000000000000,-3.34000000000000,-3.33000000000000,-3.32000000000000,-3.31000000000000,-3.30000000000000,-3.29000000000000,-3.28000000000000,-3.27000000000000,-3.26000000000000,-3.25000000000000,-3.24000000000000,-3.23000000000000,-3.22000000000000,-3.21000000000000,-3.20000000000000,-3.19000000000000,-3.18000000000000,-3.17000000000000,-3.16000000000000,-3.15000000000000,-3.14000000000000,-3.13000000000000,-3.12000000000000,-3.11000000000000,-3.10000000000000,-3.09000000000000,-3.08000000000000,-3.07000000000000,-3.06000000000000,-3.05000000000000,-3.04000000000000,-3.03000000000000,-3.02000000000000,-3.01000000000000,-3.00,-2.99000000000000,-2.98000000000000,-2.97000000000000,-2.96000000000000,-2.95000000000000,-2.94000000000000,-2.93000000000000,-2.92000000000000,-2.91000000000000,-2.90000000000000,-2.89000000000000,-2.88000000000000,-2.87000000000000,-2.86000000000000,-2.85000000000000,-2.84000000000000,-2.83000000000000,-2.82000000000000,-2.81000000000000,-2.80000000000000,-2.79000000000000,-2.78000000000000,-2.77000000000000,-2.76000000000000,-2.75000000000000,-2.74000000000000,-2.73000000000000,-2.72000000000000,-2.71000000000000,-2.70000000000000,-2.69000000000000,-2.68000000000000,-2.67000000000000,-2.66000000000000,-2.65000000000000,-2.64000000000000,-2.63000000000000,-2.62000000000000,-2.61000000000000,-2.60000000000000,-2.59000000000000,-2.58000000000000,-2.57000000000000,-2.56000000000000,-2.55000000000000,-2.54000000000000,-2.53000000000000,-2.52000000000000,-2.51000000000000,-2.50000000000000,-2.49000000000000,-2.48000000000000,-2.47000000000000,-2.46000000000000,-2.45000000000000,-2.44000000000000,-2.43000000000000,-2.42000000000000,-2.41000000000000,-2.40000000000000,-2.39000000000000,-2.38000000000000,-2.37000000000000,-2.36000000000000,-2.35000000000000,-2.34000000000000,-2.33000000000000,-2.32000000000000,-2.31000000000000,-2.30000000000000,-2.29000000000000,-2.28000000000000,-2.27000000000000,-2.26000000000000,-2.25000000000000,-2.24000000000000,-2.23000000000000,-2.22000000000000,-2.21000000000000,-2.20000000000000,-2.19000000000000,-2.18000000000000,-2.17000000000000,-2.16000000000000,-2.15000000000000,-2.14000000000000,-2.13000000000000,-2.12000000000000,-2.11000000000000,-2.10000000000000,-2.09000000000000,-2.08000000000000,-2.07000000000000,-2.06000000000000,-2.05000000000000,-2.04000000000000,-2.03000000000000,-2.02000000000000,-2.01000000000000,-2.0000,-1.99000000000000,-1.98000000000000,-1.97000000000000,-1.96000000000000,-1.95000000000000,-1.94000000000000,-1.93000000000000,-1.92000000000000,-1.91000000000000,-1.90000000000000,-1.89000000000000,-1.88000000000000,-1.87000000000000,-1.86000000000000,-1.85000000000000,-1.84000000000000,-1.83000000000000,-1.82000000000000,-1.81000000000000,-1.80000000000000,-1.79000000000000,-1.78000000000000,-1.77000000000000,-1.76000000000000,-1.75000000000000,-1.74000000000000,-1.73000000000000,-1.72000000000000,-1.71000000000000,-1.70000000000000,-1.69000000000000,-1.68000000000000,-1.67000000000000,-1.66000000000000,-1.65000000000000,-1.64000000000000,-1.63000000000000,-1.62000000000000,-1.61000000000000,-1.60000000000000,-1.59000000000000,-1.58000000000000,-1.57000000000000,-1.56000000000000,-1.55000000000000,-1.54000000000000,-1.53000000000000,-1.52000000000000,-1.51000000000000,-1.50000000000000,-1.49000000000000,-1.48000000000000,-1.47000000000000,-1.46000000000000,-1.45000000000000,-1.44000000000000,-1.43000000000000,-1.42000000000000,-1.41000000000000,-1.40000000000000,-1.39000000000000,-1.38000000000000,-1.37000000000000,-1.36000000000000,-1.35000000000000,-1.34000000000000,-1.33000000000000,-1.32000000000000,-1.31000000000000,-1.30000000000000,-1.29000000000000,-1.28000000000000,-1.27000000000000,-1.26000000000000,-1.25000000000000,-1.24000000000000,-1.23000000000000,-1.22000000000000,-1.21000000000000,-1.20000000000000,-1.19000000000000,-1.18000000000000,-1.17000000000000,-1.16000000000000,-1.15000000000000,-1.14000000000000,-1.13000000000000,-1.12000000000000,-1.11000000000000,-1.10000000000000,-1.09000000000000,-1.08000000000000,-1.07000000000000,-1.06000000000000,-1.05000000000000,-1.04000000000000,-1.03000000000000,-1.02000000000000,-1.01000000000000,-1.000,-0.990000000000000,-0.980000000000000,-0.970000000000000,-0.960000000000000,-0.950000000000000,-0.940000000000000,-0.930000000000000,-0.920000000000000,-0.910000000000000,-0.900000000000000,-0.890000000000000,-0.880000000000000,-0.870000000000000,-0.860000000000000,-0.850000000000000,-0.840000000000000,-0.830000000000000,-0.820000000000000,-0.810000000000000,-0.800000000000000,-0.790000000000000,-0.780000000000000,-0.770000000000000,-0.760000000000000,-0.750000000000000,-0.740000000000000,-0.730000000000000,-0.720000000000000,-0.710000000000000,-0.700000000000000,-0.690000000000000,-0.680000000000000,-0.670000000000000,-0.660000000000000,-0.650000000000000,-0.640000000000000,-0.630000000000000,-0.620000000000000,-0.610000000000000,-0.600000000000000,-0.590000000000000,-0.580000000000000,-0.570000000000000,-0.560000000000000,-0.550000000000000,-0.540000000000000,-0.530000000000000,-0.520000000000000,-0.510000000000000,-0.500000000000000,-0.490000000000000,-0.480000000000000,-0.470000000000000,-0.460000000000000,-0.450000000000000,-0.440000000000000,-0.430000000000000,-0.420000000000000,-0.410000000000000,-0.400000000000000,-0.390000000000000,-0.380000000000000,-0.370000000000000,-0.360000000000000,-0.350000000000000,-0.340000000000000,-0.330000000000000,-0.320000000000000,-0.310000000000000,-0.300000000000000,-0.290000000000000,-0.280000000000000,-0.270000000000000,-0.260000000000000,-0.250000000000000,-0.240000000000000,-0.230000000000000,-0.220000000000000,-0.210000000000000,-0.200000000000000,-0.190000000000000,-0.180000000000000,-0.170000000000000,-0.160000000000000,-0.150000000000000,-0.140000000000000,-0.130000000000000,-0.120000000000000,-0.110000000000000,-0.100000000000000,-0.0899999999999999,-0.0800000000000001,-0.0699999999999998,-0.0600000000000001,-0.0499999999999998,-0.0400000000000000,-0.0299999999999998,-0.0200000000000000,-0.00999999999999979,0.00,0.00999999999999979,0.0200000000000000,0.0299999999999998,0.0400000000000000,0.0499999999999998,0.0600000000000001,0.0699999999999998,0.0800000000000001,0.0899999999999999,0.100000000000000,0.110000000000000,0.120000000000000,0.130000000000000,0.140000000000000,0.150000000000000,0.160000000000000,0.170000000000000,0.180000000000000,0.190000000000000,0.200000000000000,0.210000000000000,0.220000000000000,0.230000000000000,0.240000000000000,0.250000000000000,0.260000000000000,0.270000000000000,0.280000000000000,0.290000000000000,0.300000000000000,0.310000000000000,0.320000000000000,0.330000000000000,0.340000000000000,0.350000000000000,0.360000000000000,0.370000000000000,0.380000000000000,0.390000000000000,0.400000000000000,0.410000000000000,0.420000000000000,0.430000000000000,0.440000000000000,0.450000000000000,0.460000000000000,0.470000000000000,0.480000000000000,0.490000000000000,0.500000000000000,0.510000000000000,0.520000000000000,0.530000000000000,0.540000000000000,0.550000000000000,0.560000000000000,0.570000000000000,0.580000000000000,0.590000000000000,0.600000000000000,0.610000000000000,0.620000000000000,0.630000000000000,0.640000000000000,0.650000000000000,0.660000000000000,0.670000000000000,0.680000000000000,0.690000000000000,0.700000000000000,0.710000000000000,0.720000000000000,0.730000000000000,0.740000000000000,0.750000000000000,0.760000000000000,0.770000000000000,0.780000000000000,0.790000000000000,0.800000000000000,0.810000000000000,0.820000000000000,0.830000000000000,0.840000000000000,0.850000000000000,0.860000000000000,0.870000000000000,0.880000000000000,0.890000000000000,0.900000000000000,0.910000000000000,0.920000000000000,0.930000000000000,0.940000000000000,0.950000000000000,0.960000000000000,0.970000000000000,0.980000000000000,0.990000000000000,1.00000,1.01000000000000,1.02000000000000,1.03000000000000,1.04000000000000,1.05000000000000,1.06000000000000,1.07000000000000,1.08000000000000,1.09000000000000,1.10000000000000,1.11000000000000,1.12000000000000,1.13000000000000,1.14000000000000,1.15000000000000,1.16000000000000,1.17000000000000,1.18000000000000,1.19000000000000,1.20000000000000,1.21000000000000,1.22000000000000,1.23000000000000,1.24000000000000,1.25000000000000,1.26000000000000,1.27000000000000,1.28000000000000,1.29000000000000,1.30000000000000,1.31000000000000,1.32000000000000,1.33000000000000,1.34000000000000,1.35000000000000,1.36000000000000,1.37000000000000,1.38000000000000,1.39000000000000,1.40000000000000,1.41000000000000,1.42000000000000,1.43000000000000,1.44000000000000,1.45000000000000,1.46000000000000,1.47000000000000,1.48000000000000,1.49000000000000,1.50000000000000,1.51000000000000,1.52000000000000,1.53000000000000,1.54000000000000,1.55000000000000,1.56000000000000,1.57000000000000,1.58000000000000,1.59000000000000,1.60000000000000,1.61000000000000,1.62000000000000,1.63000000000000,1.64000000000000,1.65000000000000,1.66000000000000,1.67000000000000,1.68000000000000,1.69000000000000,1.70000000000000,1.71000000000000,1.72000000000000,1.73000000000000,1.74000000000000,1.75000000000000,1.76000000000000,1.77000000000000,1.78000000000000,1.79000000000000,1.80000000000000,1.81000000000000,1.82000000000000,1.83000000000000,1.84000000000000,1.85000000000000,1.86000000000000,1.87000000000000,1.88000000000000,1.89000000000000,1.90000000000000,1.91000000000000,1.92000000000000,1.93000000000000,1.94000000000000,1.95000000000000,1.96000000000000,1.97000000000000,1.98000000000000,1.99000000000000,2.00000000000000,2.01000000000000,2.02000000000000,2.03000000000000,2.04000000000000,2.05000000000000,2.06000000000000,2.07000000000000,2.08000000000000,2.09000000000000,2.10000000000000,2.11000000000000,2.12000000000000,2.13000000000000,2.14000000000000,2.15000000000000,2.16000000000000,2.17000000000000,2.18000000000000,2.19000000000000,2.20000000000000,2.21000000000000,2.22000000000000,2.23000000000000,2.24000000000000,2.25000000000000,2.26000000000000,2.27000000000000,2.28000000000000,2.29000000000000,2.30000000000000,2.31000000000000,2.32000000000000,2.33000000000000,2.34000000000000,2.35000000000000,2.36000000000000,2.37000000000000,2.38000000000000,2.39000000000000,2.40000000000000,2.41000000000000,2.42000000000000,2.43000000000000,2.44000000000000,2.45000000000000,2.46000000000000,2.47000000000000,2.48000000000000,2.49000000000000,2.50000000000000,2.51000000000000,2.52000000000000,2.53000000000000,2.54000000000000,2.55000000000000,2.56000000000000,2.57000000000000,2.58000000000000,2.59000000000000,2.60000000000000,2.61000000000000,2.62000000000000,2.63000000000000,2.64000000000000,2.65000000000000,2.66000000000000,2.67000000000000,2.68000000000000,2.69000000000000,2.70000000000000,2.71000000000000,2.72000000000000,2.73000000000000,2.74000000000000,2.75000000000000,2.76000000000000,2.77000000000000,2.78000000000000,2.79000000000000,2.80000000000000,2.81000000000000,2.82000000000000,2.83000000000000,2.84000000000000,2.85000000000000,2.86000000000000,2.87000000000000,2.88000000000000,2.89000000000000,2.90000000000000,2.91000000000000,2.92000000000000,2.93000000000000,2.94000000000000,2.95000000000000,2.96000000000000,2.97000000000000,2.98000000000000,2.99000000000000,3.00000000000000,3.01000000000000,3.02000000000000,3.03000000000000,3.04000000000000,3.05000000000000,3.06000000000000,3.07000000000000,3.08000000000000,3.09000000000000,3.10000000000000,3.11000000000000,3.12000000000000,3.13000000000000,3.14000000000000,3.15000000000000,3.16000000000000,3.17000000000000,3.18000000000000,3.19000000000000,3.20000000000000,3.21000000000000,3.22000000000000,3.23000000000000,3.24000000000000,3.25000000000000,3.26000000000000,3.27000000000000,3.28000000000000,3.29000000000000,3.30000000000000,3.31000000000000,3.32000000000000,3.33000000000000,3.34000000000000,3.35000000000000,3.36000000000000,3.37000000000000,3.38000000000000,3.39000000000000,3.40000000000000,3.41000000000000,3.42000000000000,3.43000000000000,3.44000000000000,3.45000000000000,3.46000000000000,3.47000000000000,3.48000000000000,3.49000000000000,3.50000000000000,3.51000000000000,3.52000000000000,3.53000000000000,3.54000000000000,3.55000000000000,3.56000000000000,3.57000000000000,3.58000000000000,3.59000000000000,3.60000000000000,3.61000000000000,3.62000000000000,3.63000000000000,3.64000000000000,3.65000000000000,3.66000000000000,3.67000000000000,3.68000000000000,3.69000000000000,3.70000000000000,3.71000000000000,3.72000000000000,3.73000000000000,3.74000000000000,3.75000000000000,3.76000000000000,3.77000000000000,3.78000000000000,3.79000000000000,3.80000000000000,3.81000000000000,3.82000000000000,3.83000000000000,3.84000000000000,3.85000000000000,3.86000000000000,3.87000000000000,3.88000000000000,3.89000000000000,3.90000000000000,3.91000000000000,3.92000000000000,3.93000000000000,3.94000000000000,3.95000000000000,3.96000000000000,3.97000000000000,3.98000000000000,3.99000000000000,4.00000000000000);
	
end package nn_package;
