# Reservoir-Operation
MatLab code is developed for the purpose of multi purpose reservoir operation. Code developed is validated with a sample reservoir operation problem. After validation, it is applied to Hirakud Reservoir which is a multi-purpose reservoir serving the purposes of irrigation, power generation, and flood control.

The user needs to make the following data ready for running the program: 

Number of seasons (time periods) – t; 
Number of inflow states in each time period-nois; 
Number of inflow states in each time period -noss; 
Capacity of the Reservoir – c; 
Minimum release – minr; 
Maximum release -maxr; 
Target release – tr; 
Target storage – ts; 
Representative inflow values – riv; 
Representative storage values – riv; 
Number of stages – nostg

Description of Sample Problem 

In the present study, a sample problem is considered for validating the code developed in MatLab. 

Considered 3 seasons (time periods), 4 storage states, and two inflows states, reservoir capacity =30 units, target release = 30 units, target storage = 20 units. maximum release from the reservoir = 40 units, minimum release from the reservoir = 10 units. The values of inflows in each state and storage values of the reservoir in each storage state are given in table 1  and table 2.

Table. 1. Inflow states and corresponding values of inflows
Inflow state/season	1	2
Season 1	10	20
Season 2 	20	30
Season 3	0	10

Table. 2. Storage states and corresponding values of storage
k 	  1	2	3	4
Skt 	0	10	20	30

The sample code for directly assigning the values to the input variables is given below.
t=3;
nois=[2 2 2];
noss=[4 4 4];
c=30;
minr=10;
maxr=40;
tr=[30 30 30];
ts=[20 20 20]; 
riv=[10 20; 20 30; 0 10];
rsv=[0 10 20 30;0 10 20 30; 0 10 20 30];
nostg=10;

Note: Check the release for the constraints and if it satisfies the constraints then it is considered as infeasible. Here the infeasible solution is treated with a biggest number (99999) since the optimization is minimization problem. this infeasible value is stored in a variable named as benefit. 


