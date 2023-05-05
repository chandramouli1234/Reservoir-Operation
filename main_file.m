display('Enter the input deatils for the reservoir operation')
display('enter the no of time periods');
t=input('enter the value of t');
display('Enter the no.of inflow states in each time period');
for i=1:t
nois(i)=input('enter no of states for each time period');
end
display('Enter the no.of storage states in each time period');
for i = 1:t
noss(i)= input('enter the value of storage states in each time epriod');
end
display('Enter the capacity of reservoir');
c=input('enter the value of c');
display('Enter the minimum release');
minr=input('enter the value of minr');
display('Enter the maximum release');
maxr=input('enter the value of maxr');
display('Enter the target release');
for i=1:t
tr(i)=input('enter target release for each time period');
end  
display('Enter the target storage');
for i=1:t
    ts(i)=input('enter the value of target storage in each time period');
end
    display('Enter the values of representative inflows in each time period');
for i = 1:t
    for j=1:nois(i)
    riv(i,j)= input(' enter the values of respective inflows')
    end
end
    display('Enter the values of representative stoarges in each time period');
 for i = 1:t
    for j=1:noss(i)
    rsv(i,j)= input(' enter the values of respective sorages')
    end
end
display('enter the values of no of stages');
%nostg=input(' enter the  value of no.of stages you want to run the program')
temp5=0;
 for N=1:3
      		cd=1;
            ii=rem(((t-1)*(N-1)+(t-1)),t)+1
        for k=1:4
            for i=1:2
                h=1
                hh=1
                        for l=1:4
                        temp=rsv(ii,k)+riv(ii,i)-rsv(ii,l)
             if ((temp<minr)|(temp>maxr)|(rsv(ii,l)>c))
                    temp1(h)=99999
					benifit(k,i,l)=temp1(h)
					temp3(h)=temp1(h)
					temp2(hh)=l
                    h=h+1
                    hh=hh+1
             else
                                                 if N>1
                                                    if optbenifit((N-1),k,i)<99999
                                                    temp5=temp5+optbenifit((N-1),k,i)
                                                    else
                                                        temp5=99999
                                                    end
                                                %if optbenifit((N-1),k,i)>=99999
                                                 %temp5=99999;
                                                 %end
                                                    if  temp5<99999
                                                    temp1(h)=(temp-tr(ii))^2+((rsv(ii,k)-ts(ii))^2)+temp5
                                                    else
                                                    temp1(h)=99999
                                                    end
                                                 %if temp5>=99999
                                                 %temp1(h)=99999;
                                                 %end
                                                 else
                                                temp1(h)=((temp-tr(ii))^2)+((rsv(ii,k)-ts(ii))^2)
                                                end
                 benifit(k,i,l)=temp1(h)
 				 temp3(h)=temp1(h)
 				 temp2(hh)=l
 				 h=h+1
                 hh=hh+1
 				 temp5=0
                 
             optbenifit(N,k,i)=minimum(h,temp1)
			optimal(N,k,i)=minimum1(hh,temp3,temp2,optbenifit(N,k,i))
 			minval1(cd)=optbenifit(N,k,i)
            optimal1(cd)=optimal(N,k,i)
 			kk(cd)=k
 			ki(cd)=i
 			cd=cd+1
             end
                        end
            end
        end
 end
          
            
            