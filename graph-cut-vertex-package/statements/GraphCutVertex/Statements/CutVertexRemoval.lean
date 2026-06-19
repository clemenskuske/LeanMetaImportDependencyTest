import Mathlib.Combinatorics.SimpleGraph.Connectivity.Connected
import Mathlib.Combinatorics.SimpleGraph.Subgraph

namespace GraphCutVertex.Statements.CutVertexRemoval

axiom cut_vertex_removal_not_connected {V : Type u} (G : SimpleGraph V) (cutVertex : V)
    (left right : ((⊤ : G.Subgraph).deleteVerts {cutVertex}).verts → Prop)
    (leftVertex rightVertex : ((⊤ : G.Subgraph).deleteVerts {cutVertex}).verts)
    (left_mem : left leftVertex)
    (right_mem : right rightVertex)
    (separated_after_removal :
      ∀ u v : ((⊤ : G.Subgraph).deleteVerts {cutVertex}).verts,
        left u → right v → ¬ ((⊤ : G.Subgraph).deleteVerts {cutVertex}).coe.Reachable u v) :
    ¬ ∀ u v : ((⊤ : G.Subgraph).deleteVerts {cutVertex}).verts,
      ((⊤ : G.Subgraph).deleteVerts {cutVertex}).coe.Reachable u v

end GraphCutVertex.Statements.CutVertexRemoval
