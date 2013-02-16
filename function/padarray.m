function A = padarray( A, min_size)
  % B = padarray(A, min_size)
  
  % % Future Expansion
  % B = padarray(A, min_size, padval)
  % B = padarray(A, min_size, padval, direction)

  padval = 0;
  
  %check array is single dimension
  if (  (~isrow(A)) && (~iscolumn(A))  )
    error('padarray( A, min_size); A must be one-dimension')
  end
  
  % Find length of input array; Already confimed 1 dimesion.
  max_dimension = length(A);
  
  % Perfom Padding if required
  if ( min_size > max_dimension )
    requiredpadding = min_size - max_dimension;
    A(end+requiredpadding) = padval;
  end
end
