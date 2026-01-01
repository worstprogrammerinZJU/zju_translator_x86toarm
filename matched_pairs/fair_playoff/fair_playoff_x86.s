	.file	"fair_playoff.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZSt3maxIiERKT_S2_S2_,"axG",@progbits,_ZSt3maxIiERKT_S2_S2_,comdat
	.weak	_ZSt3maxIiERKT_S2_S2_
	.type	_ZSt3maxIiERKT_S2_S2_, @function
_ZSt3maxIiERKT_S2_S2_:
.LFB1733:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L2
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L3
.L2:
	mov	rax, QWORD PTR -8[rbp]
.L3:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1733:
	.size	_ZSt3maxIiERKT_S2_S2_, .-_ZSt3maxIiERKT_S2_S2_
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, @function
_ZSt3minIiERKT_S2_S2_:
.LFB1734:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L5
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L6
.L5:
	mov	rax, QWORD PTR -8[rbp]
.L6:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1734:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.section	.rodata
.LC0:
	.string	"YES"
.LC1:
	.string	"NO"
.LC2:
	.string	"\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1731:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1731
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 96
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -40[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	r14, rax
	lea	rax, -100[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB0:
	call	_ZNSirsERi@PLT
.LEHE0:
	mov	ebx, DWORD PTR -100[rbp]
	movsx	rax, ebx
	sub	rax, 1
	mov	QWORD PTR -56[rbp], rax
	movsx	rax, ebx
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], 0
	movsx	rax, ebx
	mov	r12, rax
	mov	r13d, 0
	movsx	rax, ebx
	sal	rax, 5
	mov	rdx, rax
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ecx, 16
	mov	edx, 0
	div	rcx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L8:
	cmp	rsp, rdx
	je	.L9
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L8
.L9:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L10
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L10:
	mov	rax, rsp
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	movsx	rdx, ebx
	lea	r12, -1[rdx]
	mov	r13, rax
	jmp	.L11
.L12:
	mov	rdi, r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	add	r13, 32
	sub	r12, 1
.L11:
	test	r12, r12
	jns	.L12
	mov	DWORD PTR -80[rbp], 0
	jmp	.L13
.L16:
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB1:
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -92[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -88[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -84[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	lea	rdx, -92[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -72[rbp], eax
	lea	rdx, -92[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -68[rbp], eax
	lea	rdx, -84[rbp]
	lea	rax, -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -64[rbp], eax
	lea	rdx, -84[rbp]
	lea	rax, -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	cmp	eax, DWORD PTR -64[rbp]
	jg	.L14
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -72[rbp]
	jg	.L14
	mov	eax, DWORD PTR -80[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@PLT
	jmp	.L15
.L14:
	mov	eax, DWORD PTR -80[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@PLT
.L15:
	add	DWORD PTR -80[rbp], 1
.L13:
	mov	eax, DWORD PTR -100[rbp]
	cmp	DWORD PTR -80[rbp], eax
	jl	.L16
	mov	DWORD PTR -76[rbp], 0
	jmp	.L17
.L18:
	mov	eax, DWORD PTR -76[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE1:
	add	DWORD PTR -76[rbp], 1
.L17:
	mov	eax, DWORD PTR -100[rbp]
	cmp	DWORD PTR -76[rbp], eax
	jl	.L18
	mov	r12d, 0
	movsx	rax, ebx
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	lea	rbx, [rdx+rax]
.L20:
	cmp	QWORD PTR -48[rbp], rbx
	je	.L28
	sub	rbx, 32
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L20
.L28:
	nop
	mov	rsp, r14
	mov	eax, r12d
	mov	rdx, QWORD PTR -40[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L25
	jmp	.L27
.L26:
	endbr64
	mov	r12, rax
	movsx	rax, ebx
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	lea	rbx, [rdx+rax]
.L24:
	cmp	QWORD PTR -48[rbp], rbx
	je	.L29
	sub	rbx, 32
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L24
.L29:
	nop
	mov	rax, r12
	mov	rdi, rax
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L27:
	call	__stack_chk_fail@PLT
.L25:
	lea	rsp, -32[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1731:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1731:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1731-.LLSDACSB1731
.LLSDACSB1731:
	.uleb128 .LEHB0-.LFB1731
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1731
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L26-.LFB1731
	.uleb128 0
	.uleb128 .LEHB2-.LFB1731
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1731:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2238:
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
	jne	.L32
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L32
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
.L32:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2238:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2239:
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
.LFE2239:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
