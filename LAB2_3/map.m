function y_map=map(y, val)
    pos=find(y==val);
    y_map=zeros(length(y),1);
    y_map(pos,1)=1;
end