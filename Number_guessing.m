%ENES GÖK 2444628
clear
clc
target = 10;
a = 0;
bottom = 1;
top = 10;
while 1
    guess = ceil((top+bottom)/2);
    a = a + 1;
    if guess==target
        break
    elseif guess > target
        top = guess - 1;
    else
        bottom = guess + 1;
    end
end

fprintf('Your number is %f %f',guess,a)
