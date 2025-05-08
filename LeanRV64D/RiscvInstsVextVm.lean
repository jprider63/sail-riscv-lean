import LeanRV64D.RiscvInstsVextMask

set_option maxHeartbeats 1_000_000_000
set_option maxRecDepth 1_000_000
set_option linter.unusedVariables false
set_option match.ignoreUnusedAlts true

open Sail

noncomputable section

namespace LeanRV64D.Functions

open zvkfunct6
open zicondop
open wxfunct6
open wvxfunct6
open wvvfunct6
open wvfunct6
open write_kind
open word_width
open wmvxfunct6
open wmvvfunct6
open vxsgfunct6
open vxmsfunct6
open vxmfunct6
open vxmcfunct6
open vxfunct6
open vxcmpfunct6
open vvmsfunct6
open vvmfunct6
open vvmcfunct6
open vvfunct6
open vvcmpfunct6
open vregno
open vregidx
open vmlsop
open vlewidth
open visgfunct6
open virtaddr
open vimsfunct6
open vimfunct6
open vimcfunct6
open vifunct6
open vicmpfunct6
open vfwunary0
open vfunary1
open vfunary0
open vfnunary0
open vext8funct6
open vext4funct6
open vext2funct6
open uop
open sopw
open sop
open seed_opst
open rounding_mode
open ropw
open rop
open rmvvfunct6
open rivvfunct6
open rfvvfunct6
open regno
open regidx
open read_kind
open pmpMatch
open pmpAddrMatch
open physaddr
open option
open nxsfunct6
open nxfunct6
open nvsfunct6
open nvfunct6
open nisfunct6
open nifunct6
open mvxmafunct6
open mvxfunct6
open mvvmafunct6
open mvvfunct6
open mmfunct6
open maskfunct3
open iop
open fwvvmafunct6
open fwvvfunct6
open fwvfunct6
open fwvfmafunct6
open fwvffunct6
open fwffunct6
open fvvmfunct6
open fvvmafunct6
open fvvfunct6
open fvfmfunct6
open fvfmafunct6
open fvffunct6
open fregno
open fregidx
open f_un_x_op_H
open f_un_x_op_D
open f_un_rm_xf_op_S
open f_un_rm_xf_op_H
open f_un_rm_xf_op_D
open f_un_rm_fx_op_S
open f_un_rm_fx_op_H
open f_un_rm_fx_op_D
open f_un_rm_ff_op_S
open f_un_rm_ff_op_H
open f_un_rm_ff_op_D
open f_un_op_x_S
open f_un_op_f_S
open f_un_f_op_H
open f_un_f_op_D
open f_madd_op_S
open f_madd_op_H
open f_madd_op_D
open f_bin_x_op_H
open f_bin_x_op_D
open f_bin_rm_op_S
open f_bin_rm_op_H
open f_bin_rm_op_D
open f_bin_op_x_S
open f_bin_op_f_S
open f_bin_f_op_H
open f_bin_f_op_D
open extop_zbb
open extension
open exception
open ctl_result
open csrop
open cregidx
open checked_cbop
open cbop_zicbom
open cbie
open bropw_zbb
open bropw_zba
open brop_zbs
open brop_zbkb
open brop_zbb
open brop_zba
open bop
open biop_zbs
open barrier_kind
open ast
open amoop
open agtype
open TrapVectorMode
open TR_Result
open Step
open SATPMode
open Register
open Privilege
open PmpAddrMatchType
open PTW_Error
open PTE_Check
open InterruptType
open HartState
open FetchResult
open Ext_PhysAddr_Check
open Ext_FetchAddr_Check
open Ext_DataAddr_Check
open Ext_ControlAddr_Check
open ExtStatus
open ExecutionResult
open ExceptionType
open Architecture
open AccessType

def encdec_vvmfunct6_forwards (arg_ : vvmfunct6) : (BitVec 6) :=
  match arg_ with
  | VVM_VMADC => (0b010001 : (BitVec 6))
  | VVM_VMSBC => (0b010011 : (BitVec 6))

def encdec_vvmfunct6_backwards (arg_ : (BitVec 6)) : SailM vvmfunct6 := do
  match_bv arg_ with
  | 010001 => do (pure VVM_VMADC)
  | 010011 => do (pure VVM_VMSBC)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vvmfunct6_forwards_matches (arg_ : vvmfunct6) : Bool :=
  match arg_ with
  | VVM_VMADC => true
  | VVM_VMSBC => true
  | _ => false

def encdec_vvmfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 010001 => true
  | 010011 => true
  | _ => false

def vvmtype_mnemonic_backwards (arg_ : String) : SailM vvmfunct6 := do
  match arg_ with
  | "vmadc.vvm" => (pure VVM_VMADC)
  | "vmsbc.vvm" => (pure VVM_VMSBC)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vvmtype_mnemonic_forwards_matches (arg_ : vvmfunct6) : Bool :=
  match arg_ with
  | VVM_VMADC => true
  | VVM_VMSBC => true
  | _ => false

def vvmtype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vmadc.vvm" => true
  | "vmsbc.vvm" => true
  | _ => false

def encdec_vvmcfunct6_forwards (arg_ : vvmcfunct6) : (BitVec 6) :=
  match arg_ with
  | VVMC_VMADC => (0b010001 : (BitVec 6))
  | VVMC_VMSBC => (0b010011 : (BitVec 6))

def encdec_vvmcfunct6_backwards (arg_ : (BitVec 6)) : SailM vvmcfunct6 := do
  match_bv arg_ with
  | 010001 => do (pure VVMC_VMADC)
  | 010011 => do (pure VVMC_VMSBC)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vvmcfunct6_forwards_matches (arg_ : vvmcfunct6) : Bool :=
  match arg_ with
  | VVMC_VMADC => true
  | VVMC_VMSBC => true
  | _ => false

def encdec_vvmcfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 010001 => true
  | 010011 => true
  | _ => false

def vvmctype_mnemonic_backwards (arg_ : String) : SailM vvmcfunct6 := do
  match arg_ with
  | "vmadc.vv" => (pure VVMC_VMADC)
  | "vmsbc.vv" => (pure VVMC_VMSBC)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vvmctype_mnemonic_forwards_matches (arg_ : vvmcfunct6) : Bool :=
  match arg_ with
  | VVMC_VMADC => true
  | VVMC_VMSBC => true
  | _ => false

def vvmctype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vmadc.vv" => true
  | "vmsbc.vv" => true
  | _ => false

def encdec_vvmsfunct6_forwards (arg_ : vvmsfunct6) : (BitVec 6) :=
  match arg_ with
  | VVMS_VADC => (0b010000 : (BitVec 6))
  | VVMS_VSBC => (0b010010 : (BitVec 6))

def encdec_vvmsfunct6_backwards (arg_ : (BitVec 6)) : SailM vvmsfunct6 := do
  match_bv arg_ with
  | 010000 => do (pure VVMS_VADC)
  | 010010 => do (pure VVMS_VSBC)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vvmsfunct6_forwards_matches (arg_ : vvmsfunct6) : Bool :=
  match arg_ with
  | VVMS_VADC => true
  | VVMS_VSBC => true
  | _ => false

def encdec_vvmsfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 010000 => true
  | 010010 => true
  | _ => false

def vvmstype_mnemonic_backwards (arg_ : String) : SailM vvmsfunct6 := do
  match arg_ with
  | "vadc.vvm" => (pure VVMS_VADC)
  | "vsbc.vvm" => (pure VVMS_VSBC)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vvmstype_mnemonic_forwards_matches (arg_ : vvmsfunct6) : Bool :=
  match arg_ with
  | VVMS_VADC => true
  | VVMS_VSBC => true
  | _ => false

def vvmstype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vadc.vvm" => true
  | "vsbc.vvm" => true
  | _ => false

def encdec_vvcmpfunct6_forwards (arg_ : vvcmpfunct6) : (BitVec 6) :=
  match arg_ with
  | VVCMP_VMSEQ => (0b011000 : (BitVec 6))
  | VVCMP_VMSNE => (0b011001 : (BitVec 6))
  | VVCMP_VMSLTU => (0b011010 : (BitVec 6))
  | VVCMP_VMSLT => (0b011011 : (BitVec 6))
  | VVCMP_VMSLEU => (0b011100 : (BitVec 6))
  | VVCMP_VMSLE => (0b011101 : (BitVec 6))

def encdec_vvcmpfunct6_backwards (arg_ : (BitVec 6)) : SailM vvcmpfunct6 := do
  match_bv arg_ with
  | 011000 => do (pure VVCMP_VMSEQ)
  | 011001 => do (pure VVCMP_VMSNE)
  | 011010 => do (pure VVCMP_VMSLTU)
  | 011011 => do (pure VVCMP_VMSLT)
  | 011100 => do (pure VVCMP_VMSLEU)
  | 011101 => do (pure VVCMP_VMSLE)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vvcmpfunct6_forwards_matches (arg_ : vvcmpfunct6) : Bool :=
  match arg_ with
  | VVCMP_VMSEQ => true
  | VVCMP_VMSNE => true
  | VVCMP_VMSLTU => true
  | VVCMP_VMSLT => true
  | VVCMP_VMSLEU => true
  | VVCMP_VMSLE => true
  | _ => false

def encdec_vvcmpfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 011000 => true
  | 011001 => true
  | 011010 => true
  | 011011 => true
  | 011100 => true
  | 011101 => true
  | _ => false

def vvcmptype_mnemonic_backwards (arg_ : String) : SailM vvcmpfunct6 := do
  match arg_ with
  | "vmseq.vv" => (pure VVCMP_VMSEQ)
  | "vmsne.vv" => (pure VVCMP_VMSNE)
  | "vmsltu.vv" => (pure VVCMP_VMSLTU)
  | "vmslt.vv" => (pure VVCMP_VMSLT)
  | "vmsleu.vv" => (pure VVCMP_VMSLEU)
  | "vmsle.vv" => (pure VVCMP_VMSLE)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vvcmptype_mnemonic_forwards_matches (arg_ : vvcmpfunct6) : Bool :=
  match arg_ with
  | VVCMP_VMSEQ => true
  | VVCMP_VMSNE => true
  | VVCMP_VMSLTU => true
  | VVCMP_VMSLT => true
  | VVCMP_VMSLEU => true
  | VVCMP_VMSLE => true
  | _ => false

def vvcmptype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vmseq.vv" => true
  | "vmsne.vv" => true
  | "vmsltu.vv" => true
  | "vmslt.vv" => true
  | "vmsleu.vv" => true
  | "vmsle.vv" => true
  | _ => false

def encdec_vxmfunct6_forwards (arg_ : vxmfunct6) : (BitVec 6) :=
  match arg_ with
  | VXM_VMADC => (0b010001 : (BitVec 6))
  | VXM_VMSBC => (0b010011 : (BitVec 6))

def encdec_vxmfunct6_backwards (arg_ : (BitVec 6)) : SailM vxmfunct6 := do
  match_bv arg_ with
  | 010001 => do (pure VXM_VMADC)
  | 010011 => do (pure VXM_VMSBC)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vxmfunct6_forwards_matches (arg_ : vxmfunct6) : Bool :=
  match arg_ with
  | VXM_VMADC => true
  | VXM_VMSBC => true
  | _ => false

def encdec_vxmfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 010001 => true
  | 010011 => true
  | _ => false

def vxmtype_mnemonic_backwards (arg_ : String) : SailM vxmfunct6 := do
  match arg_ with
  | "vmadc.vxm" => (pure VXM_VMADC)
  | "vmsbc.vxm" => (pure VXM_VMSBC)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vxmtype_mnemonic_forwards_matches (arg_ : vxmfunct6) : Bool :=
  match arg_ with
  | VXM_VMADC => true
  | VXM_VMSBC => true
  | _ => false

def vxmtype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vmadc.vxm" => true
  | "vmsbc.vxm" => true
  | _ => false

def encdec_vxmcfunct6_forwards (arg_ : vxmcfunct6) : (BitVec 6) :=
  match arg_ with
  | VXMC_VMADC => (0b010001 : (BitVec 6))
  | VXMC_VMSBC => (0b010011 : (BitVec 6))

def encdec_vxmcfunct6_backwards (arg_ : (BitVec 6)) : SailM vxmcfunct6 := do
  match_bv arg_ with
  | 010001 => do (pure VXMC_VMADC)
  | 010011 => do (pure VXMC_VMSBC)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vxmcfunct6_forwards_matches (arg_ : vxmcfunct6) : Bool :=
  match arg_ with
  | VXMC_VMADC => true
  | VXMC_VMSBC => true
  | _ => false

def encdec_vxmcfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 010001 => true
  | 010011 => true
  | _ => false

def vxmctype_mnemonic_backwards (arg_ : String) : SailM vxmcfunct6 := do
  match arg_ with
  | "vmadc.vx" => (pure VXMC_VMADC)
  | "vmsbc.vx" => (pure VXMC_VMSBC)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vxmctype_mnemonic_forwards_matches (arg_ : vxmcfunct6) : Bool :=
  match arg_ with
  | VXMC_VMADC => true
  | VXMC_VMSBC => true
  | _ => false

def vxmctype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vmadc.vx" => true
  | "vmsbc.vx" => true
  | _ => false

def encdec_vxmsfunct6_forwards (arg_ : vxmsfunct6) : (BitVec 6) :=
  match arg_ with
  | VXMS_VADC => (0b010000 : (BitVec 6))
  | VXMS_VSBC => (0b010010 : (BitVec 6))

def encdec_vxmsfunct6_backwards (arg_ : (BitVec 6)) : SailM vxmsfunct6 := do
  match_bv arg_ with
  | 010000 => do (pure VXMS_VADC)
  | 010010 => do (pure VXMS_VSBC)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vxmsfunct6_forwards_matches (arg_ : vxmsfunct6) : Bool :=
  match arg_ with
  | VXMS_VADC => true
  | VXMS_VSBC => true
  | _ => false

def encdec_vxmsfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 010000 => true
  | 010010 => true
  | _ => false

def vxmstype_mnemonic_backwards (arg_ : String) : SailM vxmsfunct6 := do
  match arg_ with
  | "vadc.vxm" => (pure VXMS_VADC)
  | "vsbc.vxm" => (pure VXMS_VSBC)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vxmstype_mnemonic_forwards_matches (arg_ : vxmsfunct6) : Bool :=
  match arg_ with
  | VXMS_VADC => true
  | VXMS_VSBC => true
  | _ => false

def vxmstype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vadc.vxm" => true
  | "vsbc.vxm" => true
  | _ => false

def encdec_vxcmpfunct6_forwards (arg_ : vxcmpfunct6) : (BitVec 6) :=
  match arg_ with
  | VXCMP_VMSEQ => (0b011000 : (BitVec 6))
  | VXCMP_VMSNE => (0b011001 : (BitVec 6))
  | VXCMP_VMSLTU => (0b011010 : (BitVec 6))
  | VXCMP_VMSLT => (0b011011 : (BitVec 6))
  | VXCMP_VMSLEU => (0b011100 : (BitVec 6))
  | VXCMP_VMSLE => (0b011101 : (BitVec 6))
  | VXCMP_VMSGTU => (0b011110 : (BitVec 6))
  | VXCMP_VMSGT => (0b011111 : (BitVec 6))

def encdec_vxcmpfunct6_backwards (arg_ : (BitVec 6)) : SailM vxcmpfunct6 := do
  match_bv arg_ with
  | 011000 => do (pure VXCMP_VMSEQ)
  | 011001 => do (pure VXCMP_VMSNE)
  | 011010 => do (pure VXCMP_VMSLTU)
  | 011011 => do (pure VXCMP_VMSLT)
  | 011100 => do (pure VXCMP_VMSLEU)
  | 011101 => do (pure VXCMP_VMSLE)
  | 011110 => do (pure VXCMP_VMSGTU)
  | 011111 => do (pure VXCMP_VMSGT)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vxcmpfunct6_forwards_matches (arg_ : vxcmpfunct6) : Bool :=
  match arg_ with
  | VXCMP_VMSEQ => true
  | VXCMP_VMSNE => true
  | VXCMP_VMSLTU => true
  | VXCMP_VMSLT => true
  | VXCMP_VMSLEU => true
  | VXCMP_VMSLE => true
  | VXCMP_VMSGTU => true
  | VXCMP_VMSGT => true
  | _ => false

def encdec_vxcmpfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 011000 => true
  | 011001 => true
  | 011010 => true
  | 011011 => true
  | 011100 => true
  | 011101 => true
  | 011110 => true
  | 011111 => true
  | _ => false

def vxcmptype_mnemonic_backwards (arg_ : String) : SailM vxcmpfunct6 := do
  match arg_ with
  | "vmseq.vx" => (pure VXCMP_VMSEQ)
  | "vmsne.vx" => (pure VXCMP_VMSNE)
  | "vmsltu.vx" => (pure VXCMP_VMSLTU)
  | "vmslt.vx" => (pure VXCMP_VMSLT)
  | "vmsleu.vx" => (pure VXCMP_VMSLEU)
  | "vmsle.vx" => (pure VXCMP_VMSLE)
  | "vmsgtu.vx" => (pure VXCMP_VMSGTU)
  | "vmsgt.vx" => (pure VXCMP_VMSGT)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vxcmptype_mnemonic_forwards_matches (arg_ : vxcmpfunct6) : Bool :=
  match arg_ with
  | VXCMP_VMSEQ => true
  | VXCMP_VMSNE => true
  | VXCMP_VMSLTU => true
  | VXCMP_VMSLT => true
  | VXCMP_VMSLEU => true
  | VXCMP_VMSLE => true
  | VXCMP_VMSGTU => true
  | VXCMP_VMSGT => true
  | _ => false

def vxcmptype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vmseq.vx" => true
  | "vmsne.vx" => true
  | "vmsltu.vx" => true
  | "vmslt.vx" => true
  | "vmsleu.vx" => true
  | "vmsle.vx" => true
  | "vmsgtu.vx" => true
  | "vmsgt.vx" => true
  | _ => false

def encdec_vimfunct6_forwards (arg_ : vimfunct6) : (BitVec 6) :=
  match arg_ with
  | VIM_VMADC => (0b010001 : (BitVec 6))

def encdec_vimfunct6_backwards (arg_ : (BitVec 6)) : SailM vimfunct6 := do
  match_bv arg_ with
  | 010001 => do (pure VIM_VMADC)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vimfunct6_forwards_matches (arg_ : vimfunct6) : Bool :=
  match arg_ with
  | VIM_VMADC => true
  | _ => false

def encdec_vimfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 010001 => true
  | _ => false

def vimtype_mnemonic_backwards (arg_ : String) : SailM vimfunct6 := do
  match arg_ with
  | "vmadc.vim" => (pure VIM_VMADC)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vimtype_mnemonic_forwards_matches (arg_ : vimfunct6) : Bool :=
  match arg_ with
  | VIM_VMADC => true
  | _ => false

def vimtype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vmadc.vim" => true
  | _ => false

def encdec_vimcfunct6_forwards (arg_ : vimcfunct6) : (BitVec 6) :=
  match arg_ with
  | VIMC_VMADC => (0b010001 : (BitVec 6))

def encdec_vimcfunct6_backwards (arg_ : (BitVec 6)) : SailM vimcfunct6 := do
  match_bv arg_ with
  | 010001 => do (pure VIMC_VMADC)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vimcfunct6_forwards_matches (arg_ : vimcfunct6) : Bool :=
  match arg_ with
  | VIMC_VMADC => true
  | _ => false

def encdec_vimcfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 010001 => true
  | _ => false

def vimctype_mnemonic_backwards (arg_ : String) : SailM vimcfunct6 := do
  match arg_ with
  | "vmadc.vi" => (pure VIMC_VMADC)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vimctype_mnemonic_forwards_matches (arg_ : vimcfunct6) : Bool :=
  match arg_ with
  | VIMC_VMADC => true
  | _ => false

def vimctype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vmadc.vi" => true
  | _ => false

def encdec_vimsfunct6_forwards (arg_ : vimsfunct6) : (BitVec 6) :=
  match arg_ with
  | VIMS_VADC => (0b010000 : (BitVec 6))

def encdec_vimsfunct6_backwards (arg_ : (BitVec 6)) : SailM vimsfunct6 := do
  match_bv arg_ with
  | 010000 => do (pure VIMS_VADC)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vimsfunct6_forwards_matches (arg_ : vimsfunct6) : Bool :=
  match arg_ with
  | VIMS_VADC => true
  | _ => false

def encdec_vimsfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 010000 => true
  | _ => false

def vimstype_mnemonic_backwards (arg_ : String) : SailM vimsfunct6 := do
  match arg_ with
  | "vadc.vim" => (pure VIMS_VADC)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vimstype_mnemonic_forwards_matches (arg_ : vimsfunct6) : Bool :=
  match arg_ with
  | VIMS_VADC => true
  | _ => false

def vimstype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vadc.vim" => true
  | _ => false

def encdec_vicmpfunct6_forwards (arg_ : vicmpfunct6) : (BitVec 6) :=
  match arg_ with
  | VICMP_VMSEQ => (0b011000 : (BitVec 6))
  | VICMP_VMSNE => (0b011001 : (BitVec 6))
  | VICMP_VMSLEU => (0b011100 : (BitVec 6))
  | VICMP_VMSLE => (0b011101 : (BitVec 6))
  | VICMP_VMSGTU => (0b011110 : (BitVec 6))
  | VICMP_VMSGT => (0b011111 : (BitVec 6))

def encdec_vicmpfunct6_backwards (arg_ : (BitVec 6)) : SailM vicmpfunct6 := do
  match_bv arg_ with
  | 011000 => do (pure VICMP_VMSEQ)
  | 011001 => do (pure VICMP_VMSNE)
  | 011100 => do (pure VICMP_VMSLEU)
  | 011101 => do (pure VICMP_VMSLE)
  | 011110 => do (pure VICMP_VMSGTU)
  | 011111 => do (pure VICMP_VMSGT)
  | _ => do
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def encdec_vicmpfunct6_forwards_matches (arg_ : vicmpfunct6) : Bool :=
  match arg_ with
  | VICMP_VMSEQ => true
  | VICMP_VMSNE => true
  | VICMP_VMSLEU => true
  | VICMP_VMSLE => true
  | VICMP_VMSGTU => true
  | VICMP_VMSGT => true
  | _ => false

def encdec_vicmpfunct6_backwards_matches (arg_ : (BitVec 6)) : Bool :=
  match_bv arg_ with
  | 011000 => true
  | 011001 => true
  | 011100 => true
  | 011101 => true
  | 011110 => true
  | 011111 => true
  | _ => false

def vicmptype_mnemonic_backwards (arg_ : String) : SailM vicmpfunct6 := do
  match arg_ with
  | "vmseq.vi" => (pure VICMP_VMSEQ)
  | "vmsne.vi" => (pure VICMP_VMSNE)
  | "vmsleu.vi" => (pure VICMP_VMSLEU)
  | "vmsle.vi" => (pure VICMP_VMSLE)
  | "vmsgtu.vi" => (pure VICMP_VMSGTU)
  | "vmsgt.vi" => (pure VICMP_VMSGT)
  | _ =>
    (do
      assert false "Pattern match failure at unknown location"
      throw Error.Exit)

def vicmptype_mnemonic_forwards_matches (arg_ : vicmpfunct6) : Bool :=
  match arg_ with
  | VICMP_VMSEQ => true
  | VICMP_VMSNE => true
  | VICMP_VMSLEU => true
  | VICMP_VMSLE => true
  | VICMP_VMSGTU => true
  | VICMP_VMSGT => true
  | _ => false

def vicmptype_mnemonic_backwards_matches (arg_ : String) : Bool :=
  match arg_ with
  | "vmseq.vi" => true
  | "vmsne.vi" => true
  | "vmsleu.vi" => true
  | "vmsle.vi" => true
  | "vmsgtu.vi" => true
  | "vmsgt.vi" => true
  | _ => false

