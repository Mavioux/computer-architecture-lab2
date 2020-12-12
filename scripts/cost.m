function [cost] = costfunction(array,numOfBenchmarks)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
for i = 1:numOfBenchmarks
    cost(i) = (array(i,2)^2 + array(i,3)^2)/64 + array(i,4)/2048 + array(i,5)/2 + array(i,6)/2 + array(i,7)/4 + array(i,8)/128;
    
end

