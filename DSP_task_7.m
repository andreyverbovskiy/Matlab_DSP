>>
>> N = 8;
>> j = sqrt(-1);
>> xn = [1 1 1 1 0 0 0 0];
>> xk = zeros(1,N);
>> for k = 0:1:N-1
for n=0:1:N-1
xk(k+1)=xk(k+1)+xn(n+1)*exp(-j*2*pi*n*k/N);
end
end
>> magxk=abs(xk)
magxk =

   4.0000e+00   2.6131e+00   2.8818e-16   1.0824e+00   2.4492e-16   1.0824e+00   4.6818e-16   2.6131e+00

>> phasxk=angle(xk);
>> wk=0:1:N-1;
>> subplot(2,1,1)
>> stem(wk,magxk)
>> subplot(2,1,2)
>> stem(wk,phasxk)
>>
>> arr1 = [1 1 1 1 1 1 1 1];
>> for x = 1:23
arr1(8+x) = 0;
end
>> arr1
arr1 =

 Columns 1 through 28:

   1   1   1   1   1   1   1   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0

 Columns 29 through 31:

   0   0   0

>> arr2 = [1 1 1 1 1 1 1 1];
>> for x = 1:53
arr2(8+x) = 0;
end
>> arr3 = [1 1 1 1 1 1 1 1];
>> for x = 1:113
arr3(8+x) = 0;
end
>>
>>
>> N1 = len(arr1)
error: 'len' undefined near line 1, column 1
>> N1 = length(arr1)
N1 = 31
>> N2 = length(arr2);
>> N3 = length(arr3);
>> j = sqrt(-1);
>> xk1 = zeros(1,N1);
>> xk2 = zeros(1,N2);
>> xk3 = zeros(1,N3);
>>
>> for k = 0:1:N1-1
for n = 0:1:N1-1
xk1(k+1)=xk1(k+1)+arr1(n+1)*exp(-j*2*pi*n*k/N1);
end
end
>> magxk1 = abs(xk1);
>> phasxk1 = angle(xk1);
>>
>> for k = 0:1:N2-1
for n = 0:1:N2-1
xk2(k+1)=xk2(k+1)+arr2(n+1)*exp(-j*2*pi*n*k/N2);
end
end
>> magxk2 = abs(xk2);
>> phasxk2 = angle(xk2);
>>
>> for k = 0:1:N3-1
for n = 0:1:N3-1
xk3(k+1)=xk3(k+1)+arr3(n+1)*exp(-j*2*pi*n*k/N3);
end
end
>> magxk3 = abs(xk3);
>> phasxk3 = angle(xk3);
>>
>>
>> wk1 =0:1:N1-1;
>> wk2 =0:1:N2-1;
>> wk3 =0:1:N3-1;
>>
>> subplot(3,1,1)
>> stem(wk1,magxk1)
>> subplot(3,1,2)
>> stem(wk2,magxk2)
>> subplot(3,1,3)
>> stem(wk3,magxk3)