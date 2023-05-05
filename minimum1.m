function [optiml] =minimum1(n,a,temp2,minval)
	for i=1:n
		if a(i)==minval
		   l=temp2(i);
		   optiml= l;
		   end
    end
end