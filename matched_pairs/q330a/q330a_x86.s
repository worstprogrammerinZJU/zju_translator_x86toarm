	.file	"q330a.cpp"
	.intel_syntax noprefix
	.text
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
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB9704:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 168
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	QWORD PTR -200[rbp], rax
	lea	rax, -140[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -136[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	ecx, DWORD PTR -136[rbp]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	movsx	rax, ecx
	mov	QWORD PTR -192[rbp], rax
	mov	QWORD PTR -184[rbp], 0
	movsx	rbx, ecx
	mov	esi, DWORD PTR -140[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	movsx	rax, ecx
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], 0
	movsx	rax, esi
	mov	QWORD PTR -176[rbp], rax
	mov	QWORD PTR -168[rbp], 0
	mov	r8, QWORD PTR -160[rbp]
	mov	r9, QWORD PTR -152[rbp]
	mov	rdx, r9
	mov	r10, QWORD PTR -176[rbp]
	mov	r11, QWORD PTR -168[rbp]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rdi, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rax, ecx
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, esi
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	imul	rax, r14
	lea	rdi, [rdx+rax]
	mov	rax, r14
	mul	r12
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rdx, ecx
	movsx	rax, esi
	imul	rax, rdx
	mov	edx, 16
	sub	rdx, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L2:
	cmp	rsp, rdx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
.L3:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L4
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L4:
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -132[rbp], 0
	jmp	.L5
.L8:
	mov	DWORD PTR -128[rbp], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -128[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	add	DWORD PTR -128[rbp], 1
.L6:
	mov	eax, DWORD PTR -136[rbp]
	cmp	DWORD PTR -128[rbp], eax
	jl	.L7
	add	DWORD PTR -132[rbp], 1
.L5:
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -132[rbp], eax
	jl	.L8
	mov	DWORD PTR -124[rbp], 0
	jmp	.L9
.L16:
	mov	DWORD PTR -120[rbp], 1
	mov	DWORD PTR -116[rbp], 0
	jmp	.L10
.L12:
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -116[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -124[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rcx
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	jne	.L11
	mov	DWORD PTR -120[rbp], 0
.L11:
	add	DWORD PTR -116[rbp], 1
.L10:
	mov	eax, DWORD PTR -136[rbp]
	cmp	DWORD PTR -116[rbp], eax
	jl	.L12
	cmp	DWORD PTR -120[rbp], 1
	jne	.L13
	mov	DWORD PTR -112[rbp], 0
	jmp	.L14
.L15:
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -112[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -124[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rcx
	add	rax, rdx
	mov	BYTE PTR [rax], 69
	add	DWORD PTR -112[rbp], 1
.L14:
	mov	eax, DWORD PTR -136[rbp]
	cmp	DWORD PTR -112[rbp], eax
	jl	.L15
.L13:
	add	DWORD PTR -124[rbp], 1
.L9:
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -124[rbp], eax
	jl	.L16
	mov	DWORD PTR -108[rbp], 0
	jmp	.L17
.L24:
	mov	DWORD PTR -104[rbp], 1
	mov	DWORD PTR -100[rbp], 0
	jmp	.L18
.L20:
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -108[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rcx
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	jne	.L19
	mov	DWORD PTR -104[rbp], 0
.L19:
	add	DWORD PTR -100[rbp], 1
.L18:
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -100[rbp], eax
	jl	.L20
	cmp	DWORD PTR -104[rbp], 1
	jne	.L21
	mov	DWORD PTR -96[rbp], 0
	jmp	.L22
.L23:
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -108[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rcx
	add	rax, rdx
	mov	BYTE PTR [rax], 69
	add	DWORD PTR -96[rbp], 1
.L22:
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -96[rbp], eax
	jl	.L23
.L21:
	add	DWORD PTR -108[rbp], 1
.L17:
	mov	eax, DWORD PTR -136[rbp]
	cmp	DWORD PTR -108[rbp], eax
	jl	.L24
	mov	DWORD PTR -92[rbp], 0
	mov	DWORD PTR -88[rbp], 0
	jmp	.L25
.L29:
	mov	DWORD PTR -84[rbp], 0
	jmp	.L26
.L28:
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -88[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rcx
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	jne	.L27
	add	DWORD PTR -92[rbp], 1
.L27:
	add	DWORD PTR -84[rbp], 1
.L26:
	mov	eax, DWORD PTR -136[rbp]
	cmp	DWORD PTR -84[rbp], eax
	jl	.L28
	add	DWORD PTR -88[rbp], 1
.L25:
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -88[rbp], eax
	jl	.L29
	mov	eax, DWORD PTR -92[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rsp, QWORD PTR -200[rbp]
	mov	eax, 0
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11457:
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
	jne	.L34
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L34
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
.L34:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11457:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11480:
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
.LFE11480:
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
