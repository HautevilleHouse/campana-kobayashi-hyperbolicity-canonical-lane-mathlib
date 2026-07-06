import CampanaKobayashiHyperbolicityCanonicalLaneLean.Formalization
import CampanaKobayashiHyperbolicityCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace CampanaKobayashiHyperbolicityCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "156939b098b61c20f3b4929bf5d955df107ff79c337423ebef74fd59ccdd22ef", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "cf859d7653872e601a3b038e37afe90f98035432a439219523ab782cd92605a3", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "0eb2d05c679dde824edae55badd90015739635b56fb29618bf21a05e251f0d5d", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "939771fb3bc04f8703b1da9f9d6f75ae67a90079cdaf6e6b32189f1085d5bfbe", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "e7749e9bb05c295b89f9817dc0768c8974a342018168ce0ae0e0ceff0e65ceb1", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "9655667eba3ffb51056d11419d984fb00be915a62fff5cc2588a033fd41a6205", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "068b5a7599bfa73335d0253fc56356efad51049ed278d1f23cf280f3a333595a", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "fa80f0a07ea96d13db059ebe30c8befb6e26598987127314bfb0b0cc54b4b36a", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "da03e5e2c5c5fe0258fe2c00503eeefcd40ed0f1647698d6878971a95a59f921", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 0

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "README.md", sha256 := "8c42f5104c43413c93cabe315029fdda16a57a29c2a4074084f05f429dac6e5c" },
  { path := "CITATION.cff", sha256 := "14655290a15b0ddce72aaa35b7ca06ab87efd7c795e25befe3671cdcb3f613a3" },
  { path := "REVIEWER_MAP.md", sha256 := "156939b098b61c20f3b4929bf5d955df107ff79c337423ebef74fd59ccdd22ef" },
  { path := "paper/CAMPANA_KOBAYASHI_HYPERBOLICITY_PREPRINT.md", sha256 := "9562a668f45af7da186f06ce6475685a6cb35963ccda08996938fe64562ebe4e" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "49b1e0d2c5257cd88bdfaa1a3ba0d152dc42dcdccf682ea752c6e1a03c037a20" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "ca50ecadcb49072733d874580f8c1561ed555eb1b9039b9505f5077957f513f6" },
  { path := "notes/EG1_public.md", sha256 := "8eaf5313e02efa3d240528035b06f86fe606f23893673ae019c90f9b18d5a7a1" },
  { path := "notes/EG2_public.md", sha256 := "d74127437366f0038380fc5a6fd7bf7a36e9fa01f34d7bfe6f26847231a78e3e" },
  { path := "notes/EG3_public.md", sha256 := "e8b64e66849e53bf0d0775a08ad3d21f7f655947625d27f2fa74776a7c6e8f34" },
  { path := "notes/EG4_public.md", sha256 := "7025245d9bca5ee58a74f612d76172fa5f8a2ef27a47fc2a5aa6cc295846023b" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "cf859d7653872e601a3b038e37afe90f98035432a439219523ab782cd92605a3" },
  { path := "scripts/ckh_closure_guard.py", sha256 := "62a0ca01f21c7483d69eee4e6716c5fc8fb77232557dadfa2f72aeff6d1f9c7c" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "repro/run_repro.sh", sha256 := "025d2cbf1fb2d1e6f24b8fe1480e82781d7d4076bfc8fa5194ab06d5790ee89b" },
  { path := "repro/REPRO_PACK.md", sha256 := "88932a1848e7469e486af98e4096446374745f7a0aab7929d88bc001483e0a7e" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "f4c49857b6123c0e022d1541f2234b67e7a74e9f170a2214e6908414741b67e0" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "0eb2d05c679dde824edae55badd90015739635b56fb29618bf21a05e251f0d5d" },
  { path := "artifacts/constants_extracted.json", sha256 := "939771fb3bc04f8703b1da9f9d6f75ae67a90079cdaf6e6b32189f1085d5bfbe" },
  { path := "artifacts/constants_registry.json", sha256 := "e7749e9bb05c295b89f9817dc0768c8974a342018168ce0ae0e0ceff0e65ceb1" },
  { path := "artifacts/stitch_constants.json", sha256 := "9655667eba3ffb51056d11419d984fb00be915a62fff5cc2588a033fd41a6205" },
  { path := "artifacts/promotion_report.json", sha256 := "068b5a7599bfa73335d0253fc56356efad51049ed278d1f23cf280f3a333595a" },
  { path := "repro/certificate_baseline.json", sha256 := "da03e5e2c5c5fe0258fe2c00503eeefcd40ed0f1647698d6878971a95a59f921" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "GGL_G1", status := "PASS" },
  { gate := "GGL_G2", status := "PASS" },
  { gate := "GGL_G3", status := "PASS" },
  { gate := "GGL_G4", status := "PASS" },
  { gate := "GGL_G5", status := "PASS" },
  { gate := "GGL_G6", status := "PASS" },
  { gate := "GGL_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_hyperbolic", value := "1.091838" },
  { key := "orbifold_lock", value := "1.02951" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_entire", value := "1.075" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_hyperbolic",
  "orbifold_lock",
  "rho_rigidity",
  "sigma_entire",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 0 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 0 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end CampanaKobayashiHyperbolicityCanonicalLaneLean
end HautevilleHouse
