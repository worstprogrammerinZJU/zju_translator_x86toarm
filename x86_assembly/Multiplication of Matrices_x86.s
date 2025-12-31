	.file	"Multiplication of Matrices.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	" "
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
	sub	rsp, 376
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	QWORD PTR -408[rbp], rax
	lea	rax, -180[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -176[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	esi, DWORD PTR -176[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -128[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -208[rbp], rax
	mov	QWORD PTR -200[rbp], 0
	movsx	rax, esi
	sal	rax, 2
	mov	QWORD PTR -208[rbp], rax
	mov	edi, DWORD PTR -180[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -120[rbp], rax
	movsx	rax, esi
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, edi
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	imul	rax, r14
	lea	rcx, [rdx+rax]
	mov	rax, r14
	mul	r12
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR -224[rbp], rax
	mov	QWORD PTR -216[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -240[rbp], rax
	mov	QWORD PTR -232[rbp], 0
	mov	r9, QWORD PTR -224[rbp]
	mov	r10, QWORD PTR -216[rbp]
	mov	rdx, r10
	mov	r11, QWORD PTR -240[rbp]
	mov	r12, QWORD PTR -232[rbp]
	imul	rdx, r11
	mov	rax, r12
	imul	rax, r9
	lea	rcx, [rdx+rax]
	mov	rax, r9
	mul	r11
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
.L2:
	cmp	rsp, rcx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
.L3:
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L4
	mov	rax, rdx
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L4:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -112[rbp], rax
	mov	DWORD PTR -164[rbp], 0
	jmp	.L5
.L8:
	mov	DWORD PTR -160[rbp], 0
	jmp	.L6
.L7:
	mov	rdx, QWORD PTR -208[rbp]
	shr	rdx, 2
	mov	eax, DWORD PTR -160[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -164[rbp]
	cdqe
	imul	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -112[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -160[rbp], 1
.L6:
	mov	eax, DWORD PTR -176[rbp]
	cmp	DWORD PTR -160[rbp], eax
	jl	.L7
	add	DWORD PTR -164[rbp], 1
.L5:
	mov	eax, DWORD PTR -180[rbp]
	cmp	DWORD PTR -164[rbp], eax
	jl	.L8
	lea	rax, -172[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -168[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	esi, DWORD PTR -168[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -104[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -384[rbp], rax
	mov	QWORD PTR -376[rbp], 0
	movsx	rax, esi
	lea	r12, 0[0+rax*4]
	mov	edi, DWORD PTR -172[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -96[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -256[rbp], rax
	mov	QWORD PTR -248[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -272[rbp], rax
	mov	QWORD PTR -264[rbp], 0
	mov	r8, QWORD PTR -256[rbp]
	mov	r9, QWORD PTR -248[rbp]
	mov	rdx, r9
	mov	r14, QWORD PTR -272[rbp]
	mov	r15, QWORD PTR -264[rbp]
	imul	rdx, r14
	mov	rax, r15
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r14
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR -288[rbp], rax
	mov	QWORD PTR -280[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -304[rbp], rax
	mov	QWORD PTR -296[rbp], 0
	mov	r8, QWORD PTR -288[rbp]
	mov	r9, QWORD PTR -280[rbp]
	mov	rdx, r9
	mov	r10, QWORD PTR -304[rbp]
	mov	r11, QWORD PTR -296[rbp]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
.L9:
	cmp	rsp, rcx
	je	.L10
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L9
.L10:
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L11
	mov	rax, rdx
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L11:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -156[rbp], 0
	jmp	.L12
.L15:
	mov	DWORD PTR -152[rbp], 0
	jmp	.L13
.L14:
	mov	rdx, r12
	shr	rdx, 2
	mov	eax, DWORD PTR -152[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -156[rbp]
	cdqe
	imul	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -152[rbp], 1
.L13:
	mov	eax, DWORD PTR -168[rbp]
	cmp	DWORD PTR -152[rbp], eax
	jl	.L14
	add	DWORD PTR -156[rbp], 1
.L12:
	mov	eax, DWORD PTR -172[rbp]
	cmp	DWORD PTR -156[rbp], eax
	jl	.L15
	mov	edi, DWORD PTR -168[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	movsx	rax, edi
	mov	QWORD PTR -400[rbp], rax
	mov	QWORD PTR -392[rbp], 0
	movsx	rax, edi
	lea	rbx, 0[0+rax*4]
	mov	esi, DWORD PTR -180[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	movsx	rax, edi
	mov	QWORD PTR -320[rbp], rax
	mov	QWORD PTR -312[rbp], 0
	movsx	rax, esi
	mov	QWORD PTR -336[rbp], rax
	mov	QWORD PTR -328[rbp], 0
	mov	r14, QWORD PTR -320[rbp]
	mov	r15, QWORD PTR -312[rbp]
	mov	rdx, r15
	mov	r8, QWORD PTR -336[rbp]
	mov	r9, QWORD PTR -328[rbp]
	imul	rdx, r8
	mov	rax, r9
	imul	rax, r14
	lea	rcx, [rdx+rax]
	mov	rax, r14
	mul	r8
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, edi
	mov	QWORD PTR -352[rbp], rax
	mov	QWORD PTR -344[rbp], 0
	movsx	rax, esi
	mov	QWORD PTR -368[rbp], rax
	mov	QWORD PTR -360[rbp], 0
	mov	r8, QWORD PTR -352[rbp]
	mov	r9, QWORD PTR -344[rbp]
	mov	rdx, r9
	mov	r10, QWORD PTR -368[rbp]
	mov	r11, QWORD PTR -360[rbp]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, edi
	movsx	rax, esi
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L16:
	cmp	rsp, rdx
	je	.L17
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L16
.L17:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L18
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L18:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -148[rbp], 0
	jmp	.L19
.L24:
	mov	DWORD PTR -144[rbp], 0
	jmp	.L20
.L23:
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -144[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -148[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	DWORD PTR [rax+rdx*4], 0
	mov	DWORD PTR -140[rbp], 0
	jmp	.L21
.L22:
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -144[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -148[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	edi, DWORD PTR [rax+rdx*4]
	mov	rcx, QWORD PTR -208[rbp]
	shr	rcx, 2
	mov	rax, QWORD PTR -112[rbp]
	mov	edx, DWORD PTR -140[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -148[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	edx, DWORD PTR [rax+rdx*4]
	mov	rsi, r12
	shr	rsi, 2
	mov	rax, QWORD PTR -88[rbp]
	mov	ecx, DWORD PTR -144[rbp]
	movsx	r8, ecx
	mov	ecx, DWORD PTR -140[rbp]
	movsx	rcx, ecx
	imul	rcx, rsi
	add	rcx, r8
	mov	eax, DWORD PTR [rax+rcx*4]
	imul	eax, edx
	mov	rsi, rbx
	shr	rsi, 2
	lea	ecx, [rdi+rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -144[rbp]
	movsx	rdi, edx
	mov	edx, DWORD PTR -148[rbp]
	movsx	rdx, edx
	imul	rdx, rsi
	add	rdx, rdi
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -140[rbp], 1
.L21:
	mov	eax, DWORD PTR -176[rbp]
	cmp	DWORD PTR -140[rbp], eax
	jl	.L22
	add	DWORD PTR -144[rbp], 1
.L20:
	mov	eax, DWORD PTR -168[rbp]
	cmp	DWORD PTR -144[rbp], eax
	jl	.L23
	add	DWORD PTR -148[rbp], 1
.L19:
	mov	eax, DWORD PTR -180[rbp]
	cmp	DWORD PTR -148[rbp], eax
	jl	.L24
	mov	DWORD PTR -136[rbp], 0
	jmp	.L25
.L28:
	mov	DWORD PTR -132[rbp], 0
	jmp	.L26
.L27:
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -132[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -136[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	add	DWORD PTR -132[rbp], 1
.L26:
	mov	eax, DWORD PTR -168[rbp]
	cmp	DWORD PTR -132[rbp], eax
	jl	.L27
	mov	rax, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -136[rbp], 1
.L25:
	mov	eax, DWORD PTR -180[rbp]
	cmp	DWORD PTR -136[rbp], eax
	jl	.L28
	mov	rsp, QWORD PTR -408[rbp]
	mov	eax, 0
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
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
	jne	.L33
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L33
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
.L33:
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
