	.file	"Permutation.cpp"
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB3186:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	lea	r11, -16384[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3664
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -20044[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -20032[rbp]
	mov	edx, 20020
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -20036[rbp], 0
	jmp	.L2
.L4:
	lea	rax, -20040[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -20040[rbp]
	mov	eax, DWORD PTR -20044[rbp]
	cmp	edx, eax
	jg	.L3
	mov	eax, DWORD PTR -20040[rbp]
	cdqe
	mov	DWORD PTR -20032[rbp+rax*4], 1
.L3:
	add	DWORD PTR -20036[rbp], 1
.L2:
	mov	eax, DWORD PTR -20044[rbp]
	cmp	DWORD PTR -20036[rbp], eax
	jl	.L4
	mov	DWORD PTR -20040[rbp], 0
	mov	eax, DWORD PTR -20044[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	lea	rax, -20032[rbp]
	lea	rcx, [rax+rdx]
	lea	rax, -20032[rbp]
	add	rax, 4
	lea	rdx, -20040[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEl@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3186:
	.size	main, .-main
	.section	.text._ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_,"axG",@progbits,_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_,comdat
	.weak	_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_
	.type	_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_, @function
_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_:
.LFB3455:
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3455:
	.size	_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_, .-_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_
	.section	.text._ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_,"axG",@progbits,_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_,comdat
	.weak	_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_
	.type	_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_, @function
_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_:
.LFB3536:
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
	call	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC1ERS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3536:
	.size	_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_, .-_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_
	.section	.text._ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_,"axG",@progbits,_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_,comdat
	.weak	_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_
	.type	_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_, @function
_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_:
.LFB3537:
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
	mov	QWORD PTR -8[rbp], 0
	jmp	.L13
.L15:
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_
	test	al, al
	je	.L14
	add	QWORD PTR -8[rbp], 1
.L14:
	add	QWORD PTR -24[rbp], 4
.L13:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L15
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3537:
	.size	_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_, .-_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_
	.section	.text._ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_,"axG",@progbits,_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC5ERS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_
	.type	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_, @function
_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_:
.LFB3573:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3573:
	.size	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_, .-_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_
	.weak	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC1ERS2_
	.set	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC1ERS2_,_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_
	.section	.text._ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_,"axG",@progbits,_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_
	.type	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_, @function
_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_:
.LFB3575:
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
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	sete	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3575:
	.size	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_, .-_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3699:
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
	jne	.L22
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L22
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
.L22:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3699:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB3700:
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
.LFE3700:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
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
