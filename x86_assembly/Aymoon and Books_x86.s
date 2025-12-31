	.file	"Aymoon and Books.cpp"
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
	jnb	.L4
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L5
.L4:
	mov	rax, QWORD PTR -8[rbp]
.L5:
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
	.section	.text._ZSt16__deque_buf_sizem,"axG",@progbits,_ZSt16__deque_buf_sizem,comdat
	.weak	_ZSt16__deque_buf_sizem
	.type	_ZSt16__deque_buf_sizem, @function
_ZSt16__deque_buf_sizem:
.LFB4252:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 511
	ja	.L7
	mov	eax, 512
	mov	edx, 0
	div	QWORD PTR -8[rbp]
	jmp	.L9
.L7:
	mov	eax, 1
.L9:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4252:
	.size	_ZSt16__deque_buf_sizem, .-_ZSt16__deque_buf_sizem
	.section	.text._ZNSt15_Rb_tree_headerC2Ev,"axG",@progbits,_ZNSt15_Rb_tree_headerC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Rb_tree_headerC2Ev
	.type	_ZNSt15_Rb_tree_headerC2Ev, @function
_ZNSt15_Rb_tree_headerC2Ev:
.LFB5009:
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
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt15_Rb_tree_header8_M_resetEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5009:
	.size	_ZNSt15_Rb_tree_headerC2Ev, .-_ZNSt15_Rb_tree_headerC2Ev
	.weak	_ZNSt15_Rb_tree_headerC1Ev
	.set	_ZNSt15_Rb_tree_headerC1Ev,_ZNSt15_Rb_tree_headerC2Ev
	.section	.text._ZNSt15_Rb_tree_header8_M_resetEv,"axG",@progbits,_ZNSt15_Rb_tree_header8_M_resetEv,comdat
	.align 2
	.weak	_ZNSt15_Rb_tree_header8_M_resetEv
	.type	_ZNSt15_Rb_tree_header8_M_resetEv, @function
_ZNSt15_Rb_tree_header8_M_resetEv:
.LFB5015:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 32[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5015:
	.size	_ZNSt15_Rb_tree_header8_M_resetEv, .-_ZNSt15_Rb_tree_header8_M_resetEv
	.section	.rodata
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
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev:
.LFB9711:
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
	call	_ZNSaISt13_Rb_tree_nodeIxEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9711:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED1Ev
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED1Ev,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev:
.LFB9713:
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
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9713:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC1Ev
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC1Ev,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev
	.section	.text._ZNSt3setIxSt4lessIxESaIxEEC2Ev,"axG",@progbits,_ZNSt3setIxSt4lessIxESaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt3setIxSt4lessIxESaIxEEC2Ev
	.type	_ZNSt3setIxSt4lessIxESaIxEEC2Ev, @function
_ZNSt3setIxSt4lessIxESaIxEEC2Ev:
.LFB9715:
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
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9715:
	.size	_ZNSt3setIxSt4lessIxESaIxEEC2Ev, .-_ZNSt3setIxSt4lessIxESaIxEEC2Ev
	.weak	_ZNSt3setIxSt4lessIxESaIxEEC1Ev
	.set	_ZNSt3setIxSt4lessIxESaIxEEC1Ev,_ZNSt3setIxSt4lessIxESaIxEEC2Ev
	.section	.text._ZNSt3setIxSt4lessIxESaIxEED2Ev,"axG",@progbits,_ZNSt3setIxSt4lessIxESaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt3setIxSt4lessIxESaIxEED2Ev
	.type	_ZNSt3setIxSt4lessIxESaIxEED2Ev, @function
_ZNSt3setIxSt4lessIxESaIxEED2Ev:
.LFB9718:
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
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9718:
	.size	_ZNSt3setIxSt4lessIxESaIxEED2Ev, .-_ZNSt3setIxSt4lessIxESaIxEED2Ev
	.weak	_ZNSt3setIxSt4lessIxESaIxEED1Ev
	.set	_ZNSt3setIxSt4lessIxESaIxEED1Ev,_ZNSt3setIxSt4lessIxESaIxEED2Ev
	.section	.rodata
.LC0:
	.string	"\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9704:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9704
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 184
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -184[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB0:
	call	_ZNSirsERi@PLT
.LEHE0:
	lea	rax, -160[rbp]
	mov	rdi, rax
	call	_ZNSaIxEC1Ev
	mov	eax, DWORD PTR -184[rbp]
	movsx	rcx, eax
	lea	rdx, -160[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB1:
	call	_ZNSt5dequeIxSaIxEEC1EmRKS0_
.LEHE1:
	lea	rax, -160[rbp]
	mov	rdi, rax
	call	_ZNSaIxED1Ev
	lea	rax, -160[rbp]
	mov	rdi, rax
	call	_ZNSt3setIxSt4lessIxESaIxEEC1Ev
	mov	DWORD PTR -180[rbp], 0
	jmp	.L17
.L18:
	mov	eax, DWORD PTR -180[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB2:
	call	_ZNSirsERx@PLT
	add	DWORD PTR -180[rbp], 1
.L17:
	mov	eax, DWORD PTR -184[rbp]
	cmp	DWORD PTR -180[rbp], eax
	jl	.L18
	lea	rax, -176[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	jmp	.L19
.L24:
	lea	rax, -185[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	movzx	eax, BYTE PTR -185[rbp]
	cmp	al, 76
	jne	.L20
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNKSt5dequeIxSaIxEE5emptyEv
	xor	eax, 1
	test	al, al
	je	.L19
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE5frontEv
	mov	rdx, rax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE9pop_frontEv
	jmp	.L19
.L20:
	movzx	eax, BYTE PTR -185[rbp]
	cmp	al, 82
	jne	.L22
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNKSt5dequeIxSaIxEE5emptyEv
	xor	eax, 1
	test	al, al
	je	.L19
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE4backEv
	mov	rdx, rax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE8pop_backEv
	jmp	.L19
.L22:
	movzx	eax, BYTE PTR -185[rbp]
	cmp	al, 81
	jne	.L19
	lea	rax, -160[rbp]
	mov	rdi, rax
	call	_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv
	test	al, al
	je	.L23
	mov	esi, -1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L19
.L23:
	lea	rax, -168[rbp]
	lea	rdx, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv
	lea	rax, -168[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv
	mov	rax, QWORD PTR [rax]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	lea	rax, -160[rbp]
	mov	rdi, rax
	call	_ZNKSt3setIxSt4lessIxESaIxEE3endEv
	mov	QWORD PTR -168[rbp], rax
	lea	rax, -168[rbp]
	mov	rdi, rax
	call	_ZNSt23_Rb_tree_const_iteratorIxEmmEv
	mov	rdx, rax
	lea	rax, -160[rbp]
	mov	rsi, QWORD PTR [rdx]
	mov	rdi, rax
	call	_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
.LEHE2:
.L19:
	mov	rax, QWORD PTR -176[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -176[rbp], rdx
	test	rax, rax
	setne	al
	test	al, al
	jne	.L24
	mov	ebx, 0
	lea	rax, -160[rbp]
	mov	rdi, rax
	call	_ZNSt3setIxSt4lessIxESaIxEED1Ev
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEED1Ev
	mov	eax, ebx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L28
	jmp	.L31
.L29:
	endbr64
	mov	rbx, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	call	_ZNSaIxED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB3:
	call	_Unwind_Resume@PLT
.L30:
	endbr64
	mov	rbx, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	call	_ZNSt3setIxSt4lessIxESaIxEED1Ev
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEED1Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE3:
.L31:
	call	__stack_chk_fail@PLT
.L28:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9704:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9704-.LLSDACSB9704
.LLSDACSB9704:
	.uleb128 .LEHB0-.LFB9704
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9704
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L29-.LFB9704
	.uleb128 0
	.uleb128 .LEHB2-.LFB9704
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L30-.LFB9704
	.uleb128 0
	.uleb128 .LEHB3-.LFB9704
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE9704:
	.text
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB10032:
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L33
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L34
.L33:
	mov	rax, QWORD PTR -8[rbp]
.L34:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10032:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC5Ev,comdat
	.align 2
	.weak	_ZNSaIxEC2Ev
	.type	_ZNSaIxEC2Ev, @function
_ZNSaIxEC2Ev:
.LFB10409:
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
	call	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10409:
	.size	_ZNSaIxEC2Ev, .-_ZNSaIxEC2Ev
	.weak	_ZNSaIxEC1Ev
	.set	_ZNSaIxEC1Ev,_ZNSaIxEC2Ev
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED5Ev,comdat
	.align 2
	.weak	_ZNSaIxED2Ev
	.type	_ZNSaIxED2Ev, @function
_ZNSaIxED2Ev:
.LFB10412:
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
	call	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10412:
	.size	_ZNSaIxED2Ev, .-_ZNSaIxED2Ev
	.weak	_ZNSaIxED1Ev
	.set	_ZNSaIxED1Ev,_ZNSaIxED2Ev
	.section	.text._ZNSt5dequeIxSaIxEEC2EmRKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEEC2EmRKS0_
	.type	_ZNSt5dequeIxSaIxEEC2EmRKS0_, @function
_ZNSt5dequeIxSaIxEEC2EmRKS0_:
.LFB10415:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10415
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
	call	_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m
.LEHE4:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
.LEHB5:
	call	_ZNSt5dequeIxSaIxEE21_M_default_initializeEv
.LEHE5:
	jmp	.L40
.L39:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L40:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10415:
	.section	.gcc_except_table
.LLSDA10415:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10415-.LLSDACSB10415
.LLSDACSB10415:
	.uleb128 .LEHB4-.LFB10415
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB10415
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L39-.LFB10415
	.uleb128 0
	.uleb128 .LEHB6-.LFB10415
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE10415:
	.section	.text._ZNSt5dequeIxSaIxEEC2EmRKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEEC5EmRKS0_,comdat
	.size	_ZNSt5dequeIxSaIxEEC2EmRKS0_, .-_ZNSt5dequeIxSaIxEEC2EmRKS0_
	.weak	_ZNSt5dequeIxSaIxEEC1EmRKS0_
	.set	_ZNSt5dequeIxSaIxEEC1EmRKS0_,_ZNSt5dequeIxSaIxEEC2EmRKS0_
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEED2Ev
	.type	_ZNSt5dequeIxSaIxEED2Ev, @function
_ZNSt5dequeIxSaIxEED2Ev:
.LFB10418:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10418
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
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE3endEv
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE5beginEv
	lea	rdx, -64[rbp]
	lea	rsi, -96[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEED2Ev
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10418:
	.section	.gcc_except_table
.LLSDA10418:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10418-.LLSDACSB10418
.LLSDACSB10418:
.LLSDACSE10418:
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.size	_ZNSt5dequeIxSaIxEED2Ev, .-_ZNSt5dequeIxSaIxEED2Ev
	.weak	_ZNSt5dequeIxSaIxEED1Ev
	.set	_ZNSt5dequeIxSaIxEED1Ev,_ZNSt5dequeIxSaIxEED2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev:
.LFB10421:
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
	call	_ZNSaISt13_Rb_tree_nodeIxEEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
	mov	rdi, rax
	call	_ZNSt15_Rb_tree_headerC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10421:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC1Ev
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC1Ev,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev
	.section	.text._ZNSaISt13_Rb_tree_nodeIxEED2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeIxEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt13_Rb_tree_nodeIxEED2Ev
	.type	_ZNSaISt13_Rb_tree_nodeIxEED2Ev, @function
_ZNSaISt13_Rb_tree_nodeIxEED2Ev:
.LFB10424:
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
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10424:
	.size	_ZNSaISt13_Rb_tree_nodeIxEED2Ev, .-_ZNSaISt13_Rb_tree_nodeIxEED2Ev
	.weak	_ZNSaISt13_Rb_tree_nodeIxEED1Ev
	.set	_ZNSaISt13_Rb_tree_nodeIxEED1Ev,_ZNSaISt13_Rb_tree_nodeIxEED2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev:
.LFB10427:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10427
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
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10427:
	.section	.gcc_except_table
.LLSDA10427:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10427-.LLSDACSB10427
.LLSDACSB10427:
.LLSDACSE10427:
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED5Ev,comdat
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED1Ev
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED1Ev,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEEixEm,"axG",@progbits,_ZNSt5dequeIxSaIxEEixEm,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEEixEm
	.type	_ZNSt5dequeIxSaIxEEixEm, @function
_ZNSt5dequeIxSaIxEEixEm:
.LFB10429:
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
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNKSt15_Deque_iteratorIxRxPxEixEl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10429:
	.size	_ZNSt5dequeIxSaIxEEixEm, .-_ZNSt5dequeIxSaIxEEixEm
	.section	.text._ZNKSt5dequeIxSaIxEE5emptyEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIxSaIxEE5emptyEv
	.type	_ZNKSt5dequeIxSaIxEE5emptyEv, @function
_ZNKSt5dequeIxSaIxEE5emptyEv:
.LFB10431:
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
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 48
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10431:
	.size	_ZNKSt5dequeIxSaIxEE5emptyEv, .-_ZNKSt5dequeIxSaIxEE5emptyEv
	.section	.text._ZNSt5dequeIxSaIxEE5frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE5frontEv
	.type	_ZNSt5dequeIxSaIxEE5frontEv, @function
_ZNSt5dequeIxSaIxEE5frontEv:
.LFB10432:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE5beginEv
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L52
	call	__stack_chk_fail@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10432:
	.size	_ZNSt5dequeIxSaIxEE5frontEv, .-_ZNSt5dequeIxSaIxEE5frontEv
	.section	.text._ZNSt3setIxSt4lessIxESaIxEE6insertERKx,"axG",@progbits,_ZNSt3setIxSt4lessIxESaIxEE6insertERKx,comdat
	.align 2
	.weak	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx
	.type	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx, @function
_ZNSt3setIxSt4lessIxESaIxEE6insertERKx:
.LFB10433:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	lea	rax, -48[rbp]
	lea	rdx, 8[rax]
	lea	rcx, -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC1IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	sub	rcx, QWORD PTR fs:40
	je	.L55
	call	__stack_chk_fail@PLT
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10433:
	.size	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx, .-_ZNSt3setIxSt4lessIxESaIxEE6insertERKx
	.section	.text._ZNSt5dequeIxSaIxEE9pop_frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE9pop_frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE9pop_frontEv
	.type	_ZNSt5dequeIxSaIxEE9pop_frontEv, @function
_ZNSt5dequeIxSaIxEE9pop_frontEv:
.LFB10443:
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 32[rax]
	sub	rax, 8
	cmp	rdx, rax
	je	.L57
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L59
.L57:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
.L59:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10443:
	.size	_ZNSt5dequeIxSaIxEE9pop_frontEv, .-_ZNSt5dequeIxSaIxEE9pop_frontEv
	.section	.text._ZNSt5dequeIxSaIxEE4backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE4backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE4backEv
	.type	_ZNSt5dequeIxSaIxEE4backEv, @function
_ZNSt5dequeIxSaIxEE4backEv:
.LFB10445:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE3endEv
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L62
	call	__stack_chk_fail@PLT
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10445:
	.size	_ZNSt5dequeIxSaIxEE4backEv, .-_ZNSt5dequeIxSaIxEE4backEv
	.section	.text._ZNSt5dequeIxSaIxEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE8pop_backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE8pop_backEv
	.type	_ZNSt5dequeIxSaIxEE8pop_backEv, @function
_ZNSt5dequeIxSaIxEE8pop_backEv:
.LFB10446:
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 56[rax]
	cmp	rdx, rax
	je	.L64
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 48[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	jmp	.L66
.L64:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
.L66:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10446:
	.size	_ZNSt5dequeIxSaIxEE8pop_backEv, .-_ZNSt5dequeIxSaIxEE8pop_backEv
	.section	.text._ZNKSt3setIxSt4lessIxESaIxEE5emptyEv,"axG",@progbits,_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv
	.type	_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv, @function
_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv:
.LFB10447:
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
	call	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10447:
	.size	_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv, .-_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv
	.section	.text._ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv,"axG",@progbits,_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv,comdat
	.align 2
	.weak	_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv
	.type	_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv, @function
_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv:
.LFB10449:
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L71
	call	__stack_chk_fail@PLT
.L71:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10449:
	.size	_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv, .-_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv
	.section	.text._ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv,"axG",@progbits,_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv,comdat
	.align 2
	.weak	_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv
	.type	_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv, @function
_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv:
.LFB10450:
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
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZNSt23_Rb_tree_const_iteratorIxEmmEv
	mov	rdi, rax
	call	_ZNKSt23_Rb_tree_const_iteratorIxEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L74
	call	__stack_chk_fail@PLT
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10450:
	.size	_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv, .-_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv
	.section	.text._ZNKSt3setIxSt4lessIxESaIxEE3endEv,"axG",@progbits,_ZNKSt3setIxSt4lessIxESaIxEE3endEv,comdat
	.align 2
	.weak	_ZNKSt3setIxSt4lessIxESaIxEE3endEv
	.type	_ZNKSt3setIxSt4lessIxESaIxEE3endEv, @function
_ZNKSt3setIxSt4lessIxESaIxEE3endEv:
.LFB10452:
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
	call	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10452:
	.size	_ZNKSt3setIxSt4lessIxESaIxEE3endEv, .-_ZNKSt3setIxSt4lessIxESaIxEE3endEv
	.section	.text._ZNSt23_Rb_tree_const_iteratorIxEmmEv,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorIxEmmEv,comdat
	.align 2
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEmmEv
	.type	_ZNSt23_Rb_tree_const_iteratorIxEmmEv, @function
_ZNSt23_Rb_tree_const_iteratorIxEmmEv:
.LFB10453:
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
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base@PLT
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10453:
	.size	_ZNSt23_Rb_tree_const_iteratorIxEmmEv, .-_ZNSt23_Rb_tree_const_iteratorIxEmmEv
	.section	.text._ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE,"axG",@progbits,_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE,comdat
	.align 2
	.weak	_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	.type	_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE, @function
_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE:
.LFB10454:
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
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt23_Rb_tree_const_iteratorIxEC1ERKSt17_Rb_tree_iteratorIxE
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10454:
	.size	_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE, .-_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	.section	.text._ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB10578:
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
.LFE10578:
	.size	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:
.LFB10847:
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
.LFE10847:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1Ev,_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:
.LFB10850:
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
.LFE10850:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxED1Ev,_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.section	.rodata
	.align 8
.LC1:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_, @function
_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_:
.LFB10852:
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
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	cmp	QWORD PTR -8[rbp], rax
	seta	al
	test	al, al
	je	.L87
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L87:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10852:
	.size	_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_, .-_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev:
.LFB10855:
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
	call	_ZNSaIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10855:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5ERKS0_m,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m
	.type	_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m, @function
_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m:
.LFB10857:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10857
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
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1ERKS0_
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB7:
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
.LEHE7:
	jmp	.L93
.L92:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L93:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10857:
	.section	.gcc_except_table
.LLSDA10857:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10857-.LLSDACSB10857
.LLSDACSB10857:
	.uleb128 .LEHB7-.LFB10857
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L92-.LFB10857
	.uleb128 0
	.uleb128 .LEHB8-.LFB10857
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10857:
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5ERKS0_m,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m, .-_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m
	.weak	_ZNSt11_Deque_baseIxSaIxEEC1ERKS0_m
	.set	_ZNSt11_Deque_baseIxSaIxEEC1ERKS0_m,_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m
	.section	.text._ZNSt11_Deque_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEED2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEED2Ev, @function
_ZNSt11_Deque_baseIxSaIxEED2Ev:
.LFB10860:
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
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L95
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 40[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
.L95:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10860:
	.size	_ZNSt11_Deque_baseIxSaIxEED2Ev, .-_ZNSt11_Deque_baseIxSaIxEED2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEED1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEED1Ev,_ZNSt11_Deque_baseIxSaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEE21_M_default_initializeEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE21_M_default_initializeEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE21_M_default_initializeEv
	.type	_ZNSt5dequeIxSaIxEE21_M_default_initializeEv, @function
_ZNSt5dequeIxSaIxEE21_M_default_initializeEv:
.LFB10862:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10862
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 112
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -120[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	QWORD PTR -104[rbp], rax
	jmp	.L97
.L98:
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	r12, QWORD PTR [rax]
	call	_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv
	sal	rax, 3
	lea	rcx, [r12+rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
.LEHB9:
	call	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E
	add	QWORD PTR -104[rbp], 8
.L97:
	mov	rax, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR 72[rax]
	cmp	QWORD PTR -104[rbp], rax
	jb	.L98
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -120[rbp]
	mov	rcx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR 56[rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E
.LEHE9:
	jmp	.L104
.L102:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ES1_PS1_
	mov	rax, QWORD PTR -120[rbp]
	lea	rdx, 16[rax]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rcx, -96[rbp]
	lea	rax, -64[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
.LEHB10:
	call	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E
	call	__cxa_rethrow@PLT
.LEHE10:
.L103:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L104:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L101
	call	__stack_chk_fail@PLT
.L101:
	add	rsp, 112
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10862:
	.section	.gcc_except_table
	.align 4
.LLSDA10862:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10862-.LLSDATTD10862
.LLSDATTD10862:
	.byte	0x1
	.uleb128 .LLSDACSE10862-.LLSDACSB10862
.LLSDACSB10862:
	.uleb128 .LEHB9-.LFB10862
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L102-.LFB10862
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB10862
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L103-.LFB10862
	.uleb128 0
	.uleb128 .LEHB11-.LFB10862
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE10862:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10862:
	.section	.text._ZNSt5dequeIxSaIxEE21_M_default_initializeEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE21_M_default_initializeEv,comdat
	.size	_ZNSt5dequeIxSaIxEE21_M_default_initializeEv, .-_ZNSt5dequeIxSaIxEE21_M_default_initializeEv
	.section	.text._ZNSt5dequeIxSaIxEE5beginEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5beginEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE5beginEv
	.type	_ZNSt5dequeIxSaIxEE5beginEv, @function
_ZNSt5dequeIxSaIxEE5beginEv:
.LFB10863:
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
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10863:
	.size	_ZNSt5dequeIxSaIxEE5beginEv, .-_ZNSt5dequeIxSaIxEE5beginEv
	.section	.text._ZNSt5dequeIxSaIxEE3endEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE3endEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE3endEv
	.type	_ZNSt5dequeIxSaIxEE3endEv, @function
_ZNSt5dequeIxSaIxEE3endEv:
.LFB10864:
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
	lea	rdx, 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10864:
	.size	_ZNSt5dequeIxSaIxEE3endEv, .-_ZNSt5dequeIxSaIxEE3endEv
	.section	.text._ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB10865:
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
.LFE10865:
	.size	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.type	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, @function
_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_:
.LFB10866:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L112
	call	__stack_chk_fail@PLT
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10866:
	.size	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, .-_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.section	.text._ZNSaISt13_Rb_tree_nodeIxEEC2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt13_Rb_tree_nodeIxEEC2Ev
	.type	_ZNSaISt13_Rb_tree_nodeIxEEC2Ev, @function
_ZNSaISt13_Rb_tree_nodeIxEEC2Ev:
.LFB10868:
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
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10868:
	.size	_ZNSaISt13_Rb_tree_nodeIxEEC2Ev, .-_ZNSaISt13_Rb_tree_nodeIxEEC2Ev
	.weak	_ZNSaISt13_Rb_tree_nodeIxEEC1Ev
	.set	_ZNSaISt13_Rb_tree_nodeIxEEC1Ev,_ZNSaISt13_Rb_tree_nodeIxEEC2Ev
	.section	.text._ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev,"axG",@progbits,_ZNSt20_Rb_tree_key_compareISt4lessIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev
	.type	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev, @function
_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev:
.LFB10871:
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
.LFE10871:
	.size	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev, .-_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC1Ev
	.set	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC1Ev,_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev:
.LFB10874:
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
.LFE10874:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED1Ev,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE:
.LFB10876:
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
	jmp	.L117
.L118:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
.L117:
	cmp	QWORD PTR -32[rbp], 0
	jne	.L118
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10876:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv:
.LFB10877:
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
	call	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10877:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv
	.section	.text._ZNKSt15_Deque_iteratorIxRxPxEixEl,"axG",@progbits,_ZNKSt15_Deque_iteratorIxRxPxEixEl,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorIxRxPxEixEl
	.type	_ZNKSt15_Deque_iteratorIxRxPxEixEl, @function
_ZNKSt15_Deque_iteratorIxRxPxEixEl:
.LFB10878:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10878:
	.size	_ZNKSt15_Deque_iteratorIxRxPxEixEl, .-_ZNKSt15_Deque_iteratorIxRxPxEixEl
	.section	.text._ZSteqRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.weak	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, @function
_ZSteqRKSt15_Deque_iteratorIxRxPxES4_:
.LFB10879:
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	sete	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10879:
	.size	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, .-_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZNKSt15_Deque_iteratorIxRxPxEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIxRxPxEdeEv,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.type	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, @function
_ZNKSt15_Deque_iteratorIxRxPxEdeEv:
.LFB10880:
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
.LFE10880:
	.size	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, .-_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_:
.LFB10881:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 96
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt9_IdentityIxEclERKx
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	test	rax, rax
	je	.L129
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC1ERS5_
	mov	BYTE PTR -65[rbp], 1
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR -48[rbp]
	lea	rdi, -64[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	r8, rdi
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_
	mov	QWORD PTR -56[rbp], rax
	lea	rdx, -65[rbp]
	lea	rcx, -56[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC1IS1_bLb1EEEOT_OT0_
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	jmp	.L131
.L129:
	mov	BYTE PTR -64[rbp], 0
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	lea	rdx, -64[rbp]
	lea	rcx, -56[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC1IS1_bLb1EEEOT_OT0_
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
.L131:
	mov	rcx, QWORD PTR -8[rbp]
	sub	rcx, QWORD PTR fs:40
	je	.L132
	call	__stack_chk_fail@PLT
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10881:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_
	.section	.text._ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC5IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	.type	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_, @function
_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_:
.LFB10891:
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
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSt23_Rb_tree_const_iteratorIxEC1ERKSt17_Rb_tree_iteratorIxE
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR 8[rax], dl
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10891:
	.size	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_, .-_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	.weak	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC1IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	.set	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC1IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_,_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	.section	.text._ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, @function
_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_:
.LFB10893:
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
	call	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10893:
	.size	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.section	.text._ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.type	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv, @function
_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv:
.LFB10894:
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 24[rdx]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 16
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 40[rdx]
	add	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10894:
	.size	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv, .-_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEmmEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.type	_ZNSt15_Deque_iteratorIxRxPxEmmEv, @function
_ZNSt15_Deque_iteratorIxRxPxEmmEv:
.LFB10895:
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	rdx, rax
	jne	.L137
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
.L137:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10895:
	.size	_ZNSt15_Deque_iteratorIxRxPxEmmEv, .-_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.section	.text._ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.type	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, @function
_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv:
.LFB10896:
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 56[rdx]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	sub	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 64[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10896:
	.size	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, .-_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv, @function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv:
.LFB10897:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 40[rax]
	test	rax, rax
	sete	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10897:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv, @function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv:
.LFB10899:
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
	mov	rdi, rax
	call	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC1ES1_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10899:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv
	.section	.text._ZNKSt23_Rb_tree_const_iteratorIxEdeEv,"axG",@progbits,_ZNKSt23_Rb_tree_const_iteratorIxEdeEv,comdat
	.align 2
	.weak	_ZNKSt23_Rb_tree_const_iteratorIxEdeEv
	.type	_ZNKSt23_Rb_tree_const_iteratorIxEdeEv, @function
_ZNKSt23_Rb_tree_const_iteratorIxEdeEv:
.LFB10900:
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
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10900:
	.size	_ZNKSt23_Rb_tree_const_iteratorIxEdeEv, .-_ZNKSt23_Rb_tree_const_iteratorIxEdeEv
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv, @function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv:
.LFB10901:
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
	call	_ZNSt23_Rb_tree_const_iteratorIxEC1EPKSt18_Rb_tree_node_base
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L148
	call	__stack_chk_fail@PLT
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10901:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE:
.LFB10902:
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	eax, 0
	test	al, al
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZNSt23_Rb_tree_const_iteratorIxEppEv
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L152
	call	__stack_chk_fail@PLT
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10902:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	.section	.text._ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorIxEC5ERKSt17_Rb_tree_iteratorIxE,comdat
	.align 2
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE
	.type	_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE, @function
_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE:
.LFB10904:
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
.LFE10904:
	.size	_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE, .-_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEC1ERKSt17_Rb_tree_iteratorIxE
	.set	_ZNSt23_Rb_tree_const_iteratorIxEC1ERKSt17_Rb_tree_iteratorIxE,_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE
	.section	.text._ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.type	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, @function
_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_:
.LFB11102:
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
	movabs	rax, 9223372036854775807
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L156
	call	__stack_chk_fail@PLT
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11102:
	.size	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, .-_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_, @function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_:
.LFB11104:
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
	call	_ZNSaIxEC2ERKS_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11104:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1ERKS0_
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1ERKS0_,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm:
.LFB11106:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11106
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 72
	.cfi_offset 3, -24
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	mov	rbx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, 0
	div	rbx
	add	rax, 1
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 2
	mov	QWORD PTR -56[rbp], rax
	mov	QWORD PTR -64[rbp], 8
	lea	rdx, -56[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxImERKT_S2_S2_
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB12:
	call	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
.LEHE12:
	mov	rdx, QWORD PTR -72[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -48[rbp]
	shr	rax
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB13:
	call	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
.LEHE13:
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -32[rbp]
	sub	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rbx, QWORD PTR 56[rax]
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	mov	rcx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, 0
	div	rcx
	mov	rcx, rdx
	mov	rax, rcx
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 48[rax], rdx
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L161
	jmp	.L164
.L162:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 8[rax], 0
.LEHB14:
	call	__cxa_rethrow@PLT
.LEHE14:
.L163:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L164:
	call	__stack_chk_fail@PLT
.L161:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11106:
	.section	.gcc_except_table
	.align 4
.LLSDA11106:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11106-.LLSDATTD11106
.LLSDATTD11106:
	.byte	0x1
	.uleb128 .LLSDACSE11106-.LLSDACSB11106
.LLSDACSB11106:
	.uleb128 .LEHB12-.LFB11106
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB11106
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L162-.LFB11106
	.uleb128 0x1
	.uleb128 .LEHB14-.LFB11106
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L163-.LFB11106
	.uleb128 0
	.uleb128 .LEHB15-.LFB11106
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE11106:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11106:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, @function
_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_:
.LFB11107:
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
	mov	QWORD PTR -8[rbp], rax
	jmp	.L166
.L167:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	add	QWORD PTR -8[rbp], 8
.L166:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jb	.L167
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11107:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, @function
_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm:
.LFB11108:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11108
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
	lea	rax, -9[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	lea	rax, -9[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	lea	rax, -9[rbp]
	mov	rdi, rax
	call	_ZNSaIPxED1Ev
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L169
	call	__stack_chk_fail@PLT
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11108:
	.section	.gcc_except_table
.LLSDA11108:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11108-.LLSDACSB11108
.LLSDACSB11108:
.LLSDACSE11108:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.section	.text._ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv,comdat
	.weak	_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv
	.type	_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv, @function
_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv:
.LFB11109:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11109:
	.size	_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv, .-_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv
	.section	.text._ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E
	.type	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E, @function
_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E:
.LFB11110:
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
	call	_ZSt23__uninitialized_defaultIPxEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11110:
	.size	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E, .-_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5ES1_PS1_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_, @function
_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_:
.LFB11112:
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR [rax]
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 24[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11112:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_, .-_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1ES1_PS1_
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1ES1_PS1_,_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, @function
_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_:
.LFB11115:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11115:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, .-_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_,_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.section	.text._ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E
	.type	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E, @function
_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E:
.LFB11117:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -104[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L176
	call	__stack_chk_fail@PLT
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11117:
	.size	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E, .-_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev:
.LFB11120:
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
.LFE11120:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base:
.LFB11122:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11122:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base:
.LFB11123:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11123:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE:
.LFB11124:
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
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11124:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv, @function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv:
.LFB11125:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11125:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv
	.section	.text._ZStplRKSt15_Deque_iteratorIxRxPxEl,"axG",@progbits,_ZStplRKSt15_Deque_iteratorIxRxPxEl,comdat
	.weak	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	.type	_ZStplRKSt15_Deque_iteratorIxRxPxEl, @function
_ZStplRKSt15_Deque_iteratorIxRxPxEl:
.LFB11126:
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
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEpLEl
	nop
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11126:
	.size	_ZStplRKSt15_Deque_iteratorIxRxPxEl, .-_ZStplRKSt15_Deque_iteratorIxRxPxEl
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx:
.LFB11127:
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
	mov	QWORD PTR -112[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv
	mov	QWORD PTR -80[rbp], rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv
	mov	QWORD PTR -72[rbp], rax
	mov	BYTE PTR -81[rbp], 1
	jmp	.L188
.L191:
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -72[rbp], rax
	mov	rbx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE
	mov	rdx, rax
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNKSt4lessIxEclERKxS2_
	mov	BYTE PTR -81[rbp], al
	cmp	BYTE PTR -81[rbp], 0
	je	.L189
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base
	jmp	.L190
.L189:
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base
.L190:
	mov	QWORD PTR -80[rbp], rax
.L188:
	mov	rax, QWORD PTR -80[rbp]
	test	rax, rax
	jne	.L191
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	cmp	BYTE PTR -81[rbp], 0
	je	.L192
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv
	mov	QWORD PTR -48[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSteqRKSt17_Rb_tree_iteratorIxES2_
	test	al, al
	je	.L193
	lea	rdx, -72[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	jmp	.L196
.L193:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt17_Rb_tree_iteratorIxEmmEv
.L192:
	mov	rbx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base
	mov	rcx, rax
	mov	rax, QWORD PTR -112[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNKSt4lessIxEclERKxS2_
	test	al, al
	je	.L195
	lea	rdx, -72[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	jmp	.L196
.L195:
	mov	QWORD PTR -56[rbp], 0
	lea	rdx, -56[rbp]
	lea	rcx, -64[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
.L196:
	mov	rcx, QWORD PTR -24[rbp]
	sub	rcx, QWORD PTR fs:40
	je	.L197
	call	__stack_chk_fail@PLT
.L197:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11127:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx
	.section	.text._ZNKSt9_IdentityIxEclERKx,"axG",@progbits,_ZNKSt9_IdentityIxEclERKx,comdat
	.align 2
	.weak	_ZNKSt9_IdentityIxEclERKx
	.type	_ZNKSt9_IdentityIxEclERKx, @function
_ZNKSt9_IdentityIxEclERKx:
.LFB11142:
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
.LFE11142:
	.size	_ZNKSt9_IdentityIxEclERKx, .-_ZNKSt9_IdentityIxEclERKx
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC5ERS5_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_:
.LFB11144:
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
.LFE11144:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC1ERS5_
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC1ERS5_,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_
	.section	.text._ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11146:
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
.LFE11146:
	.size	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_:
.LFB11147:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 80
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	cmp	QWORD PTR -64[rbp], 0
	jne	.L204
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv
	cmp	QWORD PTR -72[rbp], rax
	je	.L204
	mov	rbx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r12, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt9_IdentityIxEclERKx
	mov	rdx, r12
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNKSt4lessIxEclERKxS2_
	test	al, al
	je	.L205
.L204:
	mov	eax, 1
	jmp	.L206
.L205:
	mov	eax, 0
.L206:
	mov	BYTE PTR -41[rbp], al
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	lea	rcx, 8[rax]
	movzx	eax, BYTE PTR -41[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	edi, eax
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@PLT
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 40[rax]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 40[rax], rdx
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L208
	call	__stack_chk_fail@PLT
.L208:
	add	rsp, 80
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11147:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_
	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC5IS1_bLb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_, @function
_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_:
.LFB11149:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 8[rax], dl
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11149:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_, .-_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC1IS1_bLb1EEEOT_OT0_
	.set	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC1IS1_bLb1EEEOT_OT0_,_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_
	.section	.text._ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt17_Rb_tree_iteratorIxEC5EPSt18_Rb_tree_node_base,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base
	.type	_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base, @function
_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base:
.LFB11152:
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
.LFE11152:
	.size	_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base, .-_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base
	.weak	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	.set	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base,_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base
	.section	.text._ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB11154:
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
.LFE11154:
	.size	_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB11155:
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
.LFE11155:
	.size	_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_:
.LFB11156:
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
.LFE11156:
	.size	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.type	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, @function
_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx:
.LFB11157:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11157
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11157:
	.section	.gcc_except_table
.LLSDA11157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11157-.LLSDACSB11157
.LLSDACSB11157:
.LLSDACSE11157:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, .-_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, @function
_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_:
.LFB11158:
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
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 8[rax]
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11158:
	.size	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.section	.text._ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_,"axG",@progbits,_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC5ES1_,comdat
	.align 2
	.weak	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_
	.type	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_, @function
_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_:
.LFB11161:
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
.LFE11161:
	.size	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_, .-_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_
	.weak	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC1ES1_
	.set	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC1ES1_,_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_
	.section	.text._ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv,"axG",@progbits,_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv,comdat
	.align 2
	.weak	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv
	.type	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv, @function
_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv:
.LFB11163:
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
	add	rax, 32
	mov	rdi, rax
	call	_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11163:
	.size	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv, .-_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv
	.section	.text._ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorIxEC5EPKSt18_Rb_tree_node_base,comdat
	.align 2
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base
	.type	_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base, @function
_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base:
.LFB11165:
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
.LFE11165:
	.size	_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base, .-_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEC1EPKSt18_Rb_tree_node_base
	.set	_ZNSt23_Rb_tree_const_iteratorIxEC1EPKSt18_Rb_tree_node_base,_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base
	.section	.text._ZNSt23_Rb_tree_const_iteratorIxEppEv,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorIxEppEv,comdat
	.align 2
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEppEv
	.type	_ZNSt23_Rb_tree_const_iteratorIxEppEv, @function
_ZNSt23_Rb_tree_const_iteratorIxEppEv:
.LFB11169:
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
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base@PLT
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11169:
	.size	_ZNSt23_Rb_tree_const_iteratorIxEppEv, .-_ZNSt23_Rb_tree_const_iteratorIxEppEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE:
.LFB11170:
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
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 40[rax]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 40[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11170:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE
	.section	.text._ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv,"axG",@progbits,_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv,comdat
	.align 2
	.weak	_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv
	.type	_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv, @function
_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv:
.LFB11171:
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
	mov	rdx, QWORD PTR [rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L227
	call	__stack_chk_fail@PLT
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11171:
	.size	_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv, .-_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_:
.LFB11308:
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
	call	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11308:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.section	.text._ZNSaIxEC2ERKS_,"axG",@progbits,_ZNSaIxEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIxEC2ERKS_
	.type	_ZNSaIxEC2ERKS_, @function
_ZNSaIxEC2ERKS_:
.LFB11310:
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
	call	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11310:
	.size	_ZNSaIxEC2ERKS_, .-_ZNSaIxEC2ERKS_
	.weak	_ZNSaIxEC1ERKS_
	.set	_ZNSaIxEC1ERKS_,_ZNSaIxEC2ERKS_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev:
.LFB11313:
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
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 16
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 48
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11313:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, @function
_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm:
.LFB11315:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11315
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
	lea	rax, -25[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB16:
	call	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
.LEHE16:
	mov	rbx, rax
	nop
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIPxED1Ev
	mov	rax, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L235
	jmp	.L237
.L236:
	endbr64
	mov	rbx, rax
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIPxED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L237:
	call	__stack_chk_fail@PLT
.L235:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11315:
	.section	.gcc_except_table
.LLSDA11315:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11315-.LLSDACSB11315
.LLSDACSB11315:
	.uleb128 .LEHB16-.LFB11315
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L236-.LFB11315
	.uleb128 0
	.uleb128 .LEHB17-.LFB11315
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE11315:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, @function
_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_:
.LFB11316:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11316
	endbr64
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
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L239
.L240:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
.LEHB18:
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
.LEHE18:
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rdx], rax
	add	QWORD PTR -24[rbp], 8
.L239:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -56[rbp]
	jb	.L240
	jmp	.L245
.L243:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
.LEHB19:
	call	__cxa_rethrow@PLT
.LEHE19:
.L244:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB20:
	call	_Unwind_Resume@PLT
.LEHE20:
.L245:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11316:
	.section	.gcc_except_table
	.align 4
.LLSDA11316:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11316-.LLSDATTD11316
.LLSDATTD11316:
	.byte	0x1
	.uleb128 .LLSDACSE11316-.LLSDACSB11316
.LLSDACSB11316:
	.uleb128 .LEHB18-.LFB11316
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L243-.LFB11316
	.uleb128 0x1
	.uleb128 .LEHB19-.LFB11316
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L244-.LFB11316
	.uleb128 0
	.uleb128 .LEHB20-.LFB11316
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE11316:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11316:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, @function
_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv:
.LFB11317:
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
	mov	rdi, rax
	call	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIPxEC1IxEERKSaIT_E
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11317:
	.size	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPxED2Ev,"axG",@progbits,_ZNSaIPxED5Ev,comdat
	.align 2
	.weak	_ZNSaIPxED2Ev
	.type	_ZNSaIPxED2Ev, @function
_ZNSaIPxED2Ev:
.LFB11319:
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
	call	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11319:
	.size	_ZNSaIPxED2Ev, .-_ZNSaIPxED2Ev
	.weak	_ZNSaIPxED1Ev
	.set	_ZNSaIPxED1Ev,_ZNSaIPxED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m:
.LFB11321:
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
	call	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11321:
	.size	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.section	.text._ZSt23__uninitialized_defaultIPxEvT_S1_,"axG",@progbits,_ZSt23__uninitialized_defaultIPxEvT_S1_,comdat
	.weak	_ZSt23__uninitialized_defaultIPxEvT_S1_
	.type	_ZSt23__uninitialized_defaultIPxEvT_S1_, @function
_ZSt23__uninitialized_defaultIPxEvT_S1_:
.LFB11322:
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
	call	_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11322:
	.size	_ZSt23__uninitialized_defaultIPxEvT_S1_, .-_ZSt23__uninitialized_defaultIPxEvT_S1_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, @function
_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv:
.LFB11323:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11323:
	.size	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.section	.text._ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_,"axG",@progbits,_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_,comdat
	.weak	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_
	.type	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_, @function
_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_:
.LFB11324:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 96
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L254
	call	__stack_chk_fail@PLT
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11324:
	.size	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_, .-_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE:
.LFB11326:
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
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11326:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE:
.LFB11327:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11327
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
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 1
	mov	rsi, rax
	mov	rdi, rcx
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11327:
	.section	.gcc_except_table
.LLSDA11327:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11327-.LLSDACSB11327
.LLSDACSB11327:
.LLSDACSE11327:
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE,comdat
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEpLEl,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEpLEl,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEpLEl
	.type	_ZNSt15_Deque_iteratorIxRxPxEpLEl, @function
_ZNSt15_Deque_iteratorIxRxPxEpLEl:
.LFB11328:
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	js	.L258
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jge	.L258
	mov	eax, 1
	jmp	.L259
.L258:
	mov	eax, 0
.L259:
	test	al, al
	je	.L260
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	jmp	.L261
.L260:
	cmp	QWORD PTR -32[rbp], 0
	jle	.L262
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	rcx, rax
	mov	rax, QWORD PTR -32[rbp]
	cqo
	idiv	rcx
	jmp	.L263
.L262:
	mov	rax, QWORD PTR -32[rbp]
	not	rax
	mov	rbx, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	rsi, rax
	mov	rax, rbx
	mov	edx, 0
	div	rsi
	not	rax
.L263:
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -24[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR 8[rax]
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	imul	rax, QWORD PTR -24[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, rdx
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
.L261:
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11328:
	.size	_ZNSt15_Deque_iteratorIxRxPxEpLEl, .-_ZNSt15_Deque_iteratorIxRxPxEpLEl
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv:
.LFB11329:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11329:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE,comdat
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE:
.LFB11330:
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
	mov	rdi, rax
	call	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv
	mov	rdx, rax
	lea	rax, -9[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt9_IdentityIxEclERKx
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L269
	call	__stack_chk_fail@PLT
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11330:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE
	.section	.text._ZNKSt4lessIxEclERKxS2_,"axG",@progbits,_ZNKSt4lessIxEclERKxS2_,comdat
	.align 2
	.weak	_ZNKSt4lessIxEclERKxS2_
	.type	_ZNKSt4lessIxEclERKxS2_, @function
_ZNKSt4lessIxEclERKxS2_:
.LFB11333:
	.cfi_startproc
	endbr64
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
	setl	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11333:
	.size	_ZNKSt4lessIxEclERKxS2_, .-_ZNKSt4lessIxEclERKxS2_
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv:
.LFB11334:
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
	mov	rdx, QWORD PTR 24[rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L274
	call	__stack_chk_fail@PLT
.L274:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11334:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv
	.section	.text._ZSteqRKSt17_Rb_tree_iteratorIxES2_,"axG",@progbits,_ZSteqRKSt17_Rb_tree_iteratorIxES2_,comdat
	.weak	_ZSteqRKSt17_Rb_tree_iteratorIxES2_
	.type	_ZSteqRKSt17_Rb_tree_iteratorIxES2_, @function
_ZSteqRKSt17_Rb_tree_iteratorIxES2_:
.LFB11335:
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	sete	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11335:
	.size	_ZSteqRKSt17_Rb_tree_iteratorIxES2_, .-_ZSteqRKSt17_Rb_tree_iteratorIxES2_
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_, @function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_:
.LFB11337:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11337:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	.section	.text._ZNSt17_Rb_tree_iteratorIxEmmEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorIxEmmEv,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorIxEmmEv
	.type	_ZNSt17_Rb_tree_iteratorIxEmmEv, @function
_ZNSt17_Rb_tree_iteratorIxEmmEv:
.LFB11339:
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
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@PLT
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11339:
	.size	_ZNSt17_Rb_tree_iteratorIxEmmEv, .-_ZNSt17_Rb_tree_iteratorIxEmmEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base:
.LFB11340:
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
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11340:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRS1_Lb1EEEOT_RKS1_,comdat
	.align 2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_, @function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_:
.LFB11342:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11342:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_, @function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_:
.LFB11344:
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
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11344:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_
	.section	.text._ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11345:
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
.LFE11345:
	.size	_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, @function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm:
.LFB11346:
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
	call	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11346:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.section	.text._ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv, @function
_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv:
.LFB11347:
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
	call	_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11347:
	.size	_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv, .-_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv:
.LFB11432:
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
	call	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11432:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_:
.LFB11434:
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
.LFE11434:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, @function
_ZNSt15_Deque_iteratorIxRxPxEC2Ev:
.LFB11437:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11437:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, .-_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1Ev,_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m:
.LFB11439:
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
	call	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11439:
	.size	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, @function
_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv:
.LFB11440:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11440:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB11441:
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
.LFE11441:
	.size	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIPxEC2IxEERKSaIT_E,"axG",@progbits,_ZNSaIPxEC5IxEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaIPxEC2IxEERKSaIT_E
	.type	_ZNSaIPxEC2IxEERKSaIT_E, @function
_ZNSaIPxEC2IxEERKSaIT_E:
.LFB11443:
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
	call	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11443:
	.size	_ZNSaIPxEC2IxEERKSaIT_E, .-_ZNSaIPxEC2IxEERKSaIT_E
	.weak	_ZNSaIPxEC1IxEERKSaIT_E
	.set	_ZNSaIPxEC1IxEERKSaIT_E,_ZNSaIPxEC2IxEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPxED2Ev:
.LFB11446:
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
.LFE11446:
	.size	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxED1Ev,_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m:
.LFB11448:
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
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11448:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.section	.text._ZSt11__addressofIxEPT_RS0_,"axG",@progbits,_ZSt11__addressofIxEPT_RS0_,comdat
	.weak	_ZSt11__addressofIxEPT_RS0_
	.type	_ZSt11__addressofIxEPT_RS0_, @function
_ZSt11__addressofIxEPT_RS0_:
.LFB11450:
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
.LFE11450:
	.size	_ZSt11__addressofIxEPT_RS0_, .-_ZSt11__addressofIxEPT_RS0_
	.section	.text._ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_,"axG",@progbits,_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_,comdat
	.weak	_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_
	.type	_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_, @function
_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_:
.LFB11449:
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
	cmp	rax, QWORD PTR -32[rbp]
	je	.L309
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofIxEPT_RS0_
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt10_ConstructIxJEEvPT_DpOT0_
	add	QWORD PTR -24[rbp], 8
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	setne	al
	test	al, al
	je	.L306
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt4fillIPxxEvT_S1_RKT0_
	jmp	.L306
.L309:
	nop
.L306:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11449:
	.size	_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_, .-_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_:
.LFB11451:
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
.LFE11451:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_, .-_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv:
.LFB11453:
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
.LFE11453:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	.section	.text._ZNSt13_Rb_tree_nodeIxE9_M_valptrEv,"axG",@progbits,_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv,comdat
	.align 2
	.weak	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv
	.type	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv, @function
_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv:
.LFB11454:
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
	add	rax, 32
	mov	rdi, rax
	call	_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11454:
	.size	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv, .-_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_:
.LFB11455:
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
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11455:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m:
.LFB11456:
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
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11456:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m
	.section	.text._ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB11457:
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
.LFE11457:
	.size	_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB11458:
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
.LFE11458:
	.size	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_:
.LFB11459:
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
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11459:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, @function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm:
.LFB11460:
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
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11460:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.section	.text._ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv, @function
_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv:
.LFB11461:
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
.LFE11461:
	.size	_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv, .-_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv:
.LFB11567:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 1152921504606846975
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11567:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv:
.LFB11569:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 1152921504606846975
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11569:
	.size	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv:
.LFB11568:
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
	call	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L332
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L333
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L333:
	call	_ZSt17__throw_bad_allocv@PLT
.L332:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11568:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m:
.LFB11570:
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
	call	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11570:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPxEC2Ev:
.LFB11572:
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
.LFE11572:
	.size	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev,_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.section	.text._ZSt10_ConstructIxJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIxJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIxJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIxJEEvPT_DpOT0_, @function
_ZSt10_ConstructIxJEEvPT_DpOT0_:
.LFB11574:
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
	mov	edi, 8
	call	_ZnwmPv
	mov	QWORD PTR [rax], 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11574:
	.size	_ZSt10_ConstructIxJEEvPT_DpOT0_, .-_ZSt10_ConstructIxJEEvPT_DpOT0_
	.section	.text._ZSt4fillIPxxEvT_S1_RKT0_,"axG",@progbits,_ZSt4fillIPxxEvT_S1_RKT0_,comdat
	.weak	_ZSt4fillIPxxEvT_S1_RKT0_
	.type	_ZSt4fillIPxxEvT_S1_RKT0_, @function
_ZSt4fillIPxxEvT_S1_RKT0_:
.LFB11575:
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
	call	_ZSt8__fill_aIPxxEvT_S1_RKT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11575:
	.size	_ZSt4fillIPxxEvT_S1_RKT0_, .-_ZSt4fillIPxxEvT_S1_RKT0_
	.section	.text._ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	.type	_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv, @function
_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv:
.LFB11577:
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
	call	_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11577:
	.size	_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv, .-_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_:
.LFB11578:
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
.LFE11578:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m:
.LFB11579:
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
	sal	rax, 2
	add	rax, rdx
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
.LFE11579:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv:
.LFB11580:
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
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11580:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_, @function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_:
.LFB11581:
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
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 40
	call	_ZnwmPv
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_
	nop
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11581:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv:
.LFB11649:
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
	call	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L349
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L350
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L350:
	call	_ZSt17__throw_bad_allocv@PLT
.L349:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11649:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.section	.text._ZSt8__fill_aIPxxEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPxxEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPxxEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPxxEvT_S1_RKT0_, @function
_ZSt8__fill_aIPxxEvT_S1_RKT0_:
.LFB11650:
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
	call	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11650:
	.size	_ZSt8__fill_aIPxxEvT_S1_RKT0_, .-_ZSt8__fill_aIPxxEvT_S1_RKT0_
	.section	.text._ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	.type	_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv, @function
_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv:
.LFB11651:
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
.LFE11651:
	.size	_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv, .-_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m:
.LFB11652:
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
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11652:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_:
.LFB11653:
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
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11653:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_
	.section	.text._ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.weak	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB11683:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L359
.L360:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	add	QWORD PTR -24[rbp], 8
.L359:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L360
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11683:
	.size	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv:
.LFB11685:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 230584300921369395
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11685:
	.size	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv:
.LFB11684:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L364
	movabs	rax, 461168601842738790
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L365
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L365:
	call	_ZSt17__throw_bad_allocv@PLT
.L364:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11684:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_:
.LFB11686:
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	QWORD PTR [rax], rbx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11686:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11739:
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
	jne	.L370
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L370
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
.L370:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11739:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11762:
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
.LFE11762:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
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
