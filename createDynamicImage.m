clc;
clear;

d = dir('*.avi');
len = size(d,1);

for i=1:numel(d)
    fn = d(i).name;
    [fdi, bdi] = GetDynamicImages(fn);
    imwrite(fdi, strcat( fn(1:end-4), '_fdi.jpg'));
%     imwrite(bdi, strcat('../rgb_dynamic_image/', fn2, '_bdi.jpg'));
end

% size(fdi)


workingDir=cd;
>> workingDir=cd;
>> imageNames = dir(fullfile(workingDir,'dynamic image','*.jpg'));
   imageNames = {imageNames.name}';
>> for ii = 1:length(imageNames)
    img = imread(fullfile(workingDir,'dynamic image',imageNames{ii}));
    [featureVector{ii},hogVisualization] = extractHOGFeatures(img);
    figure;
    imshow(img); 
    hold on;
    plot(hogVisualization);
   end