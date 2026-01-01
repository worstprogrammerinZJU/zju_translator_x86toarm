	.file	"Not_Quite_Latin_Square.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"A\n"
.LC1:
	.string	"B\n"
.LC2:
	.string	"C\n"
	.text
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
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
.L17:
	mov	DWORD PTR -48[rbp], 0
	jmp	.L3
.L6:
	mov	DWORD PTR -44[rbp], 0
	jmp	.L4
.L5:
	lea	rcx, -17[rbp]
	mov	eax, DWORD PTR -44[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rsi
	add	rax, rcx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	add	DWORD PTR -44[rbp], 1
.L4:
	cmp	DWORD PTR -44[rbp], 2
	jle	.L5
	add	DWORD PTR -48[rbp], 1
.L3:
	cmp	DWORD PTR -48[rbp], 2
	jle	.L6
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L7
.L13:
	mov	DWORD PTR -24[rbp], 0
	jmp	.L8
.L12:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 17
	movzx	eax, BYTE PTR [rax]
	cmp	al, 65
	jne	.L9
	add	DWORD PTR -40[rbp], 1
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 17
	movzx	eax, BYTE PTR [rax]
	cmp	al, 66
	jne	.L11
	add	DWORD PTR -36[rbp], 1
	jmp	.L10
.L11:
	add	DWORD PTR -32[rbp], 1
.L10:
	add	DWORD PTR -24[rbp], 1
.L8:
	cmp	DWORD PTR -24[rbp], 2
	jle	.L12
	add	DWORD PTR -28[rbp], 1
.L7:
	cmp	DWORD PTR -28[rbp], 2
	jle	.L13
	cmp	DWORD PTR -40[rbp], 2
	jne	.L14
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L2
.L14:
	cmp	DWORD PTR -36[rbp], 2
	jne	.L16
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L2
.L16:
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L2:
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -52[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L17
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1731:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2229:
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
.LFE2229:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2230:
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
.LFE2230:
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
