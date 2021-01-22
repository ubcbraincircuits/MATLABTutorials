% For more examples see YAGTOM (yet another guide to MATLAB)
% section "Flow Control"

% Our goals are to (re-)introduce for loops, nested for loops, while loops, and 
% to examine examples of matlab code which can effecticely "loop" in a single line.

% The most common loop is a for loop. It has a loop variable, usually i, j, or k,
% which is usually incremented by a set amount each iteration on the loop.

% It needs:

% a for
% an end
% a loop variable
% a range of values for the loop variable.

% The code between the 'for' and the 'end' is iterated (repeated, looped) for
% each different value of the loop variable. 


% 1. Print the integers 1 through 15 using a for loop.
% Hint: A variable's value is printed to the screen if it is evaluated with
% no semi-colon or use the built-in Matlab function disp.


% 2. Use a for loop to print the numbers between -1 and +6 in steps of .5.
% Hint: Recall the start:increment:finish shorthand for ordered list.
% Again, very useful, in the case of for loops.


% 3. Use a for loop to print the numbers between 5 and -2 in steps of -1.


% Nested for loops can be extremely useful for handling multidimensional
% data. In this case one for loop is placed inside another. The inner
% loop iterates through all values of its loop variable for each value of
% the outer loop. Be careful to use different variables for the inner and
% outer loop. Remember each loop needs its own end.


% 4. Construct a nested for loop to print the numbers 1, 2, 3 to the screen 
% four times.


% 5. For loops are seldom used to print things to the screen. Most commonly
% the loop variable is used to index a piece of data.

% Check last week's review to see how to read in the file
% example_image_week7.tif. Assign it to a variable called the_image.

% Create a figure window and use imagesc to see if the 
% image is correctly read in.  

% Use zeros and size to create an empty matrix of the same dimensions as
% the image, call your new matrix m.

% Index the matrix m in the center to create a group of 10x10 pixels and set
% the values 1 instead of zero.

% Display the matrix m in a figure window using imagesc to see the result.

% Use your matrix m as a mask. Create a nested for loop to multiply every
% value in the example image by the corresponding mask pixel in m. Store
% the result in a new variable called masked_im. Initialize masked_im with
% zeros before you use it in the nested loop.

% Display masked_im using a figure window and imagesc.
% You've created a square ROI in the center of the field-of-view.


% 6. For loops are not the only loops in town. Use the doc or help and
% read about while loops. Use a while loop to generate a variable
% containing 15 gaussianly distributed random numbers all less than -1.
% Hint: You may also need an if statement.


% 7. Matlab also allows you to avoid the use of loops. Use the .* operator
% to multiply the example image and mask from section 5, element-by-element
% in a single line to create a matrix called masked_im2.

% Display the image to check the result is the same as masked_im.
