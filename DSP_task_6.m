>> pkg load signal
>> fs = 8000;
>> fc = 1500;
>> [b_q1,a_q1] = butter(4,fc/(fs/2));
>> zplane(b_q1,a_q1)
>>
>> n = -10:10;
>> hh = ones(1,28);
>> yy = filter(hh,1,n==0);
>> h = filter(b_q1,a_q1,yy);
>> stem(n,h)
>> [b,a] = ellip(4,4,60,fc/(fs/2));
>> freqz(b,a,1024,fs);
>> hold on
>> freqz(b_q1,a_q1,1024,fs);
>> hold off
>>
>> t = 0: 1/2*pi*0.05:1;
>> x1 = sin(2*pi*0.05*t);
>> t2 = 0: 1/2*pi*0.47:1;
>> x2 = sin(2*pi*0.47*t);
>> stem(t,x1)
>> x3 = x1+x2;
>> stem(t,x3)
>>
>> hh = ones(1,length);
>> n = -10:10;
>>
>> length = 28;
>> hh = ones(1,length);
>> n = -10:10;
>> yy = filter(hh,1,n>=0);
>> h = filter(x3,1,yy);
>> stem(n,h)