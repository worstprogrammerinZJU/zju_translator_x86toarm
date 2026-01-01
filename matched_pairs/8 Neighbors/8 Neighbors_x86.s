	.file	"8 Neighbors.cpp"
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
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 2896
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -11060[rbp], 1
	lea	rax, -11076[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -11072[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -11056[rbp], 0
	jmp	.L2
.L5:
	mov	DWORD PTR -11052[rbp], 0
	jmp	.L3
.L4:
	lea	rcx, -11040[rbp]
	mov	eax, DWORD PTR -11052[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -11056[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	add	rax, rsi
	add	rax, rcx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	add	DWORD PTR -11052[rbp], 1
.L3:
	mov	eax, DWORD PTR -11072[rbp]
	cmp	DWORD PTR -11052[rbp], eax
	jl	.L4
	add	DWORD PTR -11056[rbp], 1
.L2:
	mov	eax, DWORD PTR -11076[rbp]
	cmp	DWORD PTR -11056[rbp], eax
	jl	.L5
	lea	rax, -11068[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -11064[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -11068[rbp]
	sub	eax, 2
	mov	DWORD PTR -11048[rbp], eax
	jmp	.L6
.L11:
	mov	eax, DWORD PTR -11064[rbp]
	sub	eax, 2
	mov	DWORD PTR -11044[rbp], eax
	jmp	.L7
.L10:
	cmp	DWORD PTR -11048[rbp], 0
	js	.L8
	mov	eax, DWORD PTR -11076[rbp]
	cmp	DWORD PTR -11048[rbp], eax
	jge	.L8
	cmp	DWORD PTR -11044[rbp], 0
	js	.L8
	mov	eax, DWORD PTR -11072[rbp]
	cmp	DWORD PTR -11044[rbp], eax
	jge	.L8
	mov	eax, DWORD PTR -11044[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -11048[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 11040
	movzx	eax, BYTE PTR [rax]
	cmp	al, 120
	je	.L8
	mov	eax, DWORD PTR -11068[rbp]
	sub	eax, 1
	cmp	DWORD PTR -11048[rbp], eax
	jne	.L9
	mov	eax, DWORD PTR -11064[rbp]
	sub	eax, 1
	cmp	DWORD PTR -11044[rbp], eax
	je	.L8
.L9:
	mov	DWORD PTR -11060[rbp], 0
.L8:
	add	DWORD PTR -11044[rbp], 1
.L7:
	mov	eax, DWORD PTR -11064[rbp]
	cmp	DWORD PTR -11044[rbp], eax
	jle	.L10
	add	DWORD PTR -11048[rbp], 1
.L6:
	mov	eax, DWORD PTR -11068[rbp]
	cmp	DWORD PTR -11048[rbp], eax
	jle	.L11
	cmp	DWORD PTR -11060[rbp], 1
	jne	.L12
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
.L12:
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
.L13:
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
