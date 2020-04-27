20/4/2020
Planning mostly completed (see Software Development Plan). Statement of purpose, features, control flow diagram (draft Lucidchart online web application) created and stored in and user interaction portions drafted. Feature implementation planned (see Trello). Documents to be revisited throughout project and finalised when project completed.

21/04/2020
Github repository created (aes89/Hydration_Recreation). Attempted to add files from terminal but do not appear to be in the repository. Planning to torubleshoot on 22/4/2020.

22/4/2020
Coding started. Completed:
Asking for name via gets
Testing completed for invalid inputs on name (cannot be blank entry) and goal (cannot be blank entry or float). Float error not raising, invalid number of arguments.

23/04/2020
Status update: Error. Difficulty with managing incorrec tinput for points goal. Empty string will retry and ask for input again, Float input would accept but not raise an error. Debugging revealed that input was being percieved as a srting, converted to a float then calculated if cleanly divisable by 1 or not:
(goal.to_f % 1) != 0.

Folder formatting corrected following discussion with Carl, to push to github in correct directory structure. All capitals and spaces removed from file and directory titles, main contains readme.rb doc, presentation directory and source code directory to contain alll code files.

Chunk of software development plan not saved - to rewrite.

24/04/2020
Goal input error handling complete. On manual testing string input retries, float input retried and integar input is stored. Automated testing file (including name and goal) was previously working but now says that errors are not raised for string and float, but they are on manual testing. 

Status update: Error resolved - calling wrong error name in one instance and used incorrect bracket on other.

25/04/2020
Manual testing of whole play_me.rb file, some minor errors. Inadvertently calling methods twice, resolved by storing method outcome as a variable and calling that (e.g. user name). 

26/04/2020
Major funciton build and incorporated: classess for drinks built - include points for breakfast, lunch and dinner and corresponding messages. Unsure how to build automated tests for this - many mnual tests completed. Difficulty getting classess to inherit (had the variables in different orders so were not inheriting correctly). Ruby gem added (Artii, TTY-progressbar and TTY-link) for readability (colours/images) and function (link).

27/04/2020
Formatting (rubocop) completed. Finialising documentation. Manual error testing. Input validation on number of glasses of drinks - linked to validate_num (previously validate_goal). 
