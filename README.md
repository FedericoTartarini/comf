# comfort_R
Repository for the R-package comf: Functions for Thermal Comfort Research

Current version of master branch: comf_0.1.12

Feel free to propose changes/additions or to get in contact...

# Contribute to the project

If you want to contribute to the project, you can do so by following these steps:

1. Fork the repository
2. Make changes to the forked repository
3. Write tests for the changes
4. Submit a pull request

# Test Script Documentation

We are using the `testthat` package to run tests on the functions in the `comf` package.

To run the test locally follow these steps:

1. Clone the repository
2. Open the R console in your terminal using the command `R`
3. Run the following commands in the R console `devtools::test()` to run all the tests
4. To run a specific test, use the command `devtools::test_active_file("tests/testthat/test-calc-AD.R")`


The `helper-test-script.R` script is designed to leverage the `devtools::test()` function for running tests across various functions. These tests utilize test cases from the [validation-data-comfort-models](https://github.com/FedericoTartarini/validation-data-comfort-models) repository.

## Test Execution
Tests are executed automatically by the script, which assesses each function systematically. The test results will be printed on the terminal in Markdown format and add to the readme file.

## Results
Below is the latest test result

========test result========
|Test                |Result |
|:-------------------|:------|
|Context             |PASSED |
|calc2Node           |PASSED |
|calcAD              |PASSED |
|calcAT              |PASSED |
|calcATHBstrandard   |PASSED |
|calcCE              |PASSED |
|calcCloTout         |PASSED |
|calcDiscomfortIndex |PASSED |
|calcePMV            |PASSED |
|calcHeatIndex       |PASSED |
|calcHumidity        |PASSED |
|calcPetSteady       |PASSED |
|calcPhs             |PASSED |
|calcpmvpdd          |PASSED |
|calcSET             |PASSED |
|calcSolarGain       |PASSED |
|calctAdapt15251     |PASSED |
|calctAdaptASHRAE    |PASSED |
|calcUtci [2.2s]     |PASSED |
|calcVTG             |PASSED |
|calcWbgt            |PASSED |
|calcWCI             |PASSED |
========test result========

