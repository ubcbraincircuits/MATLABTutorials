% These examples are adapted from the YAGTOM (yet another guide to MATLAB)
% section "Matrix Operations"

% Matrices are key in matlab as we will use them to store most types of
% data. For example an image can be represented as a 2d matrix and a time
% course of a signal can be represeted by a 1d matrix.

% Our goals are to review the basic indexing commands we learned in week2
% and learn how to access subsets of matrix elements that satisfy a
% condition. This is called logical indexing.

% http://ubcmatlabguide.github.io/html/matrixOperations.html

% Accompanying this file is a .mat file called matlab.mat. These files typically 
% store matlab variables. Drag the file to the workspace and matlab will 
% automatically load the variables. You should have  one matrix called dat 
% with 100x100 elements.

% Often it is useful to look at the values stored in a matrix variable. For
% small matrices with only a few elements they will be listed under value to the
% right of the variable name in the workspace. If you double click the 
% variable name you will be taken to the variable editor. Let's say we need to 
% check the value in row 1 column 1 of dat. To get to the variable editor, 
% first double click dat in the workspace. To exit click the x in the title
% bar of the Variables tab. You'll see an "excel like" view of the values 
% stored in the rows and columns of dat. Row 1 Column 1 is: .5377. We will
% see it again in a moment.

% Basic indexing allows you to pull out subsets of the elements of a larger
% matrix. To use basic indexing we specify the elements we want with numbers
% or lists of numbers (NB, these may also be stored in variables) inside 
% parentheses after the variable name.  Recall last
% week exercise #6 we isolated the baseline from our 1d matrix (also called)
% dat by using:

% base_line=dat(1:250)

% The ordered list 1,2,3,...,249,250 generated by 1:250 specified that we
% wanted the first 250 time points.

% Let's use basic indexing to get the values of some elements of this weeks
% 2d matrix dat:

%1. What's the value of element (1,1)?

% This should match the result we say in the variable editor above.

% 2. What are the values in the 50th row, columns 1:10? Hint: Rows preceed
% columns when indexing.

% Let's use basic indexing in combination with some other syntax we've
% used:

% 3. What's the sum of every other element in row 51, starting with the
% first? Hint: use the syntax start:increment:finish to generate an ordered
% list with an increment other than 1.

% 4. Starting with the 2nd?

% 5. What's the sum of the upper right quadrant?

% You may need to look at

doc sum

% Notice that sum returns the sum of each column by default if given a 2d
% matrix.

% 6. Extract the 4th column. Store it a variable called the_fourth.  Plot
% it using the following command.

figure;plot(the_fourth)
title('Jeff''s random numbers')
xlabel('index')
ylabel('the random value')

% Hint: Remember shorthand for all the elements in a particular dimension
% is :, it means 1:end, or 1:100 in this case.

% 7. Say we are interested in which value in the_fourth column of dat is
% the smallest. Write a command which uses the built in matlab function
% min to find both the value and its index. Index the_fourth such that this value
% alone is exluded from the matrix.  

% Hint: You may want to look at:

doc min

% 8. Repeat #7, but this time find the value closest to 1 and exclude it.

% Hint: You may want to look at:

doc abs

% Ok, let's move on to logical indexing.

% Logical indexing is useful when we are interested in a subset of matrix
% elements that satisfy a condition. For example if our 2d matrix
% represents an image then we can think of applying a threshold to the
% image at a certain intensity as an example of logical indexing.

% To set up conditions based on the relative sizes of the values of the
% matrix elements we need to make use of the relational operators.

% The basic relational operators are:
% > greater than
% >= greater than or equal to
% < less than
% <= less than or equal to
% ~= not equal
% == is equal to

% Note the equals sign is used for assignment of a value to variable when
% it appears once, =, and for comparison of values when it appears twice,
% ==.

% Let's isolate the first 10x10 elements of dat for some examples. Assign
% the first 10x10 elements of dat to a variable called dat10.

dat10=dat(1:10,1:10);

% Say we are interested in the values which are greater than zero.

A=dat10>0

% I've left the semi-colon off so we can see the result. It is a 10x10
% matrix, with an element corresponding to each in dat10. If you look in
% the workspace you should see that A is 10x10 with type logical. This
% means that each element can be either 1 or 0 depending on whether that
% element of dat satisfied the condition we were interested in. 1 means
% the condition is true (satisfied) and 0 means false (not satisifed).

% For example element 1,1 of A is one

A(1,1)

% is one which indicated that dat10(1,1) is a positive value. Let's check.

dat10(1,1)

% The value returned is 0.5377 so it checks out.

% We can use A as an index for dat10 and retireve only the positive values.

dat10(A)

% 9. Use the <= operator to create a variable called B which is analogous
% to A and stores a 1 where the value in dat10 is <= 0 and a 0 where it is
% not.

% Use B to index dat10 and print the values to the screen. Use indexing to 
% check your work as we did for A. If an element of B is 1 that should mean
% the corresponding element of dat10 is 0 or less. 

% Bonus: Use the built-in matlab function numel to find the number of
% elements in dat10(A) & the number of elements in dat10(B). What is the sum?  
% Does it make sense? If not what should it be?

% Bonus2: If you are given A, write a command to generate B which does not
% make use of the orignal values in dat10. Store the result in C. The
% command isequal compares to matrices to see if their sizes and elements
% are equal. Use this to compare B & C to check your work.

% Another related command useful for logical indexing is called find.

% For exmaple, say we were interested in those points in the_fourth which
% were greater than or equal to 1. We could write:

ind=find(the_fourth>1);

% Double click ind in the workspace to take a look at what is returned by
% the find function. This is a list of those indices which satisfy the
% condition. This can be used to isolate the values in the_fourth:

% Evaluate:

the_fourth(ind)

% find has some other features which make it useful for certain cases:

% For example this command

ind=find( the_fourth > .9, 2, 'first')
D = the_fourth(ind)

% returns the first two indices in the_fourth satisfying the condition > .9

% 10. Write a command that locates the same values as in D but uses logical
% indexing as we introduced it, ie by generating another matrix.

% So what's the difference? The rule of thumb, as far as I know, is that
% when you are interested in all the values satisfying your condition then
% logical index is faster for matlab to do. When you need only the first
% one for instance, find is faster.
