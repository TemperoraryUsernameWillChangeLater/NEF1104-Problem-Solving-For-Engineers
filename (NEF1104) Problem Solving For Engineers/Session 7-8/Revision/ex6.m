clc
B = round(linspace(5, 80, 25));

disp('Vector B:');
disp(B);

foundIndex = 0;

for idx = 1:length(B)
    if B(idx) == 39
        foundIndex = idx;
        break;
    end
end

if foundIndex > 0
    fprintf('The first occurrence of 39 in vector B is at index: %d\n', foundIndex);
else
    fprintf('The number 39 was not found in vector B.\n');
end