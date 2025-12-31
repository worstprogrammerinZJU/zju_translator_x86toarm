	.file	"Permutation with arrays.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"yes"
.LC1:
	.string	"no"
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
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4000
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -8088[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -8084[rbp], 0
	jmp	.L2
.L3:
	lea	rdx, -8048[rbp]
	mov	eax, DWORD PTR -8084[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -8084[rbp], 1
.L2:
	mov	eax, DWORD PTR -8088[rbp]
	cmp	DWORD PTR -8084[rbp], eax
	jl	.L3
	mov	DWORD PTR -8080[rbp], 0
	jmp	.L4
.L5:
	lea	rdx, -4032[rbp]
	mov	eax, DWORD PTR -8080[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -8080[rbp], 1
.L4:
	mov	eax, DWORD PTR -8088[rbp]
	cmp	DWORD PTR -8080[rbp], eax
	jl	.L5
	mov	DWORD PTR -8076[rbp], 0
	jmp	.L6
.L10:
	mov	DWORD PTR -8072[rbp], 0
	jmp	.L7
.L9:
	mov	eax, DWORD PTR -8072[rbp]
	cdqe
	mov	edx, DWORD PTR -8048[rbp+rax*4]
	mov	eax, DWORD PTR -8072[rbp]
	add	eax, 1
	cdqe
	mov	eax, DWORD PTR -8048[rbp+rax*4]
	cmp	edx, eax
	jle	.L8
	mov	eax, DWORD PTR -8072[rbp]
	cdqe
	mov	eax, DWORD PTR -8048[rbp+rax*4]
	mov	DWORD PTR -8052[rbp], eax
	mov	eax, DWORD PTR -8072[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -8048[rbp+rax*4]
	mov	eax, DWORD PTR -8072[rbp]
	cdqe
	mov	DWORD PTR -8048[rbp+rax*4], edx
	mov	eax, DWORD PTR -8072[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -8052[rbp]
	mov	DWORD PTR -8048[rbp+rax*4], edx
.L8:
	add	DWORD PTR -8072[rbp], 1
.L7:
	mov	eax, DWORD PTR -8088[rbp]
	sub	eax, DWORD PTR -8076[rbp]
	sub	eax, 1
	cmp	DWORD PTR -8072[rbp], eax
	jl	.L9
	add	DWORD PTR -8076[rbp], 1
.L6:
	mov	eax, DWORD PTR -8088[rbp]
	sub	eax, 1
	cmp	DWORD PTR -8076[rbp], eax
	jl	.L10
	mov	DWORD PTR -8068[rbp], 0
	jmp	.L11
.L15:
	mov	DWORD PTR -8064[rbp], 0
	jmp	.L12
.L14:
	mov	eax, DWORD PTR -8064[rbp]
	cdqe
	mov	edx, DWORD PTR -4032[rbp+rax*4]
	mov	eax, DWORD PTR -8064[rbp]
	add	eax, 1
	cdqe
	mov	eax, DWORD PTR -4032[rbp+rax*4]
	cmp	edx, eax
	jle	.L13
	mov	eax, DWORD PTR -8064[rbp]
	cdqe
	mov	eax, DWORD PTR -4032[rbp+rax*4]
	mov	DWORD PTR -8056[rbp], eax
	mov	eax, DWORD PTR -8064[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -4032[rbp+rax*4]
	mov	eax, DWORD PTR -8064[rbp]
	cdqe
	mov	DWORD PTR -4032[rbp+rax*4], edx
	mov	eax, DWORD PTR -8064[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -8056[rbp]
	mov	DWORD PTR -4032[rbp+rax*4], edx
.L13:
	add	DWORD PTR -8064[rbp], 1
.L12:
	mov	eax, DWORD PTR -8088[rbp]
	sub	eax, DWORD PTR -8068[rbp]
	sub	eax, 1
	cmp	DWORD PTR -8064[rbp], eax
	jl	.L14
	add	DWORD PTR -8068[rbp], 1
.L11:
	mov	eax, DWORD PTR -8088[rbp]
	sub	eax, 1
	cmp	DWORD PTR -8068[rbp], eax
	jl	.L15
	mov	BYTE PTR -8089[rbp], 1
	mov	DWORD PTR -8060[rbp], 0
	jmp	.L16
.L19:
	mov	eax, DWORD PTR -8060[rbp]
	cdqe
	mov	edx, DWORD PTR -8048[rbp+rax*4]
	mov	eax, DWORD PTR -8060[rbp]
	cdqe
	mov	eax, DWORD PTR -4032[rbp+rax*4]
	cmp	edx, eax
	je	.L17
	mov	BYTE PTR -8089[rbp], 0
	jmp	.L18
.L17:
	add	DWORD PTR -8060[rbp], 1
.L16:
	mov	eax, DWORD PTR -8088[rbp]
	cmp	DWORD PTR -8060[rbp], eax
	jl	.L19
.L18:
	cmp	BYTE PTR -8089[rbp], 0
	je	.L20
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L21
.L20:
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
.L21:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1731:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2234:
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
	jne	.L26
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L26
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
.L26:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2234:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2235:
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
.LFE2235:
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
