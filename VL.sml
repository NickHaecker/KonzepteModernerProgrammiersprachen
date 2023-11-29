Standard ML of New Jersey (32-bit) v110.99.4 [built: Tue Aug 01 11:26:46 2023]
- 1+8
=
= 1-8;
stdIn:1.2-3.4 Error: operator is not a function [overload - bad instantiation]
  operator: 'Z[INT]
  in expression:
    8 1
- 1+8;
val it = 9 : int
- val x = 10;
val x = 10 : int
- x;
val it = 10 : int
- 1+x;
val it = 11 : int
- val it = 18:int;
val it = 18 : int
- val y = 3 + x;
val y = 13 : int
- val y = 3 + x + z;
stdIn:9.17 Error: unbound variable or constructor: z
-
- val f = fn: x => x+7;
stdIn:10.11-10.17 Error: syntax error: deleting  COLON IDA DARROW
- val f = fn x => x+7;
val f = fn : int -> int
- f(8);
val it = 15 : int
- f 8;
val it = 15 : int
- f;
val it = fn : int -> int
- x;
val it = 10 : int
- fun f x = x + 7;
val f = fn : int -> int
- val y = 3.14 + 8.8
= ;
val y = 11.94 : real
- val y = 3.14 + 8.8;
val y = 11.94 : real
- val h = fn (u,v) => (v,u);
val h = fn : 'a * 'b -> 'b * 'a
- h(3,1)
= ;
val it = (1,3) : int * int
- h("Hund","Katze");
val it = ("Katze","Hund") : string * string
- h(2,"Eule")
= ;
val it = ("Eule",2) : string * int
- fun f (x,y) = x*x + y;
val f = fn : int * int -> int
- fun f (x,y) =( x:real)*x + y;
val f = fn : real * real -> real
- fun h (a,b) = a-b > 4;
val h = fn : int * int -> bool
- h(9,5)
= ;
val it = false : bool
- fun h (a,b) = a:real - b:real > 4
= ;
=
Interrupt
- fun h(a,b) = a:real - b:real > 4.0
= ;
= fun h(a,b) = a:real - b:real > 4.0;
stdIn:13.1-32.2 Error: syntax error: deleting  REAL SEMICOLON
- fun h(a,b) = (a:real) - (b:real) > 4.0
= fun h(a,b) = ((a:real) - (b:real)) > 4.0
= fun h(a,b) = ((a:real) - (b:real)) > 4.0;
val h = <hidden> : real * real -> bool
val h = <hidden> : real * real -> bool
val h = fn : real * real -> bool
- h(3,5);
stdIn:36.1-36.7 Error: operator and operand do not agree [overload - bad instantiation]
  operator domain: real * real
  operand:         'Z[INT] * 'Y[INT]
  in expression:
    h (3,5)
- datatype ampelfarbe = rot | gelb | rot | rotgelb;
stdIn:1.2-34.10 Error: datatype ampelfarbe has duplicate constructor name(s): rot
- datatype ampelfarbe = rot | gelb | rot | rotgelb;
stdIn:1.2-34.10 Error: datatype ampelfarbe has duplicate constructor name(s): rot
- datatype ampelfarbe = rot | gelb | gruen | rotgelb;
datatype ampelfarbe = gelb | gruen | rot | rotgelb
- vl it = rot : ampelfarbe
= ;
stdIn:37.1-37.3 Error: unbound variable or constructor: vl
stdIn:37.1-37.25 Error: expression does not match constraint [tycon mismatch]
  expression: bool
  constraint: ampelfarbe
  in expression:
    <errorvar> it = rot: ampelfarbe
- val it = rot : ampelfarbe;
val it = rot : ampelfarbe
- fun dauer rot = 8 |
= dauer gelb = 3 |
= dauer gruen = 8 |
= duer rotgelb = 1 ;
stdIn:39.5-42.17 Error: clauses do not all have same function name
- fun dauer rot = 8 | dauer gelb = 3 | dauer gruen = 8 | dauer rotgelb = 1;
val dauer = fn : ampelfarbe -> int
- dauer rot;
val it = 8 : int
- datatype nat = null | succ of nat;
datatype nat = null | succ of nat
- null;
val it = null : nat
- succ;
val it = fn : nat -> nat
- succ(succ(null))
= ;
val it = succ (succ null) : nat
- val it = succ(succ null):nat;
val it = succ (succ null) : nat
- fun add (null,y)=y | add (succ x ,y) = succ (add(x,y));
val add = fn : nat * nat -> nat
- val zwei = succ(succ null);
val zwei = succ (succ null) : nat
- val drei = succ(succ(succ null))): nat
= ;
=
= ;;
stdIn:52.32-52.35 Error: syntax error: deleting  RPAREN RPAREN COLON
- val drei = succ(succ(succ null))): nat;
=
Interrupt
- val drei = succ(succ(succ null)): nat;
val drei = succ (succ (succ null)) : nat
- val it = succ(succ(succ(succ(succ null)))): nat
= ;
val it = succ (succ (succ (succ (succ null)))) : nat
- add (zwei,drei);
val it = succ (succ (succ (succ (succ null)))) : nat
- datatype 'a btree = bnode of (a' btree * 'a btree | bleaf of 'a;
stdIn:59.51-59.61 Error: syntax error: deleting  BAR IDA OF
- datatype 'a btree = bnode of (a' btree * 'a btree) | bleaf of 'a;
stdIn:39.4-39.6 Error: unbound type constructor: a'
- datatype `a btree = bnode of (`a btree * `a btree) | bleaf of `a;
stdIn:10.10-10.19 Error: syntax error: deleting  IDA IDA EQUALOP
stdIn:10.20-39.4 Error: syntax error: deleting  IDA OF LPAREN
stdIn:39.4-39.12 Error: syntax error: deleting  IDS IDA IDA
stdIn:39.13-56.4 Error: syntax error: deleting  ASTERISK IDS IDA
stdIn:56.5-56.13 Error: syntax error: deleting  IDA RPAREN BAR
stdIn:56.14-56.24 Error: syntax error: deleting  IDA OF IDS
- datatype 'a btree = bnode of ('a btree * 'a btree) | bleaf of 'a;
datatype 'a btree = bleaf of 'a | bnode of 'a btree * 'a btree
- bnode;
val it = fn : 'a btree * 'a btree -> 'a btree
- bleaf;
val it = fn : 'a -> 'a btree
- bleaf 5;
val it = bleaf 5 : int btree
- val it ) bnode (bleaf 7, bleaf 8): int btree
= val it = bnode (bleaf 7, bleaf 8): int btree;
stdIn:63.8-63.15 Error: syntax error: deleting  RPAREN IDA
stdIn:64.1-64.9 Error: syntax error: deleting  VAL IDA EQUALOP
stdIn:64.16-64.24 Error: syntax error: deleting  LPAREN IDA INT
stdIn:64.24-64.33 Error: syntax error: deleting  COMMA IDA INT
stdIn:64.33-64.35 Error: syntax error: deleting  RPAREN COLON
- val it = bleaf 5 : int btree;
val it = bleaf 5 : int btree
- bnode (bleaf 7, bleaf 8);
val it = bnode (bleaf 7,bleaf 8) : int btree
- bnode (bnode (bleaf 7, bleaf 8),bleaf 9);
val it = bnode (bnode (bleaf 7,bleaf 8),bleaf 9) : int btree
- val q = it;
val q = bnode (bnode (bleaf 7,bleaf 8),bleaf 9) : int btree
- fun maxint(x,y) = if (x>y) then x else y;
val maxint = fn : int * int -> int
- fun max (bleaf x) = x |max(bnode(a,b)) = maxint(max a, max b);
val max = fn : int btree -> int
- max q;
val it = 9 : int
- [3,1,8];
val it = [3,1,8] : int list
- 3 :: (1 :: (8 :: nil)));
=
Interrupt
- 3 :: (1 :: (8 :: nil));
val it = [3,1,8] : int list
- fun map f nil = nil | map f (h::r) = (f,h) :: (map f r);
val map = fn : 'a -> 'b list -> ('a * 'b) list
- map (fn x => x* x) [1,2,3];
val it = [(fn,1),(fn,2),(fn,3)] : ((int -> int) * int) list
- fun ﬁlter f nil = nil |      ﬁlter f (h::r) =          if f h then             h :: (ﬁlter f r)          else             ﬁlter f r;
val ? = fn : 'a -> ('b -> bool) -> 'b list -> 'b list
- filer (fn x => x>5) [3,8,1,19,22];
stdIn:76.1-76.6 Error: unbound variable or constructor: filer
- filter (fn x => x>5) [3,8,1,19,22];
stdIn:1.2-10.6 Error: unbound variable or constructor: filter
-