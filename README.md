matlab_padarray
===============

Matlab (Packaged) function to zero pad arrays.

    %% Add package to path (+function folder must be on path for import) 
    addpath('your_import_path/matlab_padarray/package/');

    %% Import functions
    import padarray_pkg.* ;

    >> a = [1,2,3];
    >> padarray_pkg.padarray(a, 5)
    ans =
     
         1     2     3     0     0

    >> a = [1;2;3];
    >> padarray_pkg.padarray(a, 5)

    ans =

         1
         2
         3
         0
         0
