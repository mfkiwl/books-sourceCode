function y = EFR12_5nuhatb(x)
for i=1:length(x)
if (x(i)>=0)&(x(i)<=10), y(i)=-BSprime(x(i)-3);
elseif (x(i)<0)&(x(i)>=-10), y(i) = -EFR12_5nuhatb(-x(i));
else q=floor((x(i)+10)/20);, y(i)=EFR12_5nuhatb(x(i)-20*q);
end
end