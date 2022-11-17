function y = filters(Im, ref)
    subplot(2,4,1)
    imshow(Im);
    title('Original Image');
    subplot(2,4,2)
    imhist(Im);
    title('Histogram');
    subplot(2,4,3)
    
    % Histogram Equalization
    Imh = histeq(Im);
    imshow(Imh);
    title('Histogram Equalization');
    subplot(2,4,4)
    imhist(Imh);
    title('Histogram');

    % Contrast Stretching
    lmin = 0; lmax = 255; mmin = min(min(Im));
    mmax = max(max(Im));
    m = 255/(mmax - mmin);
    c = 255 - m * mmax ;
    Ics = m * Im + c;
    subplot(2,4,5)
    imshow(Ics);
    title('Contrast Stretching');

    % Log Transform
    norm = double(Im)/255;
    prompt = "Please enter the scaling constant value: ";
    c = input(prompt);
    Ilt = c * log(1 + (norm));
    subplot(2,4,6)
    imshow(Ilt);
    title('Log Transform');

    % Histogram Specification
    subplot(2,4,7)
    imshow(ref);
    title('Referance Image');
    Ihs = imhistmatch(Im,ref);
    subplot(2,4,8)
    imshow(Ihs);
    title('Hist. Spec.');
end