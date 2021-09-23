>> n = -10:10;
>> b = [1,-0.5,0.06];
>> a = [1,-0.4,0];
>> pkg load signal
>> zplane(b,a)
>> aa = roots(a)
aa =

   0.4000
        0

>> bb = roots(b)
bb =

   0.3000
   0.2000

>> zplane(bb,aa)
>> zplane(bb,aa)
>> poly([0 0])
ans =

   1   0   0

>> zplane(bb,aa)
>> freqz(b,a,1024,22050)
>> hh = ones(1,28);
>> yy = filter(hh,1,n>=0);
>> h = filter(bb,a,yy);
>> stem(n,h)