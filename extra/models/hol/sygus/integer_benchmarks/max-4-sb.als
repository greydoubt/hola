open mmax[gteNexts, iteNexts]

--------------------------------------------------------------------------------
-- Variables and Values
--------------------------------------------------------------------------------
one sig X, Y, Z, U extends IntVar {}

--------------------------------------------------------------------------------
-- AST Nodes
--------------------------------------------------------------------------------

one sig GTE0, GTE1, GTE2 extends GTE {}
one sig ITE0, ITE1, ITE2 extends ITE {}

fun gteNexts[]: GTE -> GTE {
  GTE0 -> GTE1 + GTE0 -> GTE2 +
  GTE1 -> GTE2
}

fun iteNexts[]: ITE -> ITE {
  ITE0 -> ITE1 + ITE0 -> ITE2 +
  ITE1 -> ITE2
}

--------------------------------------------------------------------------------
-- Commands
--------------------------------------------------------------------------------

run synth for 0 but 0..3 Int
