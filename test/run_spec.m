%function run_spec
  clear;
  %% Clear import list to test correct library
  clear import; 

  %% Add package to path (+function folder must be on path)
  addpath('../package/');

  %% Import functions 
  import padarray_pkg.* ;
 
  a_horiz = [1,2,3];
  b = padarray(a_horiz, 5);
  error_count = 0;
  pass_count  = 0;
  
  if (  ~isequal(b, [1,2,3,0,0])  )
    disp('padarray(a_horiz, 5) Failed ')
    error_count = error_count + 1;
  else
    pass_count  = pass_count + 1;
  end

  b = padarray(a_horiz, 10);
  
  if (  ~isequal(b, [1,2,3,0,0,0,0,0,0,0])  ) 
    disp('padarray(a_horiz, 10) Failed ')
    error_count = error_count + 1;
  else
    pass_count  = pass_count + 1;
  end

  a_vert = [1;2;3];
  b = padarray(a_vert, 5);
  
  if (  ~isequal( b, [1;2;3;0;0])  )
    disp('padarray(a_vert, 5) Failed ')
    error_count = error_count + 1;
  else
    pass_count  = pass_count + 1;
  end

  b = padarray(a_vert, 10);
  
  if ( ~isequal(b, [1;2;3;0;0;0;0;0;0;0])  )
    disp('padarray(a_vert, 10) Failed ')
    error_count = error_count + 1;
  else
    pass_count  = pass_count + 1;
  end



  if (error_count == 0)
    disp(['Passed : Tests count ',num2str(pass_count)])
  else
    disp(['Failed : Tests count ',num2str(pass_count), ', Fails ', num2str(error_count)])
  end
