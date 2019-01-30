nx = 50;
ny = 50;
V = rand(nx,ny);
V(:,1) = 1;
V(:,nx) = 1;
V(1,:) = 0;
V(ny,:) = 0;
for i = 1:1000

    Vn = (circshift(V,1,1) + circshift(V,-1,1) + circshift(V,1,2) + circshift(V,-1,2))/4;

    V(2:ny-1,2:nx-1) = Vn(2:ny-1,2:nx-1);
   
end

[Ex, Ey] = gradient(V);
Ex=-Ex;
Ey=-Ey;
figure(1)
surf(V)
figure(2)
quiver(Ex,Ey)