	.file	"K_max_element_in_stack.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB1007:
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
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1007:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3255:
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L4
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L5
.L4:
	mov	rax, QWORD PTR -8[rbp]
.L5:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3255:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZSt16__deque_buf_sizem,"axG",@progbits,_ZSt16__deque_buf_sizem,comdat
	.weak	_ZSt16__deque_buf_sizem
	.type	_ZSt16__deque_buf_sizem, @function
_ZSt16__deque_buf_sizem:
.LFB4252:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 511
	ja	.L7
	mov	eax, 512
	mov	edx, 0
	div	QWORD PTR -8[rbp]
	jmp	.L9
.L7:
	mov	eax, 1
.L9:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4252:
	.size	_ZSt16__deque_buf_sizem, .-_ZSt16__deque_buf_sizem
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.align 4
	.type	_ZNSt15regex_constantsL13error_collateE, @object
	.size	_ZNSt15regex_constantsL13error_collateE, 4
_ZNSt15regex_constantsL13error_collateE:
	.zero	4
	.align 4
	.type	_ZNSt15regex_constantsL11error_ctypeE, @object
	.size	_ZNSt15regex_constantsL11error_ctypeE, 4
_ZNSt15regex_constantsL11error_ctypeE:
	.long	1
	.align 4
	.type	_ZNSt15regex_constantsL12error_escapeE, @object
	.size	_ZNSt15regex_constantsL12error_escapeE, 4
_ZNSt15regex_constantsL12error_escapeE:
	.long	2
	.align 4
	.type	_ZNSt15regex_constantsL13error_backrefE, @object
	.size	_ZNSt15regex_constantsL13error_backrefE, 4
_ZNSt15regex_constantsL13error_backrefE:
	.long	3
	.align 4
	.type	_ZNSt15regex_constantsL11error_brackE, @object
	.size	_ZNSt15regex_constantsL11error_brackE, 4
_ZNSt15regex_constantsL11error_brackE:
	.long	4
	.align 4
	.type	_ZNSt15regex_constantsL11error_parenE, @object
	.size	_ZNSt15regex_constantsL11error_parenE, 4
_ZNSt15regex_constantsL11error_parenE:
	.long	5
	.align 4
	.type	_ZNSt15regex_constantsL11error_braceE, @object
	.size	_ZNSt15regex_constantsL11error_braceE, 4
_ZNSt15regex_constantsL11error_braceE:
	.long	6
	.align 4
	.type	_ZNSt15regex_constantsL14error_badbraceE, @object
	.size	_ZNSt15regex_constantsL14error_badbraceE, 4
_ZNSt15regex_constantsL14error_badbraceE:
	.long	7
	.align 4
	.type	_ZNSt15regex_constantsL11error_rangeE, @object
	.size	_ZNSt15regex_constantsL11error_rangeE, 4
_ZNSt15regex_constantsL11error_rangeE:
	.long	8
	.align 4
	.type	_ZNSt15regex_constantsL11error_spaceE, @object
	.size	_ZNSt15regex_constantsL11error_spaceE, 4
_ZNSt15regex_constantsL11error_spaceE:
	.long	9
	.align 4
	.type	_ZNSt15regex_constantsL15error_badrepeatE, @object
	.size	_ZNSt15regex_constantsL15error_badrepeatE, 4
_ZNSt15regex_constantsL15error_badrepeatE:
	.long	10
	.align 4
	.type	_ZNSt15regex_constantsL16error_complexityE, @object
	.size	_ZNSt15regex_constantsL16error_complexityE, 4
_ZNSt15regex_constantsL16error_complexityE:
	.long	11
	.align 4
	.type	_ZNSt15regex_constantsL11error_stackE, @object
	.size	_ZNSt15regex_constantsL11error_stackE, 4
_ZNSt15regex_constantsL11error_stackE:
	.long	12
	.align 8
	.type	_ZNSt8__detailL19_S_invalid_state_idE, @object
	.size	_ZNSt8__detailL19_S_invalid_state_idE, 8
_ZNSt8__detailL19_S_invalid_state_idE:
	.quad	-1
.LC0:
	.string	"r"
.LC1:
	.string	"input.txt"
.LC2:
	.string	"w"
.LC3:
	.string	"output.txt"
	.text
	.globl	_Z5setupv
	.type	_Z5setupv, @function
_Z5setupv:
.LFB9704:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 0
	call	_ZNSt8ios_base15sync_with_stdioEb@PLT
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	mov	rax, QWORD PTR stdin[rip]
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	freopen@PLT
	mov	rax, QWORD PTR stdout[rip]
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	freopen@PLT
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.size	_Z5setupv, .-_Z5setupv
	.section	.text._ZN7MyStack6getMaxEv,"axG",@progbits,_ZN7MyStack6getMaxEv,comdat
	.align 2
	.weak	_ZN7MyStack6getMaxEv
	.type	_ZN7MyStack6getMaxEv, @function
_ZN7MyStack6getMaxEv:
.LFB9705:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 80[rax]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9705:
	.size	_ZN7MyStack6getMaxEv, .-_ZN7MyStack6getMaxEv
	.section	.text._ZN7MyStack3popEv,"axG",@progbits,_ZN7MyStack3popEv,comdat
	.align 2
	.weak	_ZN7MyStack3popEv
	.type	_ZN7MyStack3popEv, @function
_ZN7MyStack3popEv:
.LFB9707:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv
	test	al, al
	jne	.L15
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 80[rax]
	cmp	QWORD PTR -8[rbp], rax
	jle	.L12
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 80[rax]
	add	rax, rax
	sub	rax, QWORD PTR -8[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 80[rax], rdx
	jmp	.L12
.L15:
	nop
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9707:
	.size	_ZN7MyStack3popEv, .-_ZN7MyStack3popEv
	.section	.text._ZN7MyStack4pushEx,"axG",@progbits,_ZN7MyStack4pushEx,comdat
	.align 2
	.weak	_ZN7MyStack4pushEx
	.type	_ZN7MyStack4pushEx, @function
_ZN7MyStack4pushEx:
.LFB9708:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv
	test	al, al
	je	.L17
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 80[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushERKx
	jmp	.L16
.L17:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 80[rax]
	mov	rax, QWORD PTR -32[rbp]
	cmp	rdx, rax
	jge	.L19
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	lea	rcx, [rdx+rdx]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR 80[rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	mov	QWORD PTR -16[rbp], rdx
	lea	rdx, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 80[rax], rdx
	jmp	.L16
.L19:
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushERKx
.L16:
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9708:
	.size	_ZN7MyStack4pushEx, .-_ZN7MyStack4pushEx
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEED2Ev,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEED5Ev,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev, @function
_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev:
.LFB9713:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9713:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev, .-_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEED1Ev
	.set	_ZNSt5stackIxSt5dequeIxSaIxEEED1Ev,_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev
	.section	.text._ZN7MyStackC2Ev,"axG",@progbits,_ZN7MyStackC5Ev,comdat
	.align 2
	.weak	_ZN7MyStackC2Ev
	.type	_ZN7MyStackC2Ev, @function
_ZN7MyStackC2Ev:
.LFB9715:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIxSt5dequeIxSaIxEEEC1IS2_vEEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9715:
	.size	_ZN7MyStackC2Ev, .-_ZN7MyStackC2Ev
	.weak	_ZN7MyStackC1Ev
	.set	_ZN7MyStackC1Ev,_ZN7MyStackC2Ev
	.section	.text._ZN7MyStackD2Ev,"axG",@progbits,_ZN7MyStackD5Ev,comdat
	.align 2
	.weak	_ZN7MyStackD2Ev
	.type	_ZN7MyStackD2Ev, @function
_ZN7MyStackD2Ev:
.LFB9718:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIxSt5dequeIxSaIxEEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9718:
	.size	_ZN7MyStackD2Ev, .-_ZN7MyStackD2Ev
	.weak	_ZN7MyStackD1Ev
	.set	_ZN7MyStackD1Ev,_ZN7MyStackD2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB9709:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9709
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 120
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
.LEHB0:
	call	_Z5setupv
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZN7MyStackC1Ev
.LEHE0:
	jmp	.L25
.L28:
	lea	rax, -124[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB1:
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -124[rbp]
	cmp	eax, 1
	jne	.L26
	lea	rax, -120[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN7MyStack4pushEx
	jmp	.L27
.L26:
	mov	eax, DWORD PTR -124[rbp]
	cmp	eax, 2
	jne	.L27
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZN7MyStack3popEv
.L27:
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZN7MyStack6getMaxEv
.LEHE1:
.L25:
	mov	eax, DWORD PTR -128[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -128[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L28
	mov	ebx, 0
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZN7MyStackD1Ev
	mov	eax, ebx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L31
	jmp	.L33
.L32:
	endbr64
	mov	rbx, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZN7MyStackD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L33:
	call	__stack_chk_fail@PLT
.L31:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9709:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9709:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9709-.LLSDACSB9709
.LLSDACSB9709:
	.uleb128 .LEHB0-.LFB9709
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9709
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L32-.LFB9709
	.uleb128 0
	.uleb128 .LEHB2-.LFB9709
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE9709:
	.text
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB10031:
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L35
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L36
.L35:
	mov	rax, QWORD PTR -8[rbp]
.L36:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10031:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv,"axG",@progbits,_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv
	.type	_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv, @function
_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv:
.LFB10410:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt5dequeIxSaIxEE5emptyEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10410:
	.size	_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv, .-_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEE3topEv,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv, @function
_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv:
.LFB10411:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE4backEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10411:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv, .-_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEE3popEv,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv, @function
_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv:
.LFB10412:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE8pop_backEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10412:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv, .-_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEE4pushERKx,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEE4pushERKx,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushERKx
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushERKx, @function
_ZNSt5stackIxSt5dequeIxSaIxEEE4pushERKx:
.LFB10413:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE9push_backERKx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10413:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushERKx, .-_ZNSt5stackIxSt5dequeIxSaIxEEE4pushERKx
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx, @function
_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx:
.LFB10414:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSt5dequeIxSaIxEE9push_backEOx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10414:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx, .-_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx
	.section	.text._ZNSt5dequeIxSaIxEEC2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEEC2Ev
	.type	_ZNSt5dequeIxSaIxEEC2Ev, @function
_ZNSt5dequeIxSaIxEEC2Ev:
.LFB10417:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10417:
	.size	_ZNSt5dequeIxSaIxEEC2Ev, .-_ZNSt5dequeIxSaIxEEC2Ev
	.weak	_ZNSt5dequeIxSaIxEEC1Ev
	.set	_ZNSt5dequeIxSaIxEEC1Ev,_ZNSt5dequeIxSaIxEEC2Ev
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEEC5IS2_vEEv,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv, @function
_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv:
.LFB10419:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	QWORD PTR 8[rax], 0
	mov	QWORD PTR 16[rax], 0
	mov	QWORD PTR 24[rax], 0
	mov	QWORD PTR 32[rax], 0
	mov	QWORD PTR 40[rax], 0
	mov	QWORD PTR 48[rax], 0
	mov	QWORD PTR 56[rax], 0
	mov	QWORD PTR 64[rax], 0
	mov	QWORD PTR 72[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10419:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv, .-_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEEC1IS2_vEEv
	.set	_ZNSt5stackIxSt5dequeIxSaIxEEEC1IS2_vEEv,_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEED2Ev
	.type	_ZNSt5dequeIxSaIxEED2Ev, @function
_ZNSt5dequeIxSaIxEED2Ev:
.LFB10422:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10422
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 104
	.cfi_offset 3, -24
	mov	QWORD PTR -104[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE3endEv
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE5beginEv
	lea	rdx, -64[rbp]
	lea	rsi, -96[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEED2Ev
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L47
	call	__stack_chk_fail@PLT
.L47:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10422:
	.section	.gcc_except_table
.LLSDA10422:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10422-.LLSDACSB10422
.LLSDACSB10422:
.LLSDACSE10422:
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.size	_ZNSt5dequeIxSaIxEED2Ev, .-_ZNSt5dequeIxSaIxEED2Ev
	.weak	_ZNSt5dequeIxSaIxEED1Ev
	.set	_ZNSt5dequeIxSaIxEED1Ev,_ZNSt5dequeIxSaIxEED2Ev
	.section	.text._ZNKSt5dequeIxSaIxEE5emptyEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIxSaIxEE5emptyEv
	.type	_ZNKSt5dequeIxSaIxEE5emptyEv, @function
_ZNKSt5dequeIxSaIxEE5emptyEv:
.LFB10816:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 48
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10816:
	.size	_ZNKSt5dequeIxSaIxEE5emptyEv, .-_ZNKSt5dequeIxSaIxEE5emptyEv
	.section	.text._ZNSt5dequeIxSaIxEE4backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE4backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE4backEv
	.type	_ZNSt5dequeIxSaIxEE4backEv, @function
_ZNSt5dequeIxSaIxEE4backEv:
.LFB10817:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE3endEv
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L52
	call	__stack_chk_fail@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10817:
	.size	_ZNSt5dequeIxSaIxEE4backEv, .-_ZNSt5dequeIxSaIxEE4backEv
	.section	.text._ZNSt5dequeIxSaIxEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE8pop_backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE8pop_backEv
	.type	_ZNSt5dequeIxSaIxEE8pop_backEv, @function
_ZNSt5dequeIxSaIxEE8pop_backEv:
.LFB10818:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 56[rax]
	cmp	rdx, rax
	je	.L54
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 48[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	jmp	.L56
.L54:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
.L56:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10818:
	.size	_ZNSt5dequeIxSaIxEE8pop_backEv, .-_ZNSt5dequeIxSaIxEE8pop_backEv
	.section	.text._ZNSt5dequeIxSaIxEE9push_backERKx,"axG",@progbits,_ZNSt5dequeIxSaIxEE9push_backERKx,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE9push_backERKx
	.type	_ZNSt5dequeIxSaIxEE9push_backERKx, @function
_ZNSt5dequeIxSaIxEE9push_backERKx:
.LFB10820:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 64[rax]
	sub	rax, 8
	cmp	rdx, rax
	je	.L58
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 48[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 48[rax], rdx
	jmp	.L60
.L58:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
.L60:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10820:
	.size	_ZNSt5dequeIxSaIxEE9push_backERKx, .-_ZNSt5dequeIxSaIxEE9push_backERKx
	.section	.text._ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_:
.LFB10821:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10821:
	.size	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt5dequeIxSaIxEE9push_backEOx,"axG",@progbits,_ZNSt5dequeIxSaIxEE9push_backEOx,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE9push_backEOx
	.type	_ZNSt5dequeIxSaIxEE9push_backEOx, @function
_ZNSt5dequeIxSaIxEE9push_backEOx:
.LFB10822:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE12emplace_backIJxEEERxDpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10822:
	.size	_ZNSt5dequeIxSaIxEE9push_backEOx, .-_ZNSt5dequeIxSaIxEE9push_backEOx
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev:
.LFB10826:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10826:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEEC2Ev, @function
_ZNSt11_Deque_baseIxSaIxEEC2Ev:
.LFB10828:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10828
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
.LEHB3:
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
.LEHE3:
	jmp	.L68
.L67:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L68:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10828:
	.section	.gcc_except_table
.LLSDA10828:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10828-.LLSDACSB10828
.LLSDACSB10828:
	.uleb128 .LEHB3-.LFB10828
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L67-.LFB10828
	.uleb128 0
	.uleb128 .LEHB4-.LFB10828
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE10828:
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5Ev,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEEC2Ev, .-_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEEC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEEC1Ev,_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEED2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEED2Ev, @function
_ZNSt11_Deque_baseIxSaIxEED2Ev:
.LFB10831:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L70
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 40[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
.L70:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10831:
	.size	_ZNSt11_Deque_baseIxSaIxEED2Ev, .-_ZNSt11_Deque_baseIxSaIxEED2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEED1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEED1Ev,_ZNSt11_Deque_baseIxSaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEE5beginEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5beginEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE5beginEv
	.type	_ZNSt5dequeIxSaIxEE5beginEv, @function
_ZNSt5dequeIxSaIxEE5beginEv:
.LFB10833:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10833:
	.size	_ZNSt5dequeIxSaIxEE5beginEv, .-_ZNSt5dequeIxSaIxEE5beginEv
	.section	.text._ZNSt5dequeIxSaIxEE3endEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE3endEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE3endEv
	.type	_ZNSt5dequeIxSaIxEE3endEv, @function
_ZNSt5dequeIxSaIxEE3endEv:
.LFB10834:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10834:
	.size	_ZNSt5dequeIxSaIxEE3endEv, .-_ZNSt5dequeIxSaIxEE3endEv
	.section	.text._ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB10835:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10835:
	.size	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.type	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, @function
_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_:
.LFB10836:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L78
	call	__stack_chk_fail@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10836:
	.size	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, .-_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.section	.text._ZSteqRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.weak	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, @function
_ZSteqRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11033:
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	sete	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11033:
	.size	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, .-_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEmmEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.type	_ZNSt15_Deque_iteratorIxRxPxEmmEv, @function
_ZNSt15_Deque_iteratorIxRxPxEmmEv:
.LFB11034:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	rdx, rax
	jne	.L82
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
.L82:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11034:
	.size	_ZNSt15_Deque_iteratorIxRxPxEmmEv, .-_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.section	.text._ZNKSt15_Deque_iteratorIxRxPxEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIxRxPxEdeEv,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.type	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, @function
_ZNKSt15_Deque_iteratorIxRxPxEdeEv:
.LFB11035:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11035:
	.size	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, .-_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, @function
_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_:
.LFB11036:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11036:
	.size	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.section	.text._ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.type	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, @function
_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv:
.LFB11037:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 56[rdx]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	sub	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 64[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11037:
	.size	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, .-_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_:
.LFB11038:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11038:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.section	.rodata
	.align 8
.LC4:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.type	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_, @function
_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_:
.LFB11039:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt5dequeIxSaIxEE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt5dequeIxSaIxEE8max_sizeEv
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L90
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L90:
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	lea	rbx, 8[rdx]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	add	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 56[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11039:
	.size	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_, .-_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.section	.text._ZNSt5dequeIxSaIxEE12emplace_backIJxEEERxDpOT_,"axG",@progbits,_ZNSt5dequeIxSaIxEE12emplace_backIJxEEERxDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE12emplace_backIJxEEERxDpOT_
	.type	_ZNSt5dequeIxSaIxEE12emplace_backIJxEEERxDpOT_, @function
_ZNSt5dequeIxSaIxEE12emplace_backIJxEEERxDpOT_:
.LFB11040:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 64[rax]
	sub	rax, 8
	cmp	rdx, rax
	je	.L92
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 48[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 48[rax], rdx
	jmp	.L93
.L92:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_
.L93:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE4backEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11040:
	.size	_ZNSt5dequeIxSaIxEE12emplace_backIJxEEERxDpOT_, .-_ZNSt5dequeIxSaIxEE12emplace_backIJxEEERxDpOT_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev:
.LFB11042:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaIxEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11042:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED5Ev,comdat
	.align 2
	.weak	_ZNSaIxED2Ev
	.type	_ZNSaIxED2Ev, @function
_ZNSaIxED2Ev:
.LFB11045:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11045:
	.size	_ZNSaIxED2Ev, .-_ZNSaIxED2Ev
	.weak	_ZNSaIxED1Ev
	.set	_ZNSaIxED1Ev,_ZNSaIxED2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm:
.LFB11047:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11047
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 72
	.cfi_offset 3, -24
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	mov	rbx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, 0
	div	rbx
	add	rax, 1
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 2
	mov	QWORD PTR -56[rbp], rax
	mov	QWORD PTR -64[rbp], 8
	lea	rdx, -56[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxImERKT_S2_S2_
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB5:
	call	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
.LEHE5:
	mov	rdx, QWORD PTR -72[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -48[rbp]
	shr	rax
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB6:
	call	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
.LEHE6:
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -32[rbp]
	sub	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rbx, QWORD PTR 56[rax]
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	mov	rcx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, 0
	div	rcx
	mov	rcx, rdx
	mov	rax, rcx
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 48[rax], rdx
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L100
	jmp	.L103
.L101:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 8[rax], 0
.LEHB7:
	call	__cxa_rethrow@PLT
.LEHE7:
.L102:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L103:
	call	__stack_chk_fail@PLT
.L100:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11047:
	.section	.gcc_except_table
	.align 4
.LLSDA11047:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11047-.LLSDATTD11047
.LLSDATTD11047:
	.byte	0x1
	.uleb128 .LLSDACSE11047-.LLSDACSB11047
.LLSDACSB11047:
	.uleb128 .LEHB5-.LFB11047
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB11047
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L101-.LFB11047
	.uleb128 0x1
	.uleb128 .LEHB7-.LFB11047
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L102-.LFB11047
	.uleb128 0
	.uleb128 .LEHB8-.LFB11047
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE11047:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11047:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, @function
_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_:
.LFB11048:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L105
.L106:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	add	QWORD PTR -8[rbp], 8
.L105:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jb	.L106
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11048:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, @function
_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm:
.LFB11049:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11049
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -9[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	lea	rax, -9[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	lea	rax, -9[rbp]
	mov	rdi, rax
	call	_ZNSaIPxED1Ev
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11049:
	.section	.gcc_except_table
.LLSDA11049:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11049-.LLSDACSB11049
.LLSDACSB11049:
.LLSDACSE11049:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, @function
_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_:
.LFB11051:
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11051:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, .-_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_,_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, @function
_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_:
.LFB11190:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 8[rax]
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11190:
	.size	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_:
.LFB11191:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11191:
	.size	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.type	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, @function
_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx:
.LFB11192:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11192
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11192:
	.section	.gcc_except_table
.LLSDA11192:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11192-.LLSDACSB11192
.LLSDACSB11192:
.LLSDACSE11192:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, .-_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.section	.text._ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11193:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11193:
	.size	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_:
.LFB11194:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	QWORD PTR [rax], rbx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11194:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.section	.text._ZNKSt5dequeIxSaIxEE4sizeEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIxSaIxEE4sizeEv
	.type	_ZNKSt5dequeIxSaIxEE4sizeEv, @function
_ZNKSt5dequeIxSaIxEE4sizeEv:
.LFB11195:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 48
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11195:
	.size	_ZNKSt5dequeIxSaIxEE4sizeEv, .-_ZNKSt5dequeIxSaIxEE4sizeEv
	.section	.text._ZNKSt5dequeIxSaIxEE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIxSaIxEE8max_sizeEv
	.type	_ZNKSt5dequeIxSaIxEE8max_sizeEv, @function
_ZNKSt5dequeIxSaIxEE8max_sizeEv:
.LFB11196:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11196:
	.size	_ZNKSt5dequeIxSaIxEE8max_sizeEv, .-_ZNKSt5dequeIxSaIxEE8max_sizeEv
	.section	.text._ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm, @function
_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm:
.LFB11197:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	lea	rsi, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 72[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, QWORD PTR [rax]
	mov	rax, rcx
	sub	rax, rdi
	sar	rax, 3
	mov	rcx, rax
	mov	rax, rdx
	sub	rax, rcx
	cmp	rsi, rax
	jbe	.L122
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
.L122:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11197:
	.size	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm, .-_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, @function
_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv:
.LFB11198:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11198:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.section	.text._ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB11199:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11199:
	.size	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_:
.LFB11200:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11200:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	.section	.text._ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_
	.type	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_, @function
_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_:
.LFB11201:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt5dequeIxSaIxEE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt5dequeIxSaIxEE8max_sizeEv
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L129
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L129:
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	lea	rbx, 8[rdx]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	add	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 56[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11201:
	.size	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_, .-_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC5Ev,comdat
	.align 2
	.weak	_ZNSaIxEC2Ev
	.type	_ZNSaIxEC2Ev, @function
_ZNSaIxEC2Ev:
.LFB11203:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11203:
	.size	_ZNSaIxEC2Ev, .-_ZNSaIxEC2Ev
	.weak	_ZNSaIxEC1Ev
	.set	_ZNSaIxEC1Ev,_ZNSaIxEC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev:
.LFB11206:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 16
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 48
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11206:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:
.LFB11209:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11209:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxED1Ev,_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, @function
_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm:
.LFB11211:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11211
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -25[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB9:
	call	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
.LEHE9:
	mov	rbx, rax
	nop
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIPxED1Ev
	mov	rax, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L136
	jmp	.L138
.L137:
	endbr64
	mov	rbx, rax
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIPxED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L138:
	call	__stack_chk_fail@PLT
.L136:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11211:
	.section	.gcc_except_table
.LLSDA11211:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11211-.LLSDACSB11211
.LLSDACSB11211:
	.uleb128 .LEHB9-.LFB11211
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L137-.LFB11211
	.uleb128 0
	.uleb128 .LEHB10-.LFB11211
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE11211:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, @function
_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_:
.LFB11212:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11212
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L140
.L141:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
.LEHB11:
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
.LEHE11:
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rdx], rax
	add	QWORD PTR -24[rbp], 8
.L140:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -56[rbp]
	jb	.L141
	jmp	.L146
.L144:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
.LEHB12:
	call	__cxa_rethrow@PLT
.LEHE12:
.L145:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L146:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11212:
	.section	.gcc_except_table
	.align 4
.LLSDA11212:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11212-.LLSDATTD11212
.LLSDATTD11212:
	.byte	0x1
	.uleb128 .LLSDACSE11212-.LLSDACSB11212
.LLSDACSB11212:
	.uleb128 .LEHB11-.LFB11212
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L144-.LFB11212
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB11212
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L145-.LFB11212
	.uleb128 0
	.uleb128 .LEHB13-.LFB11212
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE11212:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11212:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, @function
_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv:
.LFB11213:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIPxEC1IxEERKSaIT_E
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11213:
	.size	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPxED2Ev,"axG",@progbits,_ZNSaIPxED5Ev,comdat
	.align 2
	.weak	_ZNSaIPxED2Ev
	.type	_ZNSaIPxED2Ev, @function
_ZNSaIPxED2Ev:
.LFB11215:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11215:
	.size	_ZNSaIPxED2Ev, .-_ZNSaIPxED2Ev
	.weak	_ZNSaIPxED1Ev
	.set	_ZNSaIPxED1Ev,_ZNSaIPxED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m:
.LFB11217:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11217:
	.size	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, @function
_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv:
.LFB11304:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 8
	call	_ZSt16__deque_buf_sizem
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11304:
	.size	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, @function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm:
.LFB11305:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11305:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.section	.text._ZStmiRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.weak	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_, @function
_ZStmiRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11306:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	rsi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	setne	al
	movzx	edx, al
	mov	rax, rcx
	sub	rax, rdx
	imul	rsi, rax
	mov	rcx, rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rsi
	sar	rax, 3
	lea	rsi, [rcx+rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	add	rax, rsi
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11306:
	.size	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_, .-_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.type	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, @function
_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_:
.LFB11307:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movabs	rax, 9223372036854775807
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L158
	call	__stack_chk_fail@PLT
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11307:
	.size	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, .-_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB11308:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11308:
	.size	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb, @function
_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb:
.LFB11309:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	eax, edx
	mov	BYTE PTR -84[rbp], al
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR 40[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	add	rax, 1
	mov	QWORD PTR -48[rbp], rax
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rdx
	cmp	rax, rdx
	jbe	.L162
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -40[rbp]
	shr	rax
	lea	rcx, 0[0+rax*8]
	cmp	BYTE PTR -84[rbp], 0
	je	.L163
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L164
.L163:
	mov	eax, 0
.L164:
	add	rax, rcx
	add	rax, rdx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	cmp	QWORD PTR -56[rbp], rax
	jnb	.L165
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	jmp	.L166
.L165:
	mov	rax, QWORD PTR -48[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	jmp	.L166
.L162:
	mov	rax, QWORD PTR -72[rbp]
	mov	rbx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 8[rax]
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZSt3maxImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	add	rax, 2
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -40[rbp]
	shr	rax
	lea	rdx, 0[0+rax*8]
	cmp	BYTE PTR -84[rbp], 0
	je	.L167
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L168
.L167:
	mov	eax, 0
.L168:
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
.L166:
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -48[rbp]
	sal	rdx, 3
	lea	rcx, -8[rdx]
	mov	rdx, QWORD PTR -56[rbp]
	add	rdx, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11309:
	.size	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m:
.LFB11310:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11310:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_:
.LFB11311:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	QWORD PTR [rax], rbx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11311:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:
.LFB11313:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11313:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1Ev,_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, @function
_ZNSt15_Deque_iteratorIxRxPxEC2Ev:
.LFB11316:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11316:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, .-_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1Ev,_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m:
.LFB11318:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11318:
	.size	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.section	.text._ZNSaIPxEC2IxEERKSaIT_E,"axG",@progbits,_ZNSaIPxEC5IxEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaIPxEC2IxEERKSaIT_E
	.type	_ZNSaIPxEC2IxEERKSaIT_E, @function
_ZNSaIPxEC2IxEERKSaIT_E:
.LFB11320:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11320:
	.size	_ZNSaIPxEC2IxEERKSaIT_E, .-_ZNSaIPxEC2IxEERKSaIT_E
	.weak	_ZNSaIPxEC1IxEERKSaIT_E
	.set	_ZNSaIPxEC1IxEERKSaIT_E,_ZNSaIPxEC2IxEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPxED2Ev:
.LFB11323:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11323:
	.size	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxED1Ev,_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m:
.LFB11325:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11325:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, @function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm:
.LFB11432:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11432:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_:
.LFB11433:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11433:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.section	.text._ZSt4copyIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIPPxS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.type	_ZSt4copyIPPxS1_ET0_T_S3_S2_, @function
_ZSt4copyIPPxS1_ET0_T_S3_S2_:
.LFB11434:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIPPxET_S2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIPPxET_S2_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11434:
	.size	_ZSt4copyIPPxS1_ET0_T_S3_S2_, .-_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.section	.text._ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.type	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_, @function
_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_:
.LFB11435:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIPPxET_S2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIPPxET_S2_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11435:
	.size	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_, .-_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv:
.LFB11437:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 1152921504606846975
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11437:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv:
.LFB11436:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L191
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L192
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L192:
	call	_ZSt17__throw_bad_allocv@PLT
.L191:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11436:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv:
.LFB11439:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 1152921504606846975
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11439:
	.size	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv:
.LFB11438:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L197
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L198
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L198:
	call	_ZSt17__throw_bad_allocv@PLT
.L197:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11438:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPxEC2Ev:
.LFB11441:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11441:
	.size	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev,_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv:
.LFB11511:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11511:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.section	.text._ZSt12__miter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__miter_baseIPPxET_S2_,comdat
	.weak	_ZSt12__miter_baseIPPxET_S2_
	.type	_ZSt12__miter_baseIPPxET_S2_, @function
_ZSt12__miter_baseIPPxET_S2_:
.LFB11512:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11512:
	.size	_ZSt12__miter_baseIPPxET_S2_, .-_ZSt12__miter_baseIPPxET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11513:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 32
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPxET_S2_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPxET_S2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPxET_S2_
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIPPxET_RKS2_S2_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11513:
	.size	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11515:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 32
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPxET_S2_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPxET_S2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPxET_S2_
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIPPxET_RKS2_S2_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11515:
	.size	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__niter_baseIPPxET_S2_,comdat
	.weak	_ZSt12__niter_baseIPPxET_S2_
	.type	_ZSt12__niter_baseIPPxET_S2_, @function
_ZSt12__niter_baseIPPxET_S2_:
.LFB11545:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11545:
	.size	_ZSt12__niter_baseIPPxET_S2_, .-_ZSt12__niter_baseIPPxET_S2_
	.section	.text._ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11546:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11546:
	.size	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIPPxET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIPPxET_RKS2_S2_,comdat
	.weak	_ZSt12__niter_wrapIPPxET_RKS2_S2_
	.type	_ZSt12__niter_wrapIPPxET_RKS2_S2_, @function
_ZSt12__niter_wrapIPPxET_RKS2_S2_:
.LFB11547:
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
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11547:
	.size	_ZSt12__niter_wrapIPPxET_RKS2_S2_, .-_ZSt12__niter_wrapIPPxET_RKS2_S2_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11548:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11548:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11552:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11552:
	.size	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11553:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11553:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_:
.LFB11565:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L222
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
.L222:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11565:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_, @function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_:
.LFB11567:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L225
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memmove@PLT
.L225:
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11567:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11606:
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
	jne	.L229
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L229
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
.L229:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11606:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5setupv, @function
_GLOBAL__sub_I__Z5setupv:
.LFB11629:
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
.LFE11629:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5setupv
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
