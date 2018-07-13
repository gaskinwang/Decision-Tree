function classification2_2vars
newdata = xlsread('data.xlsx'); 
newdata(newdata(:,1)>1500,:) = [];
rows = size(newdata,1);
y=zeros(rows,1);
%
%
%
x = zeros(rows,2);
for i=1:rows
    x(i,1) = newdata(i,1);%
    newdatadiff = diff(newdata(i,1:5));
    x(i,2) = min(newdatadiff);
    y(i) = newdata(i,7); %
end

t = classregtree(x, y); %call CART (classification and regression tree)
disp(t(x))
disp(t(x)-y)
view(t); %display

predicted = t(x);  %

threshold = 0.3;
fitaccuracy = 0;
for i=1:rows
    if predicted(i) > threshold && y(i) == 1
        fitaccuracy=fitaccuracy+1;
    end
end

disp(fitaccuracy/rows)