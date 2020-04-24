20/4/2020
Planning mostly completed (see Software Development Plan). Statement of purpose, features, control flow diagram (draft Lucidchart online web application) created and stored in and user interaction portions drafted. Feature implementation planned (see Trello). Documents to be revisited throughout project and finalised when project completed.

21/04/2020
Github repository created (aes89/Hydration_Recreation). Attempted to add files from terminal but do not appear to be in the repository. Planning to torubleshoot on 22/4/2020.

22/4/2020
Coding started. Completed:
Asking for name via gets
Testing completed for invalid inputs on name (cannot be blank entry) and goal (cannot be blank entry or float). Float error not raising, invalid number of arguments.

23/04/2020
Difficulty with managing incorrec tinput for points goal. Empty string will retry and ask for input again, Float input would accept but not raise an error. Debugging revealed that input was being percieved as a srting, converted to a float then calculated if cleanly divisable by 1 or not:
 (goal.to_f % 1) != 0.

 Folder formatting corrected following discussion with Carl, to push to github in correct directory structure. All capitals and spaces removed from file and directory titles, main contains readme.rb doc, presentation directory and source code directory to contain alll code files.