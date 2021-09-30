>> pkg load signal
>> fs = 8000
fs = 8000
>> f = 800;
>> z_q1 = exp(i*2*pi*f/fs);
>> b_q1 = poly([z_q1 conj(z_q1)]);
>> f3db = 200;
>> p_q1 = (1-2*pi*((f3db/fs)/2))*z_q1;
>> a_q1 = poly([p_q1 conj(p_q1)]);
>> gg = max(abs(freqz(b_q1, a_q1)));
>> b_q1 = b_q1/gg;
>> zplane(b_q1,a_q1)
>> freqz(b_q1,a_q1,1024,fs)
>> hh = ones(1,28);
>> n = -10:10;
>> yy = filter(hh,1,n>=0);
>> h =filter(b_q1,a_q1,yy);
>> stem(n,h)
>> stem(n,h)
>> hold on
>> h1 = filter(2*b_q1,2*a_q1,yy)
h1 =

 Columns 1 through 8:

         0         0         0         0         0         0         0         0

 Columns 9 through 16:

         0         0    0.9232    1.7290    2.4993    3.3161    4.2325    5.2579

 Columns 17 through 21:

    6.3612    7.4882    8.5843    9.6142   10.5716

>> stem(n,h1)
>> hold off
>> b_q3 = [b_q1(1) 0 b_q1(2) 0 b_q1(3)];
>> a_q3 = [a_q1(1) 0 a_q1(2) 0 a_q1(3)];
>> zplane(b_q1,a_q1)
>> hold on
>> zplane(b_q3,a_q3)
>> hold off
>> freqz(b_q3,a_q3,1024,fs)
>> freqz(b_q1,a_q1,1024,fs)
>> hold on
>> freqz(b_q3,a_q3,1024,fs)
>> hold off
>>
>> b = [0.0023018,-0.0023886,0.0039849,-0.0023886,0.0023018];
>> a = [3.57009,-4.92927,3.11044,-0.75606];
>> zplane(b,a)
>> hold off
>> zplane(b,a)
>> freqz(b,a,1024,8000)
>> swp = [-1 1 -1 1 -1];
>> b2 = swp .* b;
>> swp2 = [-1 -1 1 -1 1];
>> a2 = swp .* a;
>> a3 = [a2(1) 0 a2(2) 0 a2(3)];
>> b3 = [b2(1) 0 b2(2) 0 b2(3)];
>> freqz(b3,a3,1024,8000)
>> b_q = [0.0023018,-0.0023886,0.0039849];
>> a_q = [1,3.57009,-4.92927];
>> b_q1 = poly([b_q conj(b_q)]);
>> a_q1 = poly([a_q conj(a_q)]);
>> gg = max(abs(freqz(b_q1,a_q1)));
>> b_q1 = b_q1/gg;
>> bb_qq = [-0.0023886,0.0023018];
>> aa_qq = [3.11044,-0.75606];
>> bb_qq1 = poly([bb_qq conj(bb_qq)]);
>> aa_qq1 = poly([aa_qq conj(aa_qq)]);
>> gg = max(abs(freqz(bb_qq1,aa_qq1)));
>> bb_qq1 = bb_qq1/gg;
>>
>> conv(b_q1,bb_qq1)
ans =

 Columns 1 through 6:

   1.1528e-13  -8.7870e-16  -1.0184e-18   2.0139e-20  -1.4065e-23  -1.7302e-25

 Columns 7 through 11:

   2.2570e-28   6.6047e-31  -1.0561e-33  -9.4514e-37   1.6727e-39

>> conv(a_q1,aa_qq1)
ans =

 Columns 1 through 6:

   1.0000e+00  -3.9904e+00  -4.0328e+01   2.1118e+02   2.5216e+02  -2.8153e+03

 Columns 7 through 11:

   3.7938e+03   2.2203e+03  -5.0709e+03  -2.6063e+02   1.7127e+03