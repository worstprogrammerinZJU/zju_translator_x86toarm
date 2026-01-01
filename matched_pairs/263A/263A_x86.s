	.file	"263A.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	_Z5absoli
	.type	_Z5absoli, @function
_Z5absoli:
.LFB1731:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	cmp	DWORD PTR -4[rbp], 0
	js	.L2
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -4[rbp]
	neg	eax
.L3:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1731:
	.size	_Z5absoli, .-_Z5absoli
	.globl	main
	.type	main, @function
main:
.LFB1732:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 152
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -140[rbp], 0
	jmp	.L5
.L9:
	mov	DWORD PTR -136[rbp], 0
	jmp	.L6
.L8:
	lea	rcx, -128[rbp]
	mov	eax, DWORD PTR -136[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -136[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	mov	eax, DWORD PTR -128[rbp+rax*4]
	cmp	eax, 1
	jne	.L7
	mov	eax, DWORD PTR -140[rbp]
	mov	DWORD PTR -148[rbp], eax
	mov	eax, DWORD PTR -136[rbp]
	mov	DWORD PTR -144[rbp], eax
.L7:
	add	DWORD PTR -136[rbp], 1
.L6:
	cmp	DWORD PTR -136[rbp], 4
	jle	.L8
	add	DWORD PTR -140[rbp], 1
.L5:
	cmp	DWORD PTR -140[rbp], 4
	jle	.L9
	mov	eax, DWORD PTR -148[rbp]
	sub	eax, 2
	mov	edi, eax
	call	_Z5absoli
	mov	ebx, eax
	mov	eax, DWORD PTR -144[rbp]
	sub	eax, 2
	mov	edi, eax
	call	_Z5absoli
	add	eax, ebx
	mov	DWORD PTR -132[rbp], eax
	mov	eax, DWORD PTR -132[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1732:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2227:
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
	jne	.L14
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L14
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
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2227:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5absoli, @function
_GLOBAL__sub_I__Z5absoli:
.LFB2228:
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
.LFE2228:
	.size	_GLOBAL__sub_I__Z5absoli, .-_GLOBAL__sub_I__Z5absoli
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5absoli
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
