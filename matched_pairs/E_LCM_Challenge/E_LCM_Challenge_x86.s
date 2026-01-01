	.file	"E_LCM_Challenge.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
	.globl	_Z3gcdii
	.type	_Z3gcdii, @function
_Z3gcdii:
.LFB9705:
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
	cmp	DWORD PTR -8[rbp], 0
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3gcdii
	nop
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9705:
	.size	_Z3gcdii, .-_Z3gcdii
	.globl	main
	.type	main, @function
main:
.LFB9706:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	call	_Z5setupv
	mov	QWORD PTR -40[rbp], 0
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L6
.L14:
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L7
.L13:
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L8
.L12:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_
	cmp	rax, 1
	jne	.L9
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_
	cmp	rax, 1
	jne	.L9
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_
	cmp	rax, 1
	jne	.L9
	mov	eax, 1
	jmp	.L10
.L9:
	mov	eax, 0
.L10:
	test	al, al
	je	.L11
	mov	rax, QWORD PTR -32[rbp]
	imul	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	imul	rax, rdx
	mov	QWORD PTR -40[rbp], rax
.L11:
	sub	QWORD PTR -16[rbp], 1
.L8:
	mov	rax, QWORD PTR -32[rbp]
	imul	rax, QWORD PTR -24[rbp]
	imul	rax, QWORD PTR -16[rbp]
	cmp	QWORD PTR -40[rbp], rax
	jl	.L12
	sub	QWORD PTR -24[rbp], 1
.L7:
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, rax
	imul	rax, QWORD PTR -32[rbp]
	cmp	QWORD PTR -40[rbp], rax
	jl	.L13
	sub	QWORD PTR -32[rbp], 1
.L6:
	mov	rax, QWORD PTR -32[rbp]
	imul	rax, rax
	imul	rax, QWORD PTR -32[rbp]
	cmp	QWORD PTR -40[rbp], rax
	jl	.L14
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9706:
	.size	main, .-main
	.section	.text._ZNSt8__detail7__abs_rIxxEET_T0_,"axG",@progbits,_ZNSt8__detail7__abs_rIxxEET_T0_,comdat
	.weak	_ZNSt8__detail7__abs_rIxxEET_T0_
	.type	_ZNSt8__detail7__abs_rIxxEET_T0_, @function
_ZNSt8__detail7__abs_rIxxEET_T0_:
.LFB10397:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	js	.L18
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L19
.L18:
	mov	rax, QWORD PTR -8[rbp]
	neg	rax
.L19:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10397:
	.size	_ZNSt8__detail7__abs_rIxxEET_T0_, .-_ZNSt8__detail7__abs_rIxxEET_T0_
	.section	.text._ZSt13__countr_zeroIyEiT_,"axG",@progbits,_ZSt13__countr_zeroIyEiT_,comdat
	.weak	_ZSt13__countr_zeroIyEiT_
	.type	_ZSt13__countr_zeroIyEiT_, @function
_ZSt13__countr_zeroIyEiT_:
.LFB10399:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -16[rbp], 64
	cmp	QWORD PTR -24[rbp], 0
	jne	.L21
	mov	eax, 64
	jmp	.L22
.L21:
	mov	DWORD PTR -12[rbp], 64
	mov	DWORD PTR -8[rbp], 64
	mov	DWORD PTR -4[rbp], 32
	xor	eax, eax
	rep bsf	rax, QWORD PTR -24[rbp]
	nop
.L22:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10399:
	.size	_ZSt13__countr_zeroIyEiT_, .-_ZSt13__countr_zeroIyEiT_
	.section	.text._ZNSt8__detail5__gcdIyEET_S1_S1_,"axG",@progbits,_ZNSt8__detail5__gcdIyEET_S1_S1_,comdat
	.weak	_ZNSt8__detail5__gcdIyEET_S1_S1_
	.type	_ZNSt8__detail5__gcdIyEET_S1_S1_, @function
_ZNSt8__detail5__gcdIyEET_S1_S1_:
.LFB10398:
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
	cmp	QWORD PTR -40[rbp], 0
	jne	.L24
	mov	rax, QWORD PTR -48[rbp]
	jmp	.L25
.L24:
	cmp	QWORD PTR -48[rbp], 0
	jne	.L26
	mov	rax, QWORD PTR -40[rbp]
	jmp	.L25
.L26:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt13__countr_zeroIyEiT_
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	ecx, eax
	shr	QWORD PTR -40[rbp], cl
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZSt13__countr_zeroIyEiT_
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	ecx, eax
	shr	QWORD PTR -48[rbp], cl
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jge	.L27
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L28
.L27:
	mov	eax, DWORD PTR -16[rbp]
.L28:
	mov	DWORD PTR -12[rbp], eax
.L31:
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jbe	.L29
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -48[rbp], rax
.L29:
	mov	rax, QWORD PTR -40[rbp]
	sub	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	jne	.L30
	mov	eax, DWORD PTR -12[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	jmp	.L25
.L30:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZSt13__countr_zeroIyEiT_
	mov	ecx, eax
	shr	QWORD PTR -48[rbp], cl
	jmp	.L31
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10398:
	.size	_ZNSt8__detail5__gcdIyEET_S1_S1_, .-_ZNSt8__detail5__gcdIyEET_S1_S1_
	.section	.text._ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_,"axG",@progbits,_ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_,comdat
	.weak	_ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_
	.type	_ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_, @function
_ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_:
.LFB10396:
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
	mov	rdi, rax
	call	_ZNSt8__detail7__abs_rIxxEET_T0_
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNSt8__detail7__abs_rIxxEET_T0_
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8__detail5__gcdIyEET_S1_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10396:
	.size	_ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_, .-_ZSt3gcdIxxENSt11common_typeIJT_T0_EE4typeES1_S2_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11462:
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
	jne	.L36
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L36
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
.L36:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11462:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5setupv, @function
_GLOBAL__sub_I__Z5setupv:
.LFB11485:
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
.LFE11485:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5setupv
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
