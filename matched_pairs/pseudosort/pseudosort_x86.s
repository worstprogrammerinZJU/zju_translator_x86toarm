	.file	"pseudosort.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"No"
.LC1:
	.string	"Yes"
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
	lea	rax, -100[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
.L17:
	mov	rax, rsp
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -96[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
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
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -92[rbp], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	add	DWORD PTR -92[rbp], 1
.L6:
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -92[rbp], eax
	jl	.L7
	mov	DWORD PTR -88[rbp], 0
	jmp	.L8
.L11:
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	rcx, QWORD PTR [rax+rdx*8]
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	cmp	rcx, rax
	jle	.L9
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -76[rbp], eax
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	rcx, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -76[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L10
.L9:
	add	DWORD PTR -88[rbp], 1
.L8:
	mov	eax, DWORD PTR -96[rbp]
	sub	eax, 1
	cmp	DWORD PTR -88[rbp], eax
	jl	.L11
.L10:
	mov	DWORD PTR -84[rbp], 0
	mov	DWORD PTR -80[rbp], 0
	jmp	.L12
.L15:
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -80[rbp]
	movsx	rdx, edx
	mov	rcx, QWORD PTR [rax+rdx*8]
	mov	eax, DWORD PTR -80[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	cmp	rcx, rax
	jle	.L13
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	DWORD PTR -84[rbp], 1
	jmp	.L14
.L13:
	add	DWORD PTR -80[rbp], 1
.L12:
	mov	eax, DWORD PTR -96[rbp]
	sub	eax, 1
	cmp	DWORD PTR -80[rbp], eax
	jl	.L15
.L14:
	cmp	DWORD PTR -84[rbp], 0
	jne	.L16
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
.L16:
	mov	rsp, rbx
.L2:
	mov	eax, DWORD PTR -100[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -100[rbp], edx
	test	eax, eax
	setg	al
	test	al, al
	jne	.L17
	mov	eax, 0
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
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
