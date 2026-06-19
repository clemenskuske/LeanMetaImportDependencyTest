import Lake
open Lake DSL

package GraphCutVertex.Proofs where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "c5ea00351c28e24afc9f0f84379aa41082b1188f"

require GraphCutVertex.Statements from "./statements"

require TwoComponentsNotConnected.Statements from git
  "https://github.com/clemenskuske/Lean-Meta-Library-Dummy-Submission" @ "46a1ff95a5eecd89beb44483c862a7de72e413fd" / "TwoComponentsNotConnected-package/statement-package"

@[default_target]
lean_lib GraphCutVertex.Proofs where
  roots := #[`GraphCutVertex.Proofs.CutVertexRemovalProof]
