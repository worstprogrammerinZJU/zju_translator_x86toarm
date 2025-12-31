	.file	"boring_apartments.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"\n"
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
	sub	rsp, 208
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -200[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -192[rbp], 0
	mov	DWORD PTR -188[rbp], 1
	jmp	.L2
.L3:
	mov	edx, DWORD PTR -188[rbp]
	mov	eax, DWORD PTR -192[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -192[rbp], ecx
	cdqe
	mov	DWORD PTR -160[rbp+rax*4], edx
	mov	edx, DWORD PTR -188[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	lea	ecx, [rax+rdx]
	mov	eax, DWORD PTR -192[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -192[rbp], edx
	cdqe
	mov	DWORD PTR -160[rbp+rax*4], ecx
	mov	eax, DWORD PTR -188[rbp]
	imul	edx, eax, 111
	mov	eax, DWORD PTR -192[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -192[rbp], ecx
	cdqe
	mov	DWORD PTR -160[rbp+rax*4], edx
	mov	eax, DWORD PTR -188[rbp]
	imul	edx, eax, 1111
	mov	eax, DWORD PTR -192[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -192[rbp], ecx
	cdqe
	mov	DWORD PTR -160[rbp+rax*4], edx
	add	DWORD PTR -188[rbp], 1
.L2:
	cmp	DWORD PTR -188[rbp], 9
	jle	.L3
	jmp	.L4
.L13:
	lea	rax, -196[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -184[rbp], 0
	mov	DWORD PTR -180[rbp], 0
	jmp	.L5
.L8:
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	mov	edx, DWORD PTR -160[rbp+rax*4]
	mov	eax, DWORD PTR -196[rbp]
	cmp	edx, eax
	jne	.L6
	mov	eax, DWORD PTR -180[rbp]
	mov	DWORD PTR -184[rbp], eax
	jmp	.L7
.L6:
	add	DWORD PTR -180[rbp], 1
.L5:
	cmp	DWORD PTR -180[rbp], 35
	jle	.L8
.L7:
	mov	DWORD PTR -176[rbp], 0
	mov	DWORD PTR -172[rbp], 0
	jmp	.L9
.L12:
	mov	eax, DWORD PTR -172[rbp]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	mov	DWORD PTR -168[rbp], eax
	mov	DWORD PTR -164[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -168[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -168[rbp], eax
	add	DWORD PTR -164[rbp], 1
.L10:
	cmp	DWORD PTR -168[rbp], 0
	jne	.L11
	mov	eax, DWORD PTR -164[rbp]
	add	DWORD PTR -176[rbp], eax
	add	DWORD PTR -172[rbp], 1
.L9:
	mov	eax, DWORD PTR -172[rbp]
	cmp	eax, DWORD PTR -184[rbp]
	jle	.L12
	mov	eax, DWORD PTR -176[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L4:
	mov	eax, DWORD PTR -200[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -200[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L13
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
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
	jne	.L18
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L18
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
.L18:
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
