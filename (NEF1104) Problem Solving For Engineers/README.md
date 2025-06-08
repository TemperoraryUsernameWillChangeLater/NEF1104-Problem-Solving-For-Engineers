# NEF1104 - Problem Solving For Engineers

[![MATLAB](https://img.shields.io/badge/MATLAB-R2024b-orange.svg)](https://www.mathworks.com/products/matlab.html)
[![Engineering](https://img.shields.io/badge/Engineering-Problem%20Solving-blue.svg)](https://github.com)
[![Academic](https://img.shields.io/badge/Course-NEF1104-green.svg)](https://github.com)

## 📋 Course Overview

This repository contains MATLAB programming exercises, assignments, and projects for **NEF1104 - Problem Solving For Engineers**. The course focuses on developing computational problem-solving skills using MATLAB for engineering applications.

## 🎯 Learning Objectives

- **MATLAB Fundamentals**: Variables, arrays, matrices, and basic operations
- **Data Visualization**: Creating plots, graphs, and visual representations
- **File I/O Operations**: Reading and writing data from various file formats
- **Mathematical Modeling**: Implementing engineering calculations and simulations
- **Problem Decomposition**: Breaking complex problems into manageable components
- **Algorithm Development**: Creating efficient solutions for engineering problems

## 📁 Repository Structure

```
NEF1104-Problem-Solving-For-Engineers/
├── Session 2/              # Basic MATLAB operations and plotting
│   ├── S2T1circle.m       # Circle plotting exercise
│   ├── S2T2antenna.m      # Antenna modeling
│   ├── LoadData.m         # Data loading functions
│   └── *.xlsx             # Data files and results
├── Session 3/              # Data I/O and advanced plotting
│   ├── Data IO and Plot/   # Data handling exercises
│   ├── Task*.m            # Progressive skill-building tasks
│   └── Part2_LabPractice.m # Lab practice exercises
├── Session 4/              # Matrix operations and advanced mathematics
│   ├── Excercises/        # Structured practice problems
│   ├── Excercise Redo/    # Revised solutions
│   └── *.pdf              # Course materials and guides
├── Session 5/              # Advanced programming concepts
├── Session 6/              # Engineering applications
├── Session 7-8/            # Projects and assignments
│   ├── Assignment/        # Formal assignments
│   ├── Project 1 (Adelaide)/  # Location-specific projects
│   ├── Project 1 (Canberra)/  # Alternative implementations
│   └── Revision/          # Review materials
└── Session 9/              # Final projects and assessments
```

## 🔧 Key Programming Concepts

### Data Visualization
```matlab
% Circle plotting with customization
radius = 1;
theta = linspace(0, 2*pi, 200);
x = radius * cos(theta);
y = radius * sin(theta);
plot(x, y, 'r--', 'LineWidth', 3);
axis equal;
grid on;
```

### Matrix Operations
```matlab
% Random matrix generation and manipulation
E = randn(3, 5) * 100;
size(E);                    % Get matrix dimensions
E23 = E(2,3);              % Access specific element
E3 = E(3, :);              % Extract entire row
```

### File I/O Operations
- Excel file reading and writing (`.xlsx`)
- Text file data processing (`.txt`)
- Data import and export functions

## 🚀 Getting Started

### Prerequisites
- MATLAB R2020b or later
- Basic understanding of programming concepts
- Engineering mathematics background

### Running the Code
1. Clone this repository
2. Open MATLAB and navigate to the repository directory
3. Run individual `.m` files for specific exercises
4. Check session folders for progressive learning materials

```matlab
% Example: Running a circle plotting exercise
cd 'Session 2'
run('S2T1circle.m')
```

## 📊 Project Highlights

### **Session 2-3**: Fundamentals
- Basic plotting and visualization
- Data import/export operations
- Mathematical function implementation

### **Session 4**: Matrix Mathematics
- Advanced matrix operations
- Linear algebra applications
- Numerical computation techniques

### **Session 7-8**: Major Projects
- **Adelaide Project**: Location-specific engineering analysis
- **Canberra Project**: Comparative implementation study
- **Assignments**: Comprehensive problem-solving exercises

### **Session 9**: Advanced Applications
- Engineering simulation projects
- Real-world problem solving
- Final assessments

## 🛠️ Development Tools

- **MATLAB Live Editor**: Interactive development environment
- **Plot Tools**: Advanced visualization capabilities
- **Data Analysis**: Statistical and mathematical toolboxes
- **File Exchange**: Community resources and functions

## 📈 Progress Tracking

| Session | Topic | Status | Key Skills |
|---------|-------|--------|------------|
| 2 | Basic Operations & Plotting | ✅ Complete | Variables, plots, functions |
| 3 | Data I/O & Advanced Plots | ✅ Complete | File handling, data visualization |
| 4 | Matrix Operations | ✅ Complete | Linear algebra, matrix manipulation |
| 5 | Programming Concepts | ✅ Complete | Control structures, algorithms |
| 6 | Engineering Applications | ✅ Complete | Real-world problem solving |
| 7-8 | Projects & Assignments | ✅ Complete | Comprehensive applications |
| 9 | Final Projects | ✅ Complete | Advanced engineering solutions |

## 🔍 Code Examples

### Data Analysis Example
```matlab
% Load and analyze concrete compression data
data = readtable('Concretecompression.txt');
stress = data.Stress;
strain = data.Strain;

% Create visualization
plot(strain, stress, 'b-', 'LineWidth', 2);
xlabel('Strain (mm/mm)');
ylabel('Stress (kN)');
title('Concrete Compression Test Results');
grid on;
```

### Engineering Calculation
```matlab
% Antenna modeling calculation
frequency = 2.4e9;  % 2.4 GHz
c = 3e8;            % Speed of light
wavelength = c / frequency;
antenna_length = wavelength / 4;  % Quarter-wave antenna
```

## 📚 Additional Resources

- [MATLAB Documentation](https://www.mathworks.com/help/matlab/)
- [MATLAB Academy](https://matlabacademy.mathworks.com/)
- [Engineering Problem Solving with MATLAB](https://www.mathworks.com/academia/)

## 🤝 Contributing

This is an academic repository for coursework. While direct contributions aren't expected, discussions about problem-solving approaches and code improvements are welcome through:

- Issue discussions for technical questions
- Code review suggestions for optimization
- Documentation improvements

## 📄 License

This repository contains academic coursework and is intended for educational purposes. Please respect academic integrity policies when referencing or using this code.

## 👨‍💻 Author

**Course**: NEF1104 - Problem Solving For Engineers  
**Institution**: Engineering Department  
**Year**: 2025

---

*This repository demonstrates progressive learning in MATLAB programming and engineering problem-solving methodologies through hands-on exercises and real-world applications.*
