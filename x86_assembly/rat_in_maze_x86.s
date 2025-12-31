	.file	"rat_in_maze.cpp"
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
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	mov	DWORD PTR -20[rbp], ecx
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L2
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L2
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	jne	.L2
	mov	eax, 1
	jmp	.L3
.L2:
	mov	eax, 0
.L3:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1731:
	.size	_Z6isSafePPiiii, .-_Z6isSafePPiiii
	.globl	_Z9ratinmazePPiiiiS0_
	.type	_Z9ratinmazePPiiiiS0_, @function
_Z9ratinmazePPiiiiS0_:
.LFB1732:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	mov	DWORD PTR -20[rbp], ecx
	mov	QWORD PTR -32[rbp], r8
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jne	.L5
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 1
	mov	eax, 1
	jmp	.L6
.L5:
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_Z6isSafePPiiii
	test	al, al
	je	.L7
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -12[rbp]
	lea	esi, 1[rax]
	mov	rdi, QWORD PTR -32[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8, rdi
	mov	rdi, rax
	call	_Z9ratinmazePPiiiiS0_
	test	al, al
	je	.L8
	mov	eax, 1
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -16[rbp]
	lea	edi, 1[rax]
	mov	rcx, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8, rcx
	mov	ecx, edx
	mov	edx, edi
	mov	rdi, rax
	call	_Z9ratinmazePPiiiiS0_
	test	al, al
	je	.L9
	mov	eax, 1
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	mov	eax, 0
	jmp	.L6
.L7:
	mov	eax, 0
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1732:
	.size	_Z9ratinmazePPiiiiS0_, .-_Z9ratinmazePPiiiiS0_
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
	sub	rsp, 72
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	movabs	rdx, 1152921504606846975
	cmp	rax, rdx
	ja	.L11
	sal	rax, 3
	mov	rdi, rax
	call	_Znam@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -68[rbp], 0
	jmp	.L13
.L11:
	call	__cxa_throw_bad_array_new_length@PLT
.L16:
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	movabs	rdx, 2305843009213693950
	cmp	rax, rdx
	ja	.L14
	sal	rax, 2
	jmp	.L36
.L14:
	call	__cxa_throw_bad_array_new_length@PLT
.L36:
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -40[rbp]
	lea	rbx, [rcx+rdx]
	mov	rdi, rax
	call	_Znam@PLT
	mov	QWORD PTR [rbx], rax
	add	DWORD PTR -68[rbp], 1
.L13:
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -68[rbp], eax
	jl	.L16
	mov	DWORD PTR -64[rbp], 0
	jmp	.L17
.L20:
	mov	DWORD PTR -60[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -60[rbp], 1
.L18:
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L19
	add	DWORD PTR -64[rbp], 1
.L17:
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -64[rbp], eax
	jl	.L20
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	movabs	rdx, 1152921504606846975
	cmp	rax, rdx
	ja	.L21
	sal	rax, 3
	mov	rdi, rax
	call	_Znam@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -56[rbp], 0
	jmp	.L23
.L21:
	call	__cxa_throw_bad_array_new_length@PLT
.L28:
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	movabs	rdx, 2305843009213693950
	cmp	rax, rdx
	ja	.L24
	sal	rax, 2
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -32[rbp]
	lea	rbx, [rcx+rdx]
	mov	rdi, rax
	call	_Znam@PLT
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L26
.L24:
	call	__cxa_throw_bad_array_new_length@PLT
.L27:
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	add	DWORD PTR -52[rbp], 1
.L26:
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L27
	add	DWORD PTR -56[rbp], 1
.L23:
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L28
	mov	rax, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	edx, DWORD PTR -72[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	ecx, edx
	mov	edx, 0
	mov	esi, 0
	mov	rdi, rax
	call	_Z9ratinmazePPiiiiS0_
	test	al, al
	je	.L29
	mov	DWORD PTR -48[rbp], 0
	jmp	.L30
.L33:
	mov	DWORD PTR -44[rbp], 0
	jmp	.L31
.L32:
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
	add	DWORD PTR -44[rbp], 1
.L31:
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -44[rbp], eax
	jl	.L32
	mov	rax, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -48[rbp], 1
.L30:
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -48[rbp], eax
	jl	.L33
.L29:
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
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
