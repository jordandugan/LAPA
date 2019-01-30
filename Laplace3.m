nx = 50;
ny = 50;
V = rand(nx,ny);
V(:,1) = 1;
V(:,nx) = 1;
V(1,:) = 0;
V(ny,:) = 0;

for i = 1:100
    Vn = imboxfilt(V,3);
    V(2:ny-1,2:nx-1) = Vn(2:ny-1,2:nx-1);
end
surf(V)