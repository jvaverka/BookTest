function inner_rows!(C,A,B)
    for i in 1:100, j in 1:100
        C[i,j] = A[i,j] + B[i,j]
    end
end

function inner_cols!(C,A,B)
  for j in 1:100, i in 1:100
    C[i,j] = A[i,j] + B[i,j]
  end
end
