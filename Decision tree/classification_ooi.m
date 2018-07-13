function classification6
newdata = xlsread('data.xlsx');
newdata(newdata(:,1)>1500,:) = [];
rows = size(newdata,1);
y=zeros(rows,1);
x = zeros(rows,7);
%
%
%
for i=1:rows
    x(i,1) = newdata(i,1);%
    x(i,2) = min(diff(newdata(i,1:5)));
    x(i,3:6) = diff(newdata(i,1:5));
    x(i,7:9) = abs(diff(x(i,3:6)));
    x(i,10:11) = abs(diff(x(i,7:9)));
    y(i) = newdata(i,7); %
end

t = classregtree(x, y); % call CART£¨classification and regression treer£©
view(t); % display
predicted = t(x);  %

threshold = 0.5;
fitaccuracy = 0;
for i=1:rows
    if predicted(i) > threshold && y(i) == 1
        fitaccuracy=fitaccuracy+1;
    end
end

disp(fitaccuracy/rows)