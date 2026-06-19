import GraphCutVertex.Statements.CutVertexRemoval
import TwoComponentsNotConnected.Statements.TwoComponentsDisconnected

namespace GraphCutVertex.Proofs.CutVertexRemoval

open TwoComponentsNotConnected.Statements.ConnectedRelation
open TwoComponentsNotConnected.Statements.TwoComponentsDisconnected

theorem cut_vertex_removal_not_connected {V : Type u} (G : SimpleGraph V) (cutVertex : V)
    (left right : ((⊤ : G.Subgraph).deleteVerts {cutVertex}).verts → Prop)
    (leftVertex rightVertex : ((⊤ : G.Subgraph).deleteVerts {cutVertex}).verts)
    (left_mem : left leftVertex)
    (right_mem : right rightVertex)
    (separated_after_removal :
      ∀ u v : ((⊤ : G.Subgraph).deleteVerts {cutVertex}).verts,
        left u → right v → ¬ ((⊤ : G.Subgraph).deleteVerts {cutVertex}).coe.Reachable u v) :
    ¬ ∀ u v : ((⊤ : G.Subgraph).deleteVerts {cutVertex}).verts,
      ((⊤ : G.Subgraph).deleteVerts {cutVertex}).coe.Reachable u v := by
  exact two_components_not_connected
    ((⊤ : G.Subgraph).deleteVerts {cutVertex}).coe
    left
    right
    leftVertex
    rightVertex
    left_mem
    right_mem
    separated_after_removal

end GraphCutVertex.Proofs.CutVertexRemoval
