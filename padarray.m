function padded = padarray( array_in, length )

  requiredpadding = length - size( array_in );
  padded          = [myVec zeros(1,requiredpadding)];

end
