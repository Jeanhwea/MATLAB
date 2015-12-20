clear all; clc;

%% ��������
m1 = load('m1.txt');  % ����m1
m2 = load('m2.txt');  % ����m2
n = size(m1, 1);      % �����ά��, n=50

for i = 1:n
    m1(i,i) = 0;
    m2(i,i) = 0;
end


%% ʹ��Floyd�㷨��������֮�����С�������С����
Dist = m1; % DΪ��������֮�����С�������;
Cost = m2; % CΪ��������֮�����С���Ѿ���;
for k = 1:n
    for i = 1:n
        for j = 1:n
            if (Dist(i,j) > Dist(i,k)+Dist(k,j))
                Dist(i,j) = Dist(i,k)+Dist(k,j);
            end
            if (Cost(i,j) > Cost(i,k)+Cost(k,j))
                Cost(i,j) = Cost(i,k)+Cost(k,j);
            end
        end
    end
end

%% ��֧���緢�������
stack = zeros(n,2); top = 0;
visited = zeros(n,1); 
prev = zeros(n,1);

gdist = 9999;       % ȫ�ֵ����·���ľ���ֵ
gcost = 9999;       % ȫ�ֵ���С���ѵĽ�
path = zeros(n,1);  % �洢��С·���Ľڵ�����
pathlen = 0;        % �洢��С·���ĳ���
 
top = top+1; stack(top,1) = 1;stack(top,2) = 0;
visited(1) = 1;
local_dist = 0; local_cost = 0;
while top > 0
   if stack(top,1) == n
        if local_dist < gdist
            pathlen = top;
            path = stack(:,1)';
            gdist = local_dist;
            gcost = local_cost;
        end
   end

    u = stack(top); % ��ջ����, uΪ��ǰ����Ľڵ�
    
    found = 0;
    for v = find( m1(u,:)<9999 ) % ��������u�ɵ�������ڽڵ�, ����v
        if visited(v); continue; end
        if v <= stack(top,2); continue; end
        if local_dist + m1(u,v) > gdist; continue; end
        if local_cost + m2(u,v) > 1500; continue; end
        found = 1;
        stack(top,2) = v;
        prev(v) = u;
        break;
    end
    if found 
        top=top+1; stack(top,1)=v; stack(top,2)=0;
        local_dist = local_dist + m1(u,v);
        local_cost = local_cost + m2(u,v);
        visited(v) = 1;
    elseif top > 0
        visited(u)=0;
        stack(top,1)=0; stack(top,2)=0; top=top-1;
        if top > 0
            local_dist = local_dist - m1(stack(top,1),u);
            local_cost = local_cost - m2(stack(top,1),u);
        end
    end
  
end

path(1:pathlen)
gdist
gcost