# Selenium Behave

This is a sample project structure for the using Selenium Behave

# Running

1. Clone the repository
1. cd to the repository directory
1. (Optional) Create virtual environment and activate it.
1. Run `pip install requirements.txt`
1. To run the features, run `behave -k -t "@prelude,@login`

# Structure of the repository

## Features

The features directory can contain any number of feature files. Often, there is a requirement
to run some feature file before running all others. Since behave orders the filenames alphabetically
before it runs them, use filenames starting with a `.` to write such features.
Eg. there is a file called `.prelude.feature` which has a tag `@prelude`. If that tag is included
in the run command (like in the instructions above), it will be executed first.
You can add any tag to the feature files at the level of the entire feature or to any scenario.

## Steps

There a predefined steps in the `steps` directory with supporting methods. To write your own steps,
create a file like `features/custom_steps.py`.
