# CS3300-CD
Lab assignments done as part of CS3300 - Compiler Design. <br>
<a src="https://kcsrk.info/cs3300_m22/">Link</a> to the course website for reference.

## Assignments

The goal of the lab assignments is to build an end-to-end simple compiler for a subset of Java, <em>MacroJava</em>. Stages of the compiler, given as individual assignments, are as follows:

1. MacroJava to MiniJava
    - Build a MacroJava to MiniJava translator using Flex and Bison, a lexer/scanner generator and a parser generator respectively (language coded in: C)
2. Type Checker
    - Build a type checker for MiniJava programs using JTB, a parse tree generator (language coded in: Java)
3. MiniJava to MicroIR
    - Build a MiniJava to MicroIR translator using JTB (language coded in: Java)
4. MicroIR to MiniRA
    - Build a MicroIR to MiniRA translator using JTB, with register allocated done using the Linear Scan algorithm (language coded in: Java)
5. MiniRA to MIPS Assembly
    - Build a MiniRA to MIPS assembly translator using JTB (language coded in: Java)

Interpreters for MicroIR and MiniRA can be found on the course website, under the corresponding assignments. All specifications are available on the <a src="https://github.com/kayceesrk/cs3300_m22/blob/main/assets/">instructor's course GitHub</a>.

## Future changes:
- Make assignment-wise READMEs with instructions to run (install required software as well) and clean up. For now, installations and running instructions can be found on the course webpage.

## Credits:
<a src="https://www.cs.princeton.edu/~appel/modern/c/software/flex/">Flex</a> <br>
<a src="https://www.gnu.org/software/bison/manual/">Bison</a> <br>
<a src="http://compilers.cs.ucla.edu/jtb/">JTB</a> <br>
<a src="http://web.cs.ucla.edu/~palsberg/course/cs132/">Linear Scan algorithm paper</a>