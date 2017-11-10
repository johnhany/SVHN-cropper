load extra\\digitStruct.mat
count = zeros(10, 1);
for i = 1:length(digitStruct)
    im = imread(strcat('extra\\', digitStruct(i).name));
    for j = 1:length(digitStruct(i).bbox)
        try
            [height, width] = size(im);
            aa = max(digitStruct(i).bbox(j).top+1,1);
            bb = min(digitStruct(i).bbox(j).top+digitStruct(i).bbox(j).height, height);
            cc = max(digitStruct(i).bbox(j).left+1,1);
            dd = min(digitStruct(i).bbox(j).left+digitStruct(i).bbox(j).width, width);

            box = im(aa:bb, cc:dd, :);
            cropped = imresize(box, [32, 32]);
            imwrite(cropped, strcat('extra_crop\\', num2str(digitStruct(i).bbox(j).label), '\\', num2str(count(digitStruct(i).bbox(j).label)), '.png'));
            count(digitStruct(i).bbox(j).label) = count(digitStruct(i).bbox(j).label) + 1;
        catch
            fprintf('Image %d failed.\n', i);
        end
    end
    if mod(i, 1000) == 0
        fprintf('Processed %d images.\n', i);
    end
end
