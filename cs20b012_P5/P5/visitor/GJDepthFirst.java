//
// Generated by JTB 1.3.2
//

package visitor;
import syntaxtree.*;

import java.awt.Stroke;
import java.util.*;

/**
 * Provides default methods which visit each node in the tree in depth-first
 * order.  Your visitors may extend this class.
 */
public class GJDepthFirst<R,A> implements GJVisitor<R,A> {
   //
   // Auto class visitors--probably don't need to be overridden.
   //
	
	String destReg;
	int inArgs, outArgs;
	boolean printLabel;
   String currScope;
   int currCallArgs;
	
   public R visit(NodeList n, A argu) {
      R _ret=null;
      int _count=0;
      for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
         e.nextElement().accept(this,argu);
         _count++;
      }
      return _ret;
   }

   public R visit(NodeListOptional n, A argu) {
      if ( n.present() ) {
         R _ret=null;
         int _count=0;
         for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
            e.nextElement().accept(this,argu);
            _count++;
         }
         return _ret;
      }
      else
         return null;
   }

   public R visit(NodeOptional n, A argu) {
      if ( n.present() )
         return n.node.accept(this,argu);
      else
         return null;
   }

   public R visit(NodeSequence n, A argu) {
      R _ret=null;
      int _count=0;
      for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
         e.nextElement().accept(this,argu);
         _count++;
      }
      return _ret;
   }

   public R visit(NodeToken n, A argu) { return (R)n.tokenImage; }

   //
   // User-generated visitor methods below
   //

   /**
    * f0 -> "MAIN"
    * f1 -> "["
    * f2 -> IntegerLiteral()
    * f3 -> "]"
    * f4 -> "["
    * f5 -> IntegerLiteral()
    * f6 -> "]"
    * f7 -> "["
    * f8 -> IntegerLiteral()
    * f9 -> "]"
    * f10 -> StmtList()
    * f11 -> "END"
    * f12 -> ( SpillInfo() )?
    * f13 -> ( Procedure() )*
    * f14 -> <EOF>
    */
   public R visit(Goal n, A argu) {
      R _ret=null;
      System.out.println(".text");
      System.out.println(".globl\tmain");
      System.out.println("main:");
      System.out.println("move $fp, $sp");
      currScope = new String("MAIN");
      currCallArgs = 0;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      int noSpilled = Integer.parseInt((String)n.f5.accept(this, argu));
      int stackSpace = noSpilled + 1;
      n.f6.accept(this, argu);
      n.f7.accept(this, argu);
      int maxCallArgs = Integer.parseInt((String)n.f8.accept(this, argu));
      if(maxCallArgs > 4) stackSpace += maxCallArgs-4;
      System.out.println("subu $sp, $sp, " + 4*stackSpace);
      System.out.println("sw $ra, -4($sp)");
      n.f9.accept(this, argu);
      
      n.f10.accept(this, argu);
      
     
      
      n.f11.accept(this, argu);
      System.out.println("lw $ra, -4($fp)");
      System.out.println("addu $sp, $sp, " + 4*stackSpace);
      System.out.println("j $ra");
      System.out.println("");
      n.f12.accept(this, argu);
      n.f13.accept(this, argu);
      n.f14.accept(this, argu);
      
      System.out.println(".text");
      System.out.println(".globl\t_halloc");
      System.out.println("_halloc:");
      System.out.println("li $v0, 9");
      System.out.println("syscall");
      System.out.println("j $ra");
      System.out.println("");

      System.out.println(".text");
      System.out.println(".globl\t_print");
      System.out.println("_print:");
      System.out.println("li $v0, 1");
      System.out.println("syscall");
      System.out.println("la $a0, newl");
      System.out.println("li $v0, 4");
      System.out.println("syscall");
      System.out.println("j $ra");
      System.out.println("");

      System.out.println(".data");
      System.out.println(".align 0");
      System.out.println("newl:\t.asciiz \"\\n\"");
      System.out.println("");

      System.out.println(".data");
      System.out.println(".align 0");
      System.out.println("str_er:\t.asciiz \" ERROR: abnormal termination\\n\"");
      System.out.println("");
      
      return _ret;
   }

   /**
    * f0 -> ( ( Label() )? Stmt() )*
    */
   public R visit(StmtList n, A argu) {
      R _ret=null;
      printLabel = true;
      n.f0.accept(this, argu);
      printLabel = false;
      return _ret;
   }

   /**
    * f0 -> Label()
    * f1 -> "["
    * f2 -> IntegerLiteral()
    * f3 -> "]"
    * f4 -> "["
    * f5 -> IntegerLiteral()
    * f6 -> "]"
    * f7 -> "["
    * f8 -> IntegerLiteral()
    * f9 -> "]"
    * f10 -> StmtList()
    * f11 -> "END"
    * f12 -> ( SpillInfo() )?
    */
   public R visit(Procedure n, A argu) {
      R _ret=null;
      String procedureName = (String)n.f0.accept(this, argu);
      System.out.println(".text");
      System.out.println(".globl\t" + procedureName);
      System.out.println(procedureName + ":");
      System.out.println("sw $fp, -8($sp)");
      System.out.println("move $fp, $sp");
      System.out.println("sw $ra, -4($fp)");
      currScope = new String(procedureName);
      n.f1.accept(this, argu);
      int callArgs = Integer.parseInt((String)n.f2.accept(this, argu));
      currCallArgs = callArgs;
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      int noSpilled = Integer.parseInt((String)n.f5.accept(this, argu));
      int stackSpace = noSpilled + 1;
      n.f6.accept(this, argu);
      n.f7.accept(this, argu);
      int maxInternalArgs = Integer.parseInt((String)n.f8.accept(this, argu));
      if(maxInternalArgs > 4) stackSpace += maxInternalArgs-4;
      n.f9.accept(this, argu);
      System.out.println("subu $sp, $sp, " + 4*stackSpace);
      //callee save
      
      n.f10.accept(this, argu);
      n.f11.accept(this, argu);
      System.out.println("");
      //callee restore
      //restore fp, sp
      System.out.println("j $ra");
      n.f12.accept(this, argu);
      
      
      return _ret;
   }

   /**
    * f0 -> NoOpStmt()
    *       | ErrorStmt()
    *       | CJumpStmt()
    *       | JumpStmt()
    *       | HStoreStmt()
    *       | HLoadStmt()
    *       | MoveStmt()
    *       | PrintStmt()
    *       | ALoadStmt()
    *       | AStoreStmt()
    *       | PassArgStmt()
    *       | CallStmt()
    */
   public R visit(Stmt n, A argu) {
      R _ret=null;
      printLabel = false;
      n.f0.accept(this, argu);
      printLabel = true;
      return _ret;
   }

   /**
    * f0 -> "NOOP"
    */
   public R visit(NoOpStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      System.out.println("nop");
      return _ret;
   }

   /**
    * f0 -> "ERROR"
    */
   public R visit(ErrorStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      System.out.println("li $v0, 4");
      System.out.println("la $a0, str_er");
      System.out.println("syscall");
      System.out.println("li $v0, 10");
      System.out.println("syscall");
      return _ret;
   }

   /**
    * f0 -> "CJUMP"
    * f1 -> Reg()
    * f2 -> Label()
    */
   public R visit(CJumpStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String register = (String)n.f1.accept(this, argu);
      String label = (String)n.f2.accept(this, argu);
      System.out.println("beqz " + register + " " + label);
      return _ret;
   }

   /**
    * f0 -> "JUMP"
    * f1 -> Label()
    */
   public R visit(JumpStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String label = (String)n.f1.accept(this, argu);
      System.out.println("b " + label);
      return _ret;
   }

   /**
    * f0 -> "HSTORE"
    * f1 -> Reg()
    * f2 -> IntegerLiteral()
    * f3 -> Reg()
    */
   public R visit(HStoreStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String dest = (String)n.f1.accept(this, argu);
      int offset = Integer.parseInt((String)n.f2.accept(this, argu));
      
      String src = (String)n.f3.accept(this, argu);
      System.out.println("sw " + src + ", " + offset + "(" + dest + ")");
      return _ret;
   }

   /**
    * f0 -> "HLOAD"
    * f1 -> Reg()
    * f2 -> Reg()
    * f3 -> IntegerLiteral()
    */
   public R visit(HLoadStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String dest = (String)n.f1.accept(this, argu);
      String src = (String)n.f2.accept(this, argu);
      int offset = Integer.parseInt((String)n.f3.accept(this, argu));
      System.out.println("lw " + dest + " " + offset + "(" + src + ")");
      
      return _ret;
   }

   /**
    * f0 -> "MOVE"
    * f1 -> Reg()
    * f2 -> Exp()
    */
   public R visit(MoveStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu); 
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "PRINT"
    * f1 -> SimpleExp()
    */
   public R visit(PrintStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      
      return _ret;
   }

   /**
    * f0 -> "ALOAD"
    * f1 -> Reg()
    * f2 -> SpilledArg()
    */
   public R visit(ALoadStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      
      return _ret;
   }

   /**
    * f0 -> "ASTORE"
    * f1 -> SpilledArg()
    * f2 -> Reg()
    */
   public R visit(AStoreStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      
      return _ret;
   }

   /**
    * f0 -> "PASSARG"
    * f1 -> IntegerLiteral()
    * f2 -> Reg()
    */
   public R visit(PassArgStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      
      return _ret;
   }

   /**
    * f0 -> "CALL"
    * f1 -> SimpleExp()
    */
   public R visit(CallStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String procedureToCall = (String)n.f1.accept(this, argu);
      //caller save
      System.out.println("jalr " + procedureToCall);
      return _ret;
   }

   /**
    * f0 -> HAllocate()
    *       | BinOp()
    *       | SimpleExp()
    */
   public R visit(Exp n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "HALLOCATE"
    * f1 -> SimpleExp()
    */
   public R visit(HAllocate n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, null);
      
      return _ret;
   }

   /**
    * f0 -> Operator()
    * f1 -> Reg()
    * f2 -> SimpleExp()
    */
   public R visit(BinOp n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, null);
      
      return _ret;
   }

   /**
    * f0 -> "LE"
    *       | "NE"
    *       | "PLUS"
    *       | "MINUS"
    *       | "TIMES"
    *       | "DIV"
    */
   public R visit(Operator n, A argu) {
      R _ret=n.f0.accept(this, argu);
      return _ret;
      
      
   }

   /**
    * f0 -> "SPILLEDARG"
    * f1 -> IntegerLiteral()
    */
   public R visit(SpilledArg n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      int spillLoc = Integer.parseInt((String)n.f1.accept(this, argu));
      return _ret;
      
   }

   /**
    * f0 -> Reg()
    *       | IntegerLiteral()
    *       | Label()
    */
   public R visit(SimpleExp n, A argu) {
      R _ret=n.f0.accept(this, argu);
      
      return _ret;
   }

   /**
    * f0 -> "a0"
    *       | "a1"
    *       | "a2"
    *       | "a3"
    *       | "t0"
    *       | "t1"
    *       | "t2"
    *       | "t3"
    *       | "t4"
    *       | "t5"
    *       | "t6"
    *       | "t7"
    *       | "s0"
    *       | "s1"
    *       | "s2"
    *       | "s3"
    *       | "s4"
    *       | "s5"
    *       | "s6"
    *       | "s7"
    *       | "t8"
    *       | "t9"
    *       | "v0"
    *       | "v1"
    */
   public R visit(Reg n, A argu) {
      R _ret=n.f0.accept(this, argu);
      _ret = (R)("$" + (String)_ret);
      return _ret;
   }

   /**
    * f0 -> <INTEGER_LITERAL>
    */
   public R visit(IntegerLiteral n, A argu) {
      R _ret=n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <IDENTIFIER>
    */
   public R visit(Label n, A argu) {
      R _ret=n.f0.accept(this, argu);
      if(printLabel) System.out.println((String)_ret + ":");
      return _ret;
      
   }

   /**
    * f0 -> "//"
    * f1 -> SpillStatus()
    */
   public R visit(SpillInfo n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <SPILLED>
    *       | <NOTSPILLED>
    */
   public R visit(SpillStatus n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

}
