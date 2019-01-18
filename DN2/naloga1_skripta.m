  df1x = @(x, y, z) 5.*exp(5.*x.*y-10.*x.^2-y.^2).*(5.*y - 20.*x);
  df1y = @(x, y, z) 5.*exp(5.*x.*y-10.*x.^2-y.^2).*(5.*x - 2.*y);
  df1z = @(x, y, z) -1;
  df2x = @(x, y, z) 2.*x;
  df2y = @(x, y, z) 8.*y;
  df2z = @(x, y, z) 6.*z;
  df3x = @(x, y, z) 4.*x;
  df3y = @(x, y, z) 8.*y;
  df3z = @(x, y, z) -6.*z;
  
  DF = [df1x(x, y, z), df1y(x, y, z), df1z(x, y, z);
        df2x(x, y, z), df2y(x, y, z), df2z(x, y, z);
        df3x(x, y, z), df3y(x, y, z), df3z(x, y, z)];


F = [ @(x,y,z) 5.*exp(5.*x.*y-10.*x.^2-y.^2) - z;
      @(x,y,z) x.^2 + 4.*x.^2 + 3.*z.^2 - 4;
      @(x,y,z) 4.*x.^2 + 4.*y.^2 - 3.*z^2 - 1]
      
DF = [ @(x,y,z) 5.*exp(5.*x.*y-10.*x.^2-y.^2).*(5.*y - 20.*x), @(x,y,z) 5.*exp(5.*x.*y-10.*x.^2-y.^2).*(5.*x - 2.*y), @(x,y,z) -1;
       @(x,y,z) 2.*x, @(x,y,z) 8.*y, @(x,y,z) 6.*z;
       @(x,y,z) 4.*x, @(x,y,z) 8.*y, @(x,y,z) -6.*z]
       
