	.file	"A_Olympic_Ranking.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB38:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt4__lgl,"axG",@progbits,_ZSt4__lgl,comdat
	.weak	_ZSt4__lgl
	.type	_ZSt4__lgl, @function
_ZSt4__lgl:
.LFB405:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	bsr	rax, rax
	xor	rax, 63
	mov	edx, eax
	mov	eax, 63
	sub	eax, edx
	cdqe
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	_ZSt4__lgl, .-_ZSt4__lgl
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3255:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L6
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L7
.L6:
	mov	rax, QWORD PTR -8[rbp]
.L7:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3255:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.align 4
	.type	_ZNSt15regex_constantsL13error_collateE, @object
	.size	_ZNSt15regex_constantsL13error_collateE, 4
_ZNSt15regex_constantsL13error_collateE:
	.zero	4
	.align 4
	.type	_ZNSt15regex_constantsL11error_ctypeE, @object
	.size	_ZNSt15regex_constantsL11error_ctypeE, 4
_ZNSt15regex_constantsL11error_ctypeE:
	.long	1
	.align 4
	.type	_ZNSt15regex_constantsL12error_escapeE, @object
	.size	_ZNSt15regex_constantsL12error_escapeE, 4
_ZNSt15regex_constantsL12error_escapeE:
	.long	2
	.align 4
	.type	_ZNSt15regex_constantsL13error_backrefE, @object
	.size	_ZNSt15regex_constantsL13error_backrefE, 4
_ZNSt15regex_constantsL13error_backrefE:
	.long	3
	.align 4
	.type	_ZNSt15regex_constantsL11error_brackE, @object
	.size	_ZNSt15regex_constantsL11error_brackE, 4
_ZNSt15regex_constantsL11error_brackE:
	.long	4
	.align 4
	.type	_ZNSt15regex_constantsL11error_parenE, @object
	.size	_ZNSt15regex_constantsL11error_parenE, 4
_ZNSt15regex_constantsL11error_parenE:
	.long	5
	.align 4
	.type	_ZNSt15regex_constantsL11error_braceE, @object
	.size	_ZNSt15regex_constantsL11error_braceE, 4
_ZNSt15regex_constantsL11error_braceE:
	.long	6
	.align 4
	.type	_ZNSt15regex_constantsL14error_badbraceE, @object
	.size	_ZNSt15regex_constantsL14error_badbraceE, 4
_ZNSt15regex_constantsL14error_badbraceE:
	.long	7
	.align 4
	.type	_ZNSt15regex_constantsL11error_rangeE, @object
	.size	_ZNSt15regex_constantsL11error_rangeE, 4
_ZNSt15regex_constantsL11error_rangeE:
	.long	8
	.align 4
	.type	_ZNSt15regex_constantsL11error_spaceE, @object
	.size	_ZNSt15regex_constantsL11error_spaceE, 4
_ZNSt15regex_constantsL11error_spaceE:
	.long	9
	.align 4
	.type	_ZNSt15regex_constantsL15error_badrepeatE, @object
	.size	_ZNSt15regex_constantsL15error_badrepeatE, 4
_ZNSt15regex_constantsL15error_badrepeatE:
	.long	10
	.align 4
	.type	_ZNSt15regex_constantsL16error_complexityE, @object
	.size	_ZNSt15regex_constantsL16error_complexityE, 4
_ZNSt15regex_constantsL16error_complexityE:
	.long	11
	.align 4
	.type	_ZNSt15regex_constantsL11error_stackE, @object
	.size	_ZNSt15regex_constantsL11error_stackE, 4
_ZNSt15regex_constantsL11error_stackE:
	.long	12
	.align 8
	.type	_ZNSt8__detailL19_S_invalid_state_idE, @object
	.size	_ZNSt8__detailL19_S_invalid_state_idE, 8
_ZNSt8__detailL19_S_invalid_state_idE:
	.quad	-1
.LC0:
	.string	"r"
.LC1:
	.string	"input.txt"
.LC2:
	.string	"w"
.LC3:
	.string	"output.txt"
	.text
	.globl	_Z5setupv
	.type	_Z5setupv, @function
_Z5setupv:
.LFB9704:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 0
	call	_ZNSt8ios_base15sync_with_stdioEb@PLT
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	mov	rax, QWORD PTR stdin[rip]
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	freopen@PLT
	mov	rax, QWORD PTR stdout[rip]
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	freopen@PLT
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.size	_Z5setupv, .-_Z5setupv
	.align 2
	.type	_ZZ4mainENKUlRK4suctS1_E_clES1_S1_, @function
_ZZ4mainENKUlRK4suctS1_E_clES1_S1_:
.LFB9706:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	je	.L10
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	setl	al
	jmp	.L11
.L10:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	rdx, rax
	je	.L12
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	rdx, rax
	setl	al
	jmp	.L11
.L12:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	setl	al
.L11:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9706:
	.size	_ZZ4mainENKUlRK4suctS1_E_clES1_S1_, .-_ZZ4mainENKUlRK4suctS1_E_clES1_S1_
	.globl	main
	.type	main, @function
main:
.LFB9705:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9705
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
.LEHB0:
	call	_Z5setupv
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
.LEHE0:
	lea	rax, -57[rbp]
	mov	rdi, rax
	call	_ZNSaI4suctEC1Ev
	mov	eax, DWORD PTR -56[rbp]
	movsx	rcx, eax
	lea	rdx, -57[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB1:
	call	_ZNSt6vectorI4suctSaIS0_EEC1EmRKS1_
.LEHE1:
	lea	rax, -57[rbp]
	mov	rdi, rax
	call	_ZNSaI4suctED1Ev
	mov	DWORD PTR -52[rbp], 0
	jmp	.L14
.L15:
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB2:
	call	_ZNSirsERx@PLT
	mov	rbx, rax
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EEixEm
	add	rax, 8
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERx@PLT
	mov	rbx, rax
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EEixEm
	add	rax, 16
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERx@PLT
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EEixEm
	add	rax, 24
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	add	DWORD PTR -52[rbp], 1
.L14:
	mov	eax, DWORD PTR -56[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L15
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EE3endEv
	mov	rbx, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EE5beginEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEZ4mainEUlRKS2_S9_E_EvT_SB_T0_
	mov	eax, DWORD PTR -56[rbp]
	sub	eax, 1
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EEixEm
	add	rax, 24
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE2:
	mov	ebx, 0
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EED1Ev
	mov	eax, ebx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	jmp	.L22
.L20:
	endbr64
	mov	rbx, rax
	lea	rax, -57[rbp]
	mov	rdi, rax
	call	_ZNSaI4suctED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB3:
	call	_Unwind_Resume@PLT
.L21:
	endbr64
	mov	rbx, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EED1Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE3:
.L22:
	call	__stack_chk_fail@PLT
.L19:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9705:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9705:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9705-.LLSDACSB9705
.LLSDACSB9705:
	.uleb128 .LEHB0-.LFB9705
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9705
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L20-.LFB9705
	.uleb128 0
	.uleb128 .LEHB2-.LFB9705
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L21-.LFB9705
	.uleb128 0
	.uleb128 .LEHB3-.LFB9705
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE9705:
	.text
	.size	main, .-main
	.section	.text._ZNSaI4suctEC2Ev,"axG",@progbits,_ZNSaI4suctEC5Ev,comdat
	.align 2
	.weak	_ZNSaI4suctEC2Ev
	.type	_ZNSaI4suctEC2Ev, @function
_ZNSaI4suctEC2Ev:
.LFB10398:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorI4suctEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10398:
	.size	_ZNSaI4suctEC2Ev, .-_ZNSaI4suctEC2Ev
	.weak	_ZNSaI4suctEC1Ev
	.set	_ZNSaI4suctEC1Ev,_ZNSaI4suctEC2Ev
	.section	.text._ZNSaI4suctED2Ev,"axG",@progbits,_ZNSaI4suctED5Ev,comdat
	.align 2
	.weak	_ZNSaI4suctED2Ev
	.type	_ZNSaI4suctED2Ev, @function
_ZNSaI4suctED2Ev:
.LFB10401:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorI4suctED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10401:
	.size	_ZNSaI4suctED2Ev, .-_ZNSaI4suctED2Ev
	.weak	_ZNSaI4suctED1Ev
	.set	_ZNSaI4suctED1Ev,_ZNSaI4suctED2Ev
	.section	.text._ZNSt6vectorI4suctSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EEC5EmRKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorI4suctSaIS0_EEC2EmRKS1_
	.type	_ZNSt6vectorI4suctSaIS0_EEC2EmRKS1_, @function
_ZNSt6vectorI4suctSaIS0_EEC2EmRKS1_:
.LFB10404:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10404
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB4:
	call	_ZNSt6vectorI4suctSaIS0_EE17_S_check_init_lenEmRKS1_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseI4suctSaIS0_EEC2EmRKS1_
.LEHE4:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB5:
	call	_ZNSt6vectorI4suctSaIS0_EE21_M_default_initializeEm
.LEHE5:
	jmp	.L28
.L27:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L28:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10404:
	.section	.gcc_except_table
.LLSDA10404:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10404-.LLSDACSB10404
.LLSDACSB10404:
	.uleb128 .LEHB4-.LFB10404
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB10404
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L27-.LFB10404
	.uleb128 0
	.uleb128 .LEHB6-.LFB10404
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE10404:
	.section	.text._ZNSt6vectorI4suctSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EEC5EmRKS1_,comdat
	.size	_ZNSt6vectorI4suctSaIS0_EEC2EmRKS1_, .-_ZNSt6vectorI4suctSaIS0_EEC2EmRKS1_
	.weak	_ZNSt6vectorI4suctSaIS0_EEC1EmRKS1_
	.set	_ZNSt6vectorI4suctSaIS0_EEC1EmRKS1_,_ZNSt6vectorI4suctSaIS0_EEC2EmRKS1_
	.section	.text._ZNSt6vectorI4suctSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI4suctSaIS0_EED2Ev
	.type	_ZNSt6vectorI4suctSaIS0_EED2Ev, @function
_ZNSt6vectorI4suctSaIS0_EED2Ev:
.LFB10407:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10407
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIP4suctS0_EvT_S2_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10407:
	.section	.gcc_except_table
.LLSDA10407:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10407-.LLSDACSB10407
.LLSDACSB10407:
.LLSDACSE10407:
	.section	.text._ZNSt6vectorI4suctSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI4suctSaIS0_EED2Ev, .-_ZNSt6vectorI4suctSaIS0_EED2Ev
	.weak	_ZNSt6vectorI4suctSaIS0_EED1Ev
	.set	_ZNSt6vectorI4suctSaIS0_EED1Ev,_ZNSt6vectorI4suctSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI4suctSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorI4suctSaIS0_EEixEm
	.type	_ZNSt6vectorI4suctSaIS0_EEixEm, @function
_ZNSt6vectorI4suctSaIS0_EEixEm:
.LFB10409:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	sal	rax, 3
	sub	rax, rdx
	sal	rax, 3
	add	rax, rcx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10409:
	.size	_ZNSt6vectorI4suctSaIS0_EEixEm, .-_ZNSt6vectorI4suctSaIS0_EEixEm
	.section	.text._ZNSt6vectorI4suctSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorI4suctSaIS0_EE5beginEv
	.type	_ZNSt6vectorI4suctSaIS0_EE5beginEv, @function
_ZNSt6vectorI4suctSaIS0_EE5beginEv:
.LFB10412:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10412:
	.size	_ZNSt6vectorI4suctSaIS0_EE5beginEv, .-_ZNSt6vectorI4suctSaIS0_EE5beginEv
	.section	.text._ZNSt6vectorI4suctSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorI4suctSaIS0_EE3endEv
	.type	_ZNSt6vectorI4suctSaIS0_EE3endEv, @function
_ZNSt6vectorI4suctSaIS0_EE3endEv:
.LFB10413:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 8[rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10413:
	.size	_ZNSt6vectorI4suctSaIS0_EE3endEv, .-_ZNSt6vectorI4suctSaIS0_EE3endEv
	.text
	.type	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEZ4mainEUlRKS2_S9_E_EvT_SB_T0_, @function
_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEZ4mainEUlRKS2_S9_E_EvT_SB_T0_:
.LFB10414:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	call	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_15_Iter_comp_iterIT_EES7_
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10414:
	.size	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEZ4mainEUlRKS2_S9_E_EvT_SB_T0_, .-_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEZ4mainEUlRKS2_S9_E_EvT_SB_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4suctEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4suctEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4suctEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4suctEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4suctEC2Ev:
.LFB10808:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10808:
	.size	_ZN9__gnu_cxx13new_allocatorI4suctEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI4suctEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4suctEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4suctEC1Ev,_ZN9__gnu_cxx13new_allocatorI4suctEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI4suctED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4suctED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4suctED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4suctED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4suctED2Ev:
.LFB10811:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10811:
	.size	_ZN9__gnu_cxx13new_allocatorI4suctED2Ev, .-_ZN9__gnu_cxx13new_allocatorI4suctED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4suctED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4suctED1Ev,_ZN9__gnu_cxx13new_allocatorI4suctED2Ev
	.section	.rodata
	.align 8
.LC4:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorI4suctSaIS0_EE17_S_check_init_lenEmRKS1_,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EE17_S_check_init_lenEmRKS1_,comdat
	.weak	_ZNSt6vectorI4suctSaIS0_EE17_S_check_init_lenEmRKS1_
	.type	_ZNSt6vectorI4suctSaIS0_EE17_S_check_init_lenEmRKS1_, @function
_ZNSt6vectorI4suctSaIS0_EE17_S_check_init_lenEmRKS1_:
.LFB10813:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaI4suctEC1ERKS0_
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorI4suctSaIS0_EE11_S_max_sizeERKS1_
	cmp	QWORD PTR -40[rbp], rax
	seta	bl
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaI4suctED1Ev
	test	bl, bl
	je	.L42
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L42:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10813:
	.size	_ZNSt6vectorI4suctSaIS0_EE17_S_check_init_lenEmRKS1_, .-_ZNSt6vectorI4suctSaIS0_EE17_S_check_init_lenEmRKS1_
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD2Ev:
.LFB10816:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaI4suctED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10816:
	.size	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EEC5EmRKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EEC2EmRKS1_
	.type	_ZNSt12_Vector_baseI4suctSaIS0_EEC2EmRKS1_, @function
_ZNSt12_Vector_baseI4suctSaIS0_EEC2EmRKS1_:
.LFB10818:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10818
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC1ERKS1_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB7:
	call	_ZNSt12_Vector_baseI4suctSaIS0_EE17_M_create_storageEm
.LEHE7:
	jmp	.L49
.L48:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L49:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10818:
	.section	.gcc_except_table
.LLSDA10818:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10818-.LLSDACSB10818
.LLSDACSB10818:
	.uleb128 .LEHB7-.LFB10818
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L48-.LFB10818
	.uleb128 0
	.uleb128 .LEHB8-.LFB10818
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10818:
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EEC5EmRKS1_,comdat
	.size	_ZNSt12_Vector_baseI4suctSaIS0_EEC2EmRKS1_, .-_ZNSt12_Vector_baseI4suctSaIS0_EEC2EmRKS1_
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EEC1EmRKS1_
	.set	_ZNSt12_Vector_baseI4suctSaIS0_EEC1EmRKS1_,_ZNSt12_Vector_baseI4suctSaIS0_EEC2EmRKS1_
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI4suctSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI4suctSaIS0_EED2Ev:
.LFB10821:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10821
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, 7905747460161236407
	imul	rax, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EE13_M_deallocateEPS0_m
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10821:
	.section	.gcc_except_table
.LLSDA10821:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10821-.LLSDACSB10821
.LLSDACSB10821:
.LLSDACSE10821:
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI4suctSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI4suctSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI4suctSaIS0_EED1Ev,_ZNSt12_Vector_baseI4suctSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI4suctSaIS0_EE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorI4suctSaIS0_EE21_M_default_initializeEm
	.type	_ZNSt6vectorI4suctSaIS0_EE21_M_default_initializeEm, @function
_ZNSt6vectorI4suctSaIS0_EE21_M_default_initializeEm:
.LFB10823:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__uninitialized_default_n_aIP4suctmS0_ET_S2_T0_RSaIT1_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10823:
	.size	_ZNSt6vectorI4suctSaIS0_EE21_M_default_initializeEm, .-_ZNSt6vectorI4suctSaIS0_EE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI4suctSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI4suctSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB10824:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10824:
	.size	_ZNSt12_Vector_baseI4suctSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI4suctSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP4suctS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP4suctS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP4suctS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP4suctS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP4suctS0_EvT_S2_RSaIT0_E:
.LFB10825:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIP4suctEvT_S2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10825:
	.size	_ZSt8_DestroyIP4suctS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP4suctS0_EvT_S2_RSaIT0_E
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC2ERKS2_:
.LFB10828:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10828:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.text
	.type	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_15_Iter_comp_iterIT_EES7_, @function
_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_15_Iter_comp_iterIT_EES7_:
.LFB10830:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -33[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRZ4mainEUlRK4suctS2_E_EONSt16remove_referenceIT_E4typeEOS6_
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EC1ES5_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L58
	call	__stack_chk_fail@PLT
.L58:
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10830:
	.size	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_15_Iter_comp_iterIT_EES7_, .-_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_15_Iter_comp_iterIT_EES7_
	.type	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_, @function
_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_:
.LFB10831:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	test	al, al
	je	.L61
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	rdi, rax
	call	_ZSt4__lgl
	lea	rdx, [rax+rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_T1_
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_
.L61:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10831:
	.size	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_, .-_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_
	.section	.text._ZNSt6vectorI4suctSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI4suctSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI4suctSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI4suctSaIS0_EE11_S_max_sizeERKS1_, @function
_ZNSt6vectorI4suctSaIS0_EE11_S_max_sizeERKS1_:
.LFB11028:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movabs	rax, 164703072086692425
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI4suctEE8max_sizeERKS1_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11028:
	.size	_ZNSt6vectorI4suctSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI4suctSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNSaI4suctEC2ERKS0_,"axG",@progbits,_ZNSaI4suctEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSaI4suctEC2ERKS0_
	.type	_ZNSaI4suctEC2ERKS0_, @function
_ZNSaI4suctEC2ERKS0_:
.LFB11030:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorI4suctEC2ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11030:
	.size	_ZNSaI4suctEC2ERKS0_, .-_ZNSaI4suctEC2ERKS0_
	.weak	_ZNSaI4suctEC1ERKS0_
	.set	_ZNSaI4suctEC1ERKS0_,_ZNSaI4suctEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC2ERKS1_,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC2ERKS1_
	.type	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC2ERKS1_, @function
_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC2ERKS1_:
.LFB11033:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaI4suctEC2ERKS0_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11033:
	.size	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC2ERKS1_, .-_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC2ERKS1_
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC1ERKS1_
	.set	_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC1ERKS1_,_ZNSt12_Vector_baseI4suctSaIS0_EE12_Vector_implC2ERKS1_
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseI4suctSaIS0_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseI4suctSaIS0_EE17_M_create_storageEm:
.LFB11035:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI4suctSaIS0_EE11_M_allocateEm
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	sal	rax, 3
	sub	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11035:
	.size	_ZNSt12_Vector_baseI4suctSaIS0_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseI4suctSaIS0_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI4suctSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI4suctSaIS0_EE13_M_deallocateEPS0_m:
.LFB11036:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	cmp	QWORD PTR -16[rbp], 0
	je	.L70
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI4suctEE10deallocateERS1_PS0_m
.L70:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11036:
	.size	_ZNSt12_Vector_baseI4suctSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI4suctSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZSt27__uninitialized_default_n_aIP4suctmS0_ET_S2_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIP4suctmS0_ET_S2_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIP4suctmS0_ET_S2_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIP4suctmS0_ET_S2_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIP4suctmS0_ET_S2_T0_RSaIT1_E:
.LFB11037:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt25__uninitialized_default_nIP4suctmET_S2_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11037:
	.size	_ZSt27__uninitialized_default_n_aIP4suctmS0_ET_S2_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIP4suctmS0_ET_S2_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIP4suctEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP4suctEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP4suctEvT_S2_
	.type	_ZSt8_DestroyIP4suctEvT_S2_, @function
_ZSt8_DestroyIP4suctEvT_S2_:
.LFB11038:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIP4suctEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11038:
	.size	_ZSt8_DestroyIP4suctEvT_S2_, .-_ZSt8_DestroyIP4suctEvT_S2_
	.text
	.type	_ZSt4moveIRZ4mainEUlRK4suctS2_E_EONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRZ4mainEUlRK4suctS2_E_EONSt16remove_referenceIT_E4typeEOS6_:
.LFB11041:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11041:
	.size	_ZSt4moveIRZ4mainEUlRK4suctS2_E_EONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRZ4mainEUlRK4suctS2_E_EONSt16remove_referenceIT_E4typeEOS6_
	.align 2
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EC2ES5_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EC2ES5_:
.LFB11043:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	lea	rax, -9[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRZ4mainEUlRK4suctS2_E_EONSt16remove_referenceIT_E4typeEOS6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11043:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EC2ES5_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EC2ES5_
	.set	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EC1ES5_,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EC2ES5_
	.section	.text._ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, @function
_ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB11045:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	setne	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11045:
	.size	_ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.type	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, @function
_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB11046:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, 7905747460161236407
	imul	rax, rdx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11046:
	.size	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .-_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.text
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_T1_, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_T1_:
.LFB11047:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L82
.L85:
	cmp	QWORD PTR -40[rbp], 0
	jne	.L83
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_
	jmp	.L81
.L83:
	sub	QWORD PTR -40[rbp], 1
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_T0_
	mov	QWORD PTR -16[rbp], rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_T1_
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -32[rbp], rax
.L82:
	lea	rdx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmp	rax, 16
	setg	al
	test	al, al
	jne	.L85
.L81:
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L86
	call	__stack_chk_fail@PLT
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11047:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_T1_, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_T1_
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_, @function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_:
.LFB11048:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmp	rax, 16
	setg	al
	test	al, al
	je	.L88
	lea	rax, -8[rbp]
	mov	esi, 16
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_
	lea	rax, -8[rbp]
	mov	esi, 16
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_
	jmp	.L90
.L88:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_
.L90:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11048:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_, .-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_
	.section	.text._ZNSt16allocator_traitsISaI4suctEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI4suctEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI4suctEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI4suctEE8max_sizeERKS1_, @function
_ZNSt16allocator_traitsISaI4suctEE8max_sizeERKS1_:
.LFB11185:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorI4suctE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11185:
	.size	_ZNSt16allocator_traitsISaI4suctEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI4suctEE8max_sizeERKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4suctEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4suctEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4suctEC2ERKS2_
	.type	_ZN9__gnu_cxx13new_allocatorI4suctEC2ERKS2_, @function
_ZN9__gnu_cxx13new_allocatorI4suctEC2ERKS2_:
.LFB11187:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11187:
	.size	_ZN9__gnu_cxx13new_allocatorI4suctEC2ERKS2_, .-_ZN9__gnu_cxx13new_allocatorI4suctEC2ERKS2_
	.weak	_ZN9__gnu_cxx13new_allocatorI4suctEC1ERKS2_
	.set	_ZN9__gnu_cxx13new_allocatorI4suctEC1ERKS2_,_ZN9__gnu_cxx13new_allocatorI4suctEC2ERKS2_
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB11190:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11190:
	.size	_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI4suctSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseI4suctSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI4suctSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4suctSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI4suctSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI4suctSaIS0_EE11_M_allocateEm:
.LFB11192:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	je	.L96
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI4suctEE8allocateERS1_m
	jmp	.L98
.L96:
	mov	eax, 0
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11192:
	.size	_ZNSt12_Vector_baseI4suctSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI4suctSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaI4suctEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI4suctEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI4suctEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI4suctEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI4suctEE10deallocateERS1_PS0_m:
.LFB11193:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorI4suctE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11193:
	.size	_ZNSt16allocator_traitsISaI4suctEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI4suctEE10deallocateERS1_PS0_m
	.section	.text._ZSt25__uninitialized_default_nIP4suctmET_S2_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIP4suctmET_S2_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIP4suctmET_S2_T0_
	.type	_ZSt25__uninitialized_default_nIP4suctmET_S2_T0_, @function
_ZSt25__uninitialized_default_nIP4suctmET_S2_T0_:
.LFB11194:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4suctmEET_S4_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11194:
	.size	_ZSt25__uninitialized_default_nIP4suctmET_S2_T0_, .-_ZSt25__uninitialized_default_nIP4suctmET_S2_T0_
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP4suctEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP4suctEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP4suctEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP4suctEEvT_S4_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIP4suctEEvT_S4_:
.LFB11195:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	jmp	.L103
.L104:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofI4suctEPT_RS1_
	mov	rdi, rax
	call	_ZSt8_DestroyI4suctEvPT_
	add	QWORD PTR -8[rbp], 56
.L103:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L104
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11195:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP4suctEEvT_S4_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIP4suctEEvT_S4_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB11196:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11196:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	.text
	.type	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_, @function
_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_:
.LFB11197:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_
	lea	rdx, -25[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11197:
	.size	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_, .-_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_
	.type	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_T0_, @function
_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_T0_:
.LFB11198:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rdx, -40[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -32[rbp], rax
	lea	rax, -48[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmiEl
	mov	rbx, rax
	lea	rax, -40[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	rsi, rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_SE_T0_
	lea	rax, -40[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_SE_T0_
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L110
	call	__stack_chk_fail@PLT
.L110:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11198:
	.size	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_T0_, .-_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_T0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl:
.LFB11199:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, rdx
	sal	rax, 3
	sub	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L113
	call	__stack_chk_fail@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11199:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl, .-_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	.section	.text._ZN4suctC2EOS_,"axG",@progbits,_ZN4suctC5EOS_,comdat
	.align 2
	.weak	_ZN4suctC2EOS_
	.type	_ZN4suctC2EOS_, @function
_ZN4suctC2EOS_:
.LFB11202:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 24
	mov	rdx, QWORD PTR -16[rbp]
	add	rdx, 24
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11202:
	.size	_ZN4suctC2EOS_, .-_ZN4suctC2EOS_
	.weak	_ZN4suctC1EOS_
	.set	_ZN4suctC1EOS_,_ZN4suctC2EOS_
	.section	.text._ZN4suctD2Ev,"axG",@progbits,_ZN4suctD5Ev,comdat
	.align 2
	.weak	_ZN4suctD2Ev
	.type	_ZN4suctD2Ev, @function
_ZN4suctD2Ev:
.LFB11205:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 24
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11205:
	.size	_ZN4suctD2Ev, .-_ZN4suctD2Ev
	.weak	_ZN4suctD1Ev
	.set	_ZN4suctD1Ev,_ZN4suctD2Ev
	.section	.text._ZN4suctaSEOS_,"axG",@progbits,_ZN4suctaSEOS_,comdat
	.align 2
	.weak	_ZN4suctaSEOS_
	.type	_ZN4suctaSEOS_, @function
_ZN4suctaSEOS_:
.LFB11207:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 24[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 24
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_@PLT
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11207:
	.size	_ZN4suctaSEOS_, .-_ZN4suctaSEOS_
	.text
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_, @function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_:
.LFB11200:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11200
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 120
	.cfi_offset 3, -24
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rdx, -112[rbp]
	lea	rax, -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxeqIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	test	al, al
	jne	.L128
	lea	rax, -104[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -88[rbp], rax
	jmp	.L121
.L124:
	mov	rdx, QWORD PTR -104[rbp]
	mov	rcx, QWORD PTR -88[rbp]
	lea	rax, -113[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	je	.L122
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctC1EOS_
	lea	rax, -88[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	rdx, rax
	mov	rcx, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB9:
	call	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
.LEHE9:
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	lea	rax, -104[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	jmp	.L123
.L122:
.LEHB10:
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_
.L123:
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv
.L121:
	lea	rdx, -112[rbp]
	lea	rax, -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	test	al, al
	jne	.L124
	jmp	.L118
.L127:
	endbr64
	mov	rbx, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE10:
.L128:
	nop
.L118:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L126
	call	__stack_chk_fail@PLT
.L126:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11200:
	.section	.gcc_except_table
.LLSDA11200:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11200-.LLSDACSB11200
.LLSDACSB11200:
	.uleb128 .LEHB9-.LFB11200
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L127-.LFB11200
	.uleb128 0
	.uleb128 .LEHB10-.LFB11200
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE11200:
	.text
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_
	.type	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_, @function
_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_:
.LFB11208:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L130
.L131:
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv
.L130:
	lea	rdx, -32[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxneIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	test	al, al
	jne	.L131
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L132
	call	__stack_chk_fail@PLT
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11208:
	.size	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_, .-_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI4suctE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI4suctE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI4suctE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI4suctE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI4suctE8max_sizeEv:
.LFB11293:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorI4suctE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11293:
	.size	_ZNK9__gnu_cxx13new_allocatorI4suctE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI4suctE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaI4suctEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI4suctEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI4suctEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI4suctEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaI4suctEE8allocateERS1_m:
.LFB11294:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorI4suctE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11294:
	.size	_ZNSt16allocator_traitsISaI4suctEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI4suctEE8allocateERS1_m
	.section	.text._ZN9__gnu_cxx13new_allocatorI4suctE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4suctE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4suctE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI4suctE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI4suctE10deallocateEPS1_m:
.LFB11295:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, rdx
	sal	rax, 3
	sub	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11295:
	.size	_ZN9__gnu_cxx13new_allocatorI4suctE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI4suctE10deallocateEPS1_m
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4suctmEET_S4_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4suctmEET_S4_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4suctmEET_S4_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4suctmEET_S4_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4suctmEET_S4_T0_:
.LFB11296:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L140
.L141:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofI4suctEPT_RS1_
	mov	rdi, rax
	call	_ZSt10_ConstructI4suctJEEvPT_DpOT0_
	sub	QWORD PTR -32[rbp], 1
	add	QWORD PTR -8[rbp], 56
.L140:
	cmp	QWORD PTR -32[rbp], 0
	jne	.L141
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11296:
	.size	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4suctmEET_S4_T0_, .-_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4suctmEET_S4_T0_
	.section	.text._ZSt11__addressofI4suctEPT_RS1_,"axG",@progbits,_ZSt11__addressofI4suctEPT_RS1_,comdat
	.weak	_ZSt11__addressofI4suctEPT_RS1_
	.type	_ZSt11__addressofI4suctEPT_RS1_, @function
_ZSt11__addressofI4suctEPT_RS1_:
.LFB11297:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11297:
	.size	_ZSt11__addressofI4suctEPT_RS1_, .-_ZSt11__addressofI4suctEPT_RS1_
	.section	.text._ZSt8_DestroyI4suctEvPT_,"axG",@progbits,_ZSt8_DestroyI4suctEvPT_,comdat
	.weak	_ZSt8_DestroyI4suctEvPT_
	.type	_ZSt8_DestroyI4suctEvPT_, @function
_ZSt8_DestroyI4suctEvPT_:
.LFB11298:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11298:
	.size	_ZSt8_DestroyI4suctEvPT_, .-_ZSt8_DestroyI4suctEvPT_
	.text
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_, @function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_:
.LFB11299:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -41[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L147
.L149:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	lea	rax, -41[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	je	.L148
	lea	rcx, -41[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_RT0_
.L148:
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv
.L147:
	lea	rdx, -40[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxltIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	test	al, al
	jne	.L149
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L150
	call	__stack_chk_fail@PLT
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11299:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_, .-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_T0_
	.type	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_, @function
_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_:
.LFB11300:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	jmp	.L152
.L153:
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv
	mov	rcx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_RT0_
.L152:
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmp	rax, 1
	setg	al
	test	al, al
	jne	.L153
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11300:
	.size	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_, .-_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmiEl:
.LFB11301:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, rdx
	sal	rax, 3
	sub	rax, rdx
	sal	rax, 3
	neg	rax
	add	rax, rcx
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L156
	call	__stack_chk_fail@PLT
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11301:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmiEl
	.text
	.align 2
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_:
.LFB11303:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 32
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rbx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	r12, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdx, r12
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZZ4mainENKUlRK4suctS1_E_clES1_S1_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11303:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	.type	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_SE_T0_, @function
_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_SE_T0_:
.LFB11302:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	je	.L160
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	je	.L161
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L166
.L161:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	je	.L163
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L166
.L163:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L166
.L160:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	je	.L164
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L166
.L164:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	je	.L165
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L166
.L165:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
.L166:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11302:
	.size	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_SE_T0_, .-_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_SE_T0_
	.type	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_SE_T0_, @function
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_SE_T0_:
.LFB11304:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	jmp	.L168
.L169:
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv
.L168:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	jne	.L169
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv
	jmp	.L170
.L171:
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv
.L170:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	jne	.L171
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxltIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	xor	eax, 1
	test	al, al
	je	.L172
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L175
.L172:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv
	jmp	.L168
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11304:
	.size	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_SE_T0_, .-_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEET_SE_SE_SE_T0_
	.section	.text._ZN9__gnu_cxxeqIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxeqIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxeqIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxeqIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, @function
_ZN9__gnu_cxxeqIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB11305:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	sete	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11305:
	.size	_ZN9__gnu_cxxeqIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxeqIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv:
.LFB11306:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 56[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11306:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv:
.LFB11307:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11307:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_:
.LFB11308:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11308:
	.size	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,"axG",@progbits,_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,comdat
	.weak	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.type	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_, @function
_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_:
.LFB11309:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEET_S8_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEET_S8_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11309:
	.size	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_, .-_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.text
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE, @function
_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE:
.LFB11310:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -33[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS5_E_EEEONSt16remove_referenceIT_E4typeEOSA_
	mov	rdx, rax
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EC1EONS0_15_Iter_comp_iterIS5_EE
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L188
	call	__stack_chk_fail@PLT
.L188:
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11310:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE, .-_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRK4suctS4_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE
	.type	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_, @function
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_:
.LFB11311:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 104
	.cfi_offset 3, -24
	mov	QWORD PTR -104[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -104[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctC1EOS_
	mov	rax, QWORD PTR -104[rbp]
	mov	QWORD PTR -88[rbp], rax
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv
	jmp	.L190
.L191:
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	lea	rax, -104[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	mov	rax, QWORD PTR -88[rbp]
	mov	QWORD PTR -104[rbp], rax
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv
.L190:
	mov	rdx, QWORD PTR -88[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -105[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_
	test	al, al
	jne	.L191
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	lea	rax, -104[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L192
	call	__stack_chk_fail@PLT
.L192:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11311:
	.size	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_, .-_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI4suctE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI4suctE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI4suctE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI4suctE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI4suctE11_M_max_sizeEv:
.LFB11417:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 164703072086692425
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11417:
	.size	_ZNK9__gnu_cxx13new_allocatorI4suctE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI4suctE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI4suctE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4suctE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4suctE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI4suctE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorI4suctE8allocateEmPKv:
.LFB11418:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorI4suctE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L196
	movabs	rax, 329406144173384850
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L197
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L197:
	call	_ZSt17__throw_bad_allocv@PLT
.L196:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	sal	rax, 3
	sub	rax, rdx
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11418:
	.size	_ZN9__gnu_cxx13new_allocatorI4suctE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI4suctE8allocateEmPKv
	.section	.text._ZN4suctC2Ev,"axG",@progbits,_ZN4suctC5Ev,comdat
	.align 2
	.weak	_ZN4suctC2Ev
	.type	_ZN4suctC2Ev, @function
_ZN4suctC2Ev:
.LFB11421:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 24
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11421:
	.size	_ZN4suctC2Ev, .-_ZN4suctC2Ev
	.weak	_ZN4suctC1Ev
	.set	_ZN4suctC1Ev,_ZN4suctC2Ev
	.section	.text._ZSt10_ConstructI4suctJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI4suctJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructI4suctJEEvPT_DpOT0_
	.type	_ZSt10_ConstructI4suctJEEvPT_DpOT0_, @function
_ZSt10_ConstructI4suctJEEvPT_DpOT0_:
.LFB11419:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	edi, 56
	call	_ZnwmPv
	mov	QWORD PTR [rax], 0
	mov	QWORD PTR 8[rax], 0
	mov	QWORD PTR 16[rax], 0
	mov	QWORD PTR 24[rax], 0
	mov	QWORD PTR 32[rax], 0
	mov	QWORD PTR 40[rax], 0
	mov	QWORD PTR 48[rax], 0
	mov	rdi, rax
	call	_ZN4suctC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11419:
	.size	_ZSt10_ConstructI4suctJEEvPT_DpOT0_, .-_ZSt10_ConstructI4suctJEEvPT_DpOT0_
	.text
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_, @function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_:
.LFB11423:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11423
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 200
	.cfi_offset 3, -24
	mov	QWORD PTR -184[rbp], rdi
	mov	QWORD PTR -192[rbp], rsi
	mov	QWORD PTR -200[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rdx, -184[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmp	rax, 1
	setle	al
	test	al, al
	jne	.L211
	lea	rdx, -184[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	QWORD PTR -152[rbp], rax
	mov	rax, QWORD PTR -152[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -160[rbp], rax
.L207:
	mov	rdx, QWORD PTR -160[rbp]
	lea	rax, -184[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -168[rbp], rax
	lea	rax, -168[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctC1EOS_
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctC1EOS_
	lea	rcx, -80[rbp]
	mov	rdx, QWORD PTR -152[rbp]
	mov	rsi, QWORD PTR -160[rbp]
	mov	rax, QWORD PTR -184[rbp]
	mov	rdi, rax
.LEHB11:
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_
.LEHE11:
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	cmp	QWORD PTR -160[rbp], 0
	jne	.L204
	mov	ebx, 0
	jmp	.L205
.L204:
	sub	QWORD PTR -160[rbp], 1
	mov	ebx, 1
.L205:
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	cmp	ebx, 1
	jne	.L201
	jmp	.L207
.L210:
	endbr64
	mov	rbx, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L211:
	nop
.L201:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L209
	call	__stack_chk_fail@PLT
.L209:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11423:
	.section	.gcc_except_table
.LLSDA11423:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11423-.LLSDACSB11423
.LLSDACSB11423:
	.uleb128 .LEHB11-.LFB11423
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L210-.LFB11423
	.uleb128 0
	.uleb128 .LEHB12-.LFB11423
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE11423:
	.text
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_, .-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_RT0_
	.section	.text._ZN9__gnu_cxxltIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxltIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxltIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxltIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, @function
_ZN9__gnu_cxxltIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB11424:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	setb	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11424:
	.size	_ZN9__gnu_cxxltIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxltIP4suctSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.text
	.type	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_RT0_, @function
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_RT0_:
.LFB11425:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11425
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 168
	.cfi_offset 3, -24
	mov	QWORD PTR -152[rbp], rdi
	mov	QWORD PTR -160[rbp], rsi
	mov	QWORD PTR -168[rbp], rdx
	mov	QWORD PTR -176[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -168[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctC1EOS_
	lea	rax, -152[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	lea	rax, -168[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctC1EOS_
	lea	rdx, -152[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIP4suctSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	rsi, rax
	lea	rdx, -80[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, 0
	mov	rdi, rax
.LEHB13:
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_
.LEHE13:
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L216
	jmp	.L218
.L217:
	endbr64
	mov	rbx, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L218:
	call	__stack_chk_fail@PLT
.L216:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11425:
	.section	.gcc_except_table
.LLSDA11425:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11425-.LLSDACSB11425
.LLSDACSB11425:
	.uleb128 .LEHB13-.LFB11425
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L217-.LFB11425
	.uleb128 0
	.uleb128 .LEHB14-.LFB11425
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE11425:
	.text
	.size	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_RT0_, .-_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_SE_SE_RT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv, @function
_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv:
.LFB11426:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -56[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11426:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv, .-_ZN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEmmEv
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_,comdat
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_, @function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_:
.LFB11427:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rbx, rax
	lea	rax, -24[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt4swapI4suctENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11427:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEET_S8_:
.LFB11428:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11428:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEEET_S8_
	.section	.text._ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,comdat
	.weak	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.type	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_, @function
_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_:
.LFB11429:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 32
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb1EP4suctS1_ET1_T0_S3_S2_
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11429:
	.size	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_, .-_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.text
	.type	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS5_E_EEEONSt16remove_referenceIT_E4typeEOSA_, @function
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS5_E_EEEONSt16remove_referenceIT_E4typeEOSA_:
.LFB11431:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11431:
	.size	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS5_E_EEEONSt16remove_referenceIT_E4typeEOSA_, .-_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS5_E_EEEONSt16remove_referenceIT_E4typeEOSA_
	.align 2
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE:
.LFB11433:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRZ4mainEUlRK4suctS2_E_EONSt16remove_referenceIT_E4typeEOS6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11433:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE
	.set	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EC1EONS0_15_Iter_comp_iterIS5_EE,_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE
	.align 2
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_:
.LFB11435:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rbx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZZ4mainENKUlRK4suctS1_E_clES1_S1_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11435:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRK4suctS4_E_EclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_:
.LFB11503:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11503
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 152
	.cfi_offset 3, -24
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	mov	QWORD PTR -144[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -128[rbp]
	mov	QWORD PTR -88[rbp], rax
	mov	rax, QWORD PTR -128[rbp]
	mov	QWORD PTR -96[rbp], rax
	jmp	.L232
.L234:
	mov	rax, QWORD PTR -96[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -96[rbp], rax
	mov	rax, QWORD PTR -96[rbp]
	lea	rdx, -1[rax]
	lea	rax, -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	rbx, rax
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	rcx, rax
	lea	rax, -145[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESD_EEbT_T0_
	test	al, al
	je	.L233
	sub	QWORD PTR -96[rbp], 1
.L233:
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -104[rbp], rax
	lea	rax, -104[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -112[rbp], rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	mov	rax, QWORD PTR -96[rbp]
	mov	QWORD PTR -128[rbp], rax
.L232:
	mov	rax, QWORD PTR -136[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -96[rbp], rax
	jl	.L234
	mov	rax, QWORD PTR -136[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L235
	mov	rax, QWORD PTR -136[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -96[rbp], rax
	jne	.L235
	mov	rax, QWORD PTR -96[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -96[rbp], rax
	mov	rax, QWORD PTR -96[rbp]
	lea	rdx, -1[rax]
	lea	rax, -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -104[rbp], rax
	lea	rax, -104[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -112[rbp], rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	mov	rax, QWORD PTR -96[rbp]
	sub	rax, 1
	mov	QWORD PTR -128[rbp], rax
.L235:
	lea	rax, -145[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRK4suctS5_E_EEEONSt16remove_referenceIT_E4typeEOSA_
	mov	rdx, rax
	lea	rax, -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EC1EONS0_15_Iter_comp_iterIS5_EE
	mov	rax, QWORD PTR -144[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctC1EOS_
	lea	rdi, -104[rbp]
	lea	rcx, -80[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rsi, QWORD PTR -128[rbp]
	mov	rax, QWORD PTR -120[rbp]
	mov	r8, rdi
	mov	rdi, rax
.LEHB15:
	call	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_RT2_
.LEHE15:
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L237
	jmp	.L239
.L238:
	endbr64
	mov	rbx, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L239:
	call	__stack_chk_fail@PLT
.L237:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11503:
	.section	.gcc_except_table
.LLSDA11503:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11503-.LLSDACSB11503
.LLSDACSB11503:
	.uleb128 .LEHB15-.LFB11503
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L238-.LFB11503
	.uleb128 0
	.uleb128 .LEHB16-.LFB11503
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE11503:
	.text
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_
	.section	.text._ZSt4swapI4suctENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,"axG",@progbits,_ZSt4swapI4suctENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,comdat
	.weak	_ZSt4swapI4suctENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.type	_ZSt4swapI4suctENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_, @function
_ZSt4swapI4suctENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_:
.LFB11504:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctC1EOS_
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZN4suctD1Ev
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L241
	call	__stack_chk_fail@PLT
.L241:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11504:
	.size	_ZSt4swapI4suctENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_, .-_ZSt4swapI4suctENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.section	.text._ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB11505:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11505:
	.size	_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt23__copy_move_backward_a1ILb1EP4suctS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EP4suctS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb1EP4suctS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb1EP4suctS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a1ILb1EP4suctS1_ET1_T0_S3_S2_:
.LFB11506:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a2ILb1EP4suctS1_ET1_T0_S3_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11506:
	.size	_ZSt23__copy_move_backward_a1ILb1EP4suctS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb1EP4suctS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_,"axG",@progbits,_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_,comdat
	.weak	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.type	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_, @function
_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_:
.LFB11507:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIP4suctSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, rdx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, 7905747460161236407
	imul	rax, rdx
	mov	rdx, rax
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11507:
	.size	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_, .-_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.text
	.align 2
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE:
.LFB11538:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRZ4mainEUlRK4suctS2_E_EONSt16remove_referenceIT_E4typeEOS6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11538:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE
	.set	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EC1EONS0_15_Iter_comp_iterIS5_EE,_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EC2EONS0_15_Iter_comp_iterIS5_EE
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_RT2_, @function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_RT2_:
.LFB11540:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -64[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -32[rbp], rax
	jmp	.L250
.L253:
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -40[rbp], rax
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -48[rbp], rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -32[rbp], rax
.L250:
	mov	rax, QWORD PTR -64[rbp]
	cmp	rax, QWORD PTR -72[rbp]
	jle	.L251
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	rcx, rax
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_
	test	al, al
	je	.L251
	mov	eax, 1
	jmp	.L252
.L251:
	mov	eax, 0
.L252:
	test	al, al
	jne	.L253
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rbx, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEplEl
	mov	QWORD PTR -40[rbp], rax
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L254
	call	__stack_chk_fail@PLT
.L254:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11540:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_RT2_, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZ4mainEUlRKS2_SB_E_EEEvT_T0_SF_T1_RT2_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EP4suctS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EP4suctS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb1EP4suctS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb1EP4suctS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a2ILb1EP4suctS1_ET1_T0_S3_S2_:
.LFB11541:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4suctS4_EET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11541:
	.size	_ZSt23__copy_move_backward_a2ILb1EP4suctS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb1EP4suctS1_ET1_T0_S3_S2_
	.text
	.align 2
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_:
.LFB11545:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rbx, QWORD PTR -24[rbp]
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4suctSt6vectorIS1_SaIS1_EEEdeEv
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZZ4mainENKUlRK4suctS1_E_clES1_S1_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11545:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRK4suctS4_E_EclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4suctS4_EET0_T_S6_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4suctS4_EET0_T_S6_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4suctS4_EET0_T_S6_S5_
	.type	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4suctS4_EET0_T_S6_S5_, @function
_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4suctS4_EET0_T_S6_S5_:
.LFB11546:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, 7905747460161236407
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	jmp	.L260
.L261:
	sub	QWORD PTR -32[rbp], 56
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIR4suctEONSt16remove_referenceIT_E4typeEOS3_
	mov	rdx, rax
	sub	QWORD PTR -40[rbp], 56
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN4suctaSEOS_
	sub	QWORD PTR -8[rbp], 1
.L260:
	cmp	QWORD PTR -8[rbp], 0
	jg	.L261
	mov	rax, QWORD PTR -40[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11546:
	.size	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4suctS4_EET0_T_S6_S5_, .-_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4suctS4_EET0_T_S6_S5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11596:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L265
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L265
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	call	_ZNSt8ios_base4InitC1Ev@PLT
	lea	rax, __dso_handle[rip]
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rax, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
.L265:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11596:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5setupv, @function
_GLOBAL__sub_I__Z5setupv:
.LFB11619:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	esi, 65535
	mov	edi, 1
	call	_Z41__static_initialization_and_destruction_0ii
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11619:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5setupv
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
