# CS3300-CD
Lab assignments done as part of CS3300 - Compiler Design. <br>
<a src="https://kcsrk.info/cs3300_m22/">Link</a> to the course website for reference.

## Assignments

The goal of the lab assignments is to build an end-to-end simple compiler for a subset of Java, <em>MacroJava</em> (<a src="http://www.cse.iitm.ac.in/~krishna/cs3300/macrojava-spec.html">grammar</a>). Stages of the compiler, given as individual assignments, are as follows:

1. MacroJava to MiniJava
    - Build a MacroJava to MiniJava (<a src="http://www.cse.iitm.ac.in/~krishna/cs3300/minijava-spec.html">grammar</a>) translator using <a src="https://www.cs.princeton.edu/~appel/modern/c/software/flex/flex.html">Flex</a> and <a src="https://www.gnu.org/software/bison/manual/">Bison</a>, a lexer/scanner generator and a parser generator respectively (language coded in: C)
2. Type Checker
    - Build a type checker for MiniJava programs using <a src="http://compilers.cs.ucla.edu/jtb/">JTB</a>, a parse tree generator (language coded in: Java)
3. MiniJava to MicroIR
    - Build a MiniJava to MicroIR (<a src="http://www.cse.iitm.ac.in/~krishna/cs3300/microIR.html">grammar</a>) translator using JTB (language coded in: Java)
4. MicroIR to MiniRA
    - Build a MicroIR to MiniRA (<a src="http://www.cse.iitm.ac.in/~krishna/cs3300/miniRA.html">grammar</a>) translator using JTB, with register allocated done using the <a src="http://web.cs.ucla.edu/~palsberg/course/cs132/linearscan.pdf">Linear Scan algorithm</a> (language coded in: Java)
5. MiniRA to MIPS Assembly
    - Build a MiniRA to MIPS assembly (<a src="https://github.com/kayceesrk/cs3300_m22/blob/main/assets/mips_specifications.md">specifications</a>) translator using JTB (language coded in: Java)

Interpreters for MicroIR and MiniRA can be found on the course website, under the corresponding assignments.

## Future changes:
- Make assignment-wise READMEs with instructions to run (install required software as well) and clean up. For now, installations and running instructions can be found on the course webpage.
