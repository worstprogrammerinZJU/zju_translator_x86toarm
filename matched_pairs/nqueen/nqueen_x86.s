	.file	"nqueen.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	_Z6isSafePPiiii
	.type	_Z6isSafePPiiii, @function
_Z6isSafePPiiii:
.LFB1731:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -36[rbp], ecx
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	jne	.L3
	mov	eax, 0
	jmp	.L4
.L3:
	add	DWORD PTR -12[rbp], 1
.L2:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L5
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	jne	.L7
	mov	eax, 0
	jmp	.L4
.L7:
	sub	DWORD PTR -8[rbp], 1
	sub	DWORD PTR -4[rbp], 1
.L6:
	cmp	DWORD PTR -8[rbp], 0
	js	.L8
	cmp	DWORD PTR -4[rbp], 0
	jns	.L9
.L8:
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L10
.L13:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	jne	.L11
	mov	eax, 0
	jmp	.L4
.L11:
	sub	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
.L10:
	cmp	DWORD PTR -8[rbp], 0
	js	.L12
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L13
.L12:
	mov	eax, 1
.L4:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1731:
	.size	_Z6isSafePPiiii, .-_Z6isSafePPiiii
	.globl	_Z6nqueenPPiii
	.type	_Z6nqueenPPiii, @function
_Z6nqueenPPiii:
.LFB1732:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jl	.L15
	mov	eax, 1
	jmp	.L16
.L15:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
.L20:
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	esi, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_Z6isSafePPiiii
	test	al, al
	je	.L18
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -28[rbp]
	lea	ecx, 1[rax]
	mov	edx, DWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	_Z6nqueenPPiii
	test	al, al
	je	.L19
	mov	eax, 1
	jmp	.L16
.L19:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 0
.L18:
	add	DWORD PTR -4[rbp], 1
.L17:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jl	.L20
	mov	eax, 0
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1732:
	.size	_Z6nqueenPPiii, .-_Z6nqueenPPiii
	.section	.rodata
.LC0:
	.string	" "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1733:
	.cfi_startproc
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
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	movabs	rdx, 1152921504606846975
	cmp	rax, rdx
	ja	.L22
	sal	rax, 3
	mov	rdi, rax
	call	_Znam@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -48[rbp], 0
	jmp	.L24
.L22:
	call	__cxa_throw_bad_array_new_length@PLT
.L29:
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	movabs	rdx, 2305843009213693950
	cmp	rax, rdx
	ja	.L25
	sal	rax, 2
	mov	edx, DWORD PTR -48[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -32[rbp]
	lea	rbx, [rcx+rdx]
	mov	rdi, rax
	call	_Znam@PLT
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR -44[rbp], 0
	jmp	.L27
.L25:
	call	__cxa_throw_bad_array_new_length@PLT
.L28:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	add	DWORD PTR -44[rbp], 1
.L27:
	mov	eax, DWORD PTR -52[rbp]
	cmp	DWORD PTR -44[rbp], eax
	jl	.L28
	add	DWORD PTR -48[rbp], 1
.L24:
	mov	eax, DWORD PTR -52[rbp]
	cmp	DWORD PTR -48[rbp], eax
	jl	.L29
	mov	edx, DWORD PTR -52[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	_Z6nqueenPPiii
	test	al, al
	je	.L30
	mov	DWORD PTR -40[rbp], 0
	jmp	.L31
.L34:
	mov	DWORD PTR -36[rbp], 0
	jmp	.L32
.L33:
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	add	DWORD PTR -36[rbp], 1
.L32:
	mov	eax, DWORD PTR -52[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L33
	mov	rax, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -40[rbp], 1
.L31:
	mov	eax, DWORD PTR -52[rbp]
	cmp	DWORD PTR -40[rbp], eax
	jl	.L34
.L30:
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1733:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2236:
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
	jne	.L39
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L39
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
.L39:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2236:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z6isSafePPiiii, @function
_GLOBAL__sub_I__Z6isSafePPiiii:
.LFB2237:
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
.LFE2237:
	.size	_GLOBAL__sub_I__Z6isSafePPiiii, .-_GLOBAL__sub_I__Z6isSafePPiiii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z6isSafePPiiii
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
