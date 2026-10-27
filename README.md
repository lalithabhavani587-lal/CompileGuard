# CompileGuard

## Project Title

CompileGuard: Machine Learning-Based Detection of Compiler-Induced Security Weaknesses

## Overview

CompileGuard is an academic prototype that uses GCC-generated assembly
features and compiler warnings to predict potential security risk in
C programs.

The notebook compiles C programs at four optimization levels, extracts
features, and trains a Random Forest classifier to predict Safe or Risky.

## Project Areas

- Compiler Design: code generation and optimization-level analysis
- Machine Learning: security-risk classification
- Application Domain: cybersecurity

## Technologies Used

- Python
- C
- GCC
- Google Colab
- Google Drive
- pandas
- scikit-learn
- matplotlib
- seaborn
- joblib

## Workflow

1. Create a small dataset of C programs.
2. Compile each program using -O0, -O1, -O2, and -O3.
3. Collect compiler warnings.
4. Extract features from generated assembly.
5. Combine the features and manually assigned labels.
6. Train and evaluate a Random Forest classifier.
7. Predict labels for additional C files.
8. Generate sample reports and evaluation charts.

## Features Used

- Compiler optimization level
- Compiler warning count
- Assembly line count
- Instruction count
- Branch count
- Function-call count
- Approximate mov/lea instruction count

## Repository Structure

- CompileGuard_Project.ipynb: main project notebook
- dataset/: C source files and labels
- results/: assembly files, CSV files, charts, and sample report
- models/: saved machine-learning model
- new_test_file.c: additional risky test program
- safe_test_file.c: additional checked test program

## How to Run

1. Open Google Colab.
2. Choose File > Upload notebook.
3. Upload CompileGuard_Project.ipynb from this repository.
4. Run the first cell and allow access to Google Drive.
5. Run the notebook cells individually from top to bottom.
6. The notebook creates its working folders under:
   My Drive/CompileGuard
7. Review the predictions, charts, and generated report.

The notebook creates its initial dataset in Google Drive.
Uploading this repository to GitHub does not automatically copy its
folders into Google Drive.

## Current Limitations

- This is a small educational prototype, not a production security tool.
- Safe/Risky predictions are not proof that a program is secure or vulnerable.
- Assembly counts do not establish that a security check was removed.
- The current model does not identify exact vulnerability locations.
- The example security report contains manually written concerns for the
  demonstration file; these are not automatically diagnosed by the model.
- The current random row-level train/test split can place different
  optimization versions of the same source program in both sets.
  A source-file-level split is needed for a more reliable evaluation.
- Dataset labels need further review and expansion.
- Detecting removal of sensitive-memory clearing, such as memset,
  is not implemented.

## Future Improvements

- Review and expand the dataset.
- Evaluate on source programs not represented in training.
- Compare security-relevant operations across optimization levels.
- Add validated examples of compiler-induced security weaknesses.
- Generate recommendations from observed evidence rather than fixed text.

## Team Members

- Aluri Lalitha Bhavani - 24BCB7133
- Y Reshma Swathi - 24BCB7253
