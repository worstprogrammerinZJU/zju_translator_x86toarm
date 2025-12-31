	.file	"two_friends.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	main
	.type	main, @function
main:
.LFB1731:
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
	sub	rsp, 72
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
.L15:
	mov	rax, rsp
	mov	r13, rax
	lea	rax, -92[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	ecx, DWORD PTR -92[rbp]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	movsx	rax, ecx
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, ecx
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], 0
	movsx	rax, ecx
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rax, rax, 16
	mov	rsi, rax
	and	rsi, -4096
	mov	rdx, rsp
	sub	rdx, rsi
.L3:
	cmp	rsp, rdx
	je	.L4
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L3
.L4:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L5
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L5:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, ecx
	lea	rbx, -1[rdx]
	mov	r12, rax
	jmp	.L6
.L7:
	mov	rdi, r12
	call	_ZNSt4pairIiiEC1IiiLb1EEEv
	add	r12, 8
	sub	rbx, 1
.L6:
	test	rbx, rbx
	jns	.L7
	mov	DWORD PTR -84[rbp], 0
	jmp	.L8
.L9:
	lea	rax, -88[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	ecx, DWORD PTR -88[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*8], ecx
	mov	eax, DWORD PTR -84[rbp]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	DWORD PTR 4[rax+rdx*8], ecx
	add	DWORD PTR -84[rbp], 1
.L8:
	mov	eax, DWORD PTR -92[rbp]
	cmp	DWORD PTR -84[rbp], eax
	jl	.L9
	mov	DWORD PTR -80[rbp], 0
	mov	DWORD PTR -76[rbp], 0
	jmp	.L10
.L12:
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -76[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -76[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*8]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR 4[rax+rdx*8]
	cmp	ecx, eax
	jne	.L11
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -76[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR 4[rax+rdx*8]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -76[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*8]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*8]
	cmp	ecx, eax
	jne	.L11
	add	DWORD PTR -80[rbp], 1
.L11:
	add	DWORD PTR -76[rbp], 1
.L10:
	mov	eax, DWORD PTR -92[rbp]
	cmp	DWORD PTR -76[rbp], eax
	jl	.L12
	cmp	DWORD PTR -80[rbp], 0
	jne	.L13
	mov	esi, 3
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L14
.L13:
	mov	esi, 2
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
.L14:
	mov	rsp, r13
.L2:
	mov	eax, DWORD PTR -96[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -96[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L15
	mov	eax, 0
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
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
.LFE1731:
	.size	main, .-main
	.section	.text._ZNSt4pairIiiEC2IiiLb1EEEv,"axG",@progbits,_ZNSt4pairIiiEC5IiiLb1EEEv,comdat
	.align 2
	.weak	_ZNSt4pairIiiEC2IiiLb1EEEv
	.type	_ZNSt4pairIiiEC2IiiLb1EEEv, @function
_ZNSt4pairIiiEC2IiiLb1EEEv:
.LFB1994:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1994:
	.size	_ZNSt4pairIiiEC2IiiLb1EEEv, .-_ZNSt4pairIiiEC2IiiLb1EEEv
	.weak	_ZNSt4pairIiiEC1IiiLb1EEEv
	.set	_ZNSt4pairIiiEC1IiiLb1EEEv,_ZNSt4pairIiiEC2IiiLb1EEEv
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2235:
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
	jne	.L21
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L21
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
.L21:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2235:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2236:
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
.LFE2236:
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
