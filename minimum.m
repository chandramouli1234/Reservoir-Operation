function [minval] =minimum(n,a)
		for i=1:n
			for j=1:n
			if a(i)<=a(j)
				temp=a(i);
				a(i)=a(j);
				a(j)=temp;
            end
           end
        end
		minval=a(1)
end
