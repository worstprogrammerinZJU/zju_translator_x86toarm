	.file	"Alternating Current.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB38:
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
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEED2Ev,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEED5Ev,comdat
	.align 2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev, @function
_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev:
.LFB9707:
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
	call	_ZNSt5dequeIcSaIcEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9707:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev, .-_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev
	.set	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev,_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev
	.section	.rodata
.LC0:
	.string	"YES"
.LC1:
	.string	"NO"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9704:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9704
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
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB0:
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEEC1IS2_vEEv
.LEHE0:
	mov	DWORD PTR -148[rbp], 0
	jmp	.L12
.L18:
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	test	al, al
	jne	.L13
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -148[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	je	.L14
.L13:
	mov	eax, 1
	jmp	.L15
.L14:
	mov	eax, 0
.L15:
	test	al, al
	je	.L16
	mov	eax, DWORD PTR -148[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	mov	rdx, rax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc
	jmp	.L17
.L16:
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv
.L17:
	add	DWORD PTR -148[rbp], 1
.L12:
	mov	eax, DWORD PTR -148[rbp]
	movsx	rbx, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L18
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	test	al, al
	je	.L19
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L20
.L19:
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE1:
.L20:
	mov	ebx, 0
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	mov	eax, ebx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L24
	jmp	.L27
.L26:
	endbr64
	mov	rbx, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev
	jmp	.L23
.L25:
	endbr64
	mov	rbx, rax
.L23:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L27:
	call	__stack_chk_fail@PLT
.L24:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9704:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9704-.LLSDACSB9704
.LLSDACSB9704:
	.uleb128 .LEHB0-.LFB9704
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L25-.LFB9704
	.uleb128 0
	.uleb128 .LEHB1-.LFB9704
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L26-.LFB9704
	.uleb128 0
	.uleb128 .LEHB2-.LFB9704
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE9704:
	.text
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB10020:
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
	jnb	.L29
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L30
.L29:
	mov	rax, QWORD PTR -8[rbp]
.L30:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10020:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt5dequeIcSaIcEEC2Ev,"axG",@progbits,_ZNSt5dequeIcSaIcEEC5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEEC2Ev
	.type	_ZNSt5dequeIcSaIcEEC2Ev, @function
_ZNSt5dequeIcSaIcEEC2Ev:
.LFB10398:
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
	call	_ZNSt11_Deque_baseIcSaIcEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10398:
	.size	_ZNSt5dequeIcSaIcEEC2Ev, .-_ZNSt5dequeIcSaIcEEC2Ev
	.weak	_ZNSt5dequeIcSaIcEEC1Ev
	.set	_ZNSt5dequeIcSaIcEEC1Ev,_ZNSt5dequeIcSaIcEEC2Ev
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEEC5IS2_vEEv,comdat
	.align 2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv, @function
_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv:
.LFB10400:
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
	call	_ZNSt5dequeIcSaIcEEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10400:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv, .-_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEEC1IS2_vEEv
	.set	_ZNSt5stackIcSt5dequeIcSaIcEEEC1IS2_vEEv,_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv
	.section	.text._ZNSt5dequeIcSaIcEED2Ev,"axG",@progbits,_ZNSt5dequeIcSaIcEED5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEED2Ev
	.type	_ZNSt5dequeIcSaIcEED2Ev, @function
_ZNSt5dequeIcSaIcEED2Ev:
.LFB10403:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10403
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
	call	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE3endEv
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE5beginEv
	lea	rdx, -64[rbp]
	lea	rsi, -96[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEED2Ev
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10403:
	.section	.gcc_except_table
.LLSDA10403:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10403-.LLSDACSB10403
.LLSDACSB10403:
.LLSDACSE10403:
	.section	.text._ZNSt5dequeIcSaIcEED2Ev,"axG",@progbits,_ZNSt5dequeIcSaIcEED5Ev,comdat
	.size	_ZNSt5dequeIcSaIcEED2Ev, .-_ZNSt5dequeIcSaIcEED2Ev
	.weak	_ZNSt5dequeIcSaIcEED1Ev
	.set	_ZNSt5dequeIcSaIcEED1Ev,_ZNSt5dequeIcSaIcEED2Ev
	.section	.text._ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv,"axG",@progbits,_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	.type	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv, @function
_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv:
.LFB10405:
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
	call	_ZNKSt5dequeIcSaIcEE5emptyEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10405:
	.size	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv, .-_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEE3topEv,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv,comdat
	.align 2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv, @function
_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv:
.LFB10406:
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
	call	_ZNSt5dequeIcSaIcEE4backEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10406:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv, .-_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc,comdat
	.align 2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc, @function
_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc:
.LFB10407:
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
	call	_ZNSt5dequeIcSaIcEE9push_backERKc
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10407:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc, .-_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEE3popEv,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv,comdat
	.align 2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv, @function
_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv:
.LFB10408:
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
	call	_ZNSt5dequeIcSaIcEE8pop_backEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10408:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv, .-_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv
	.section	.text._ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev, @function
_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev:
.LFB10803:
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
	call	_ZNSaIcED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10803:
	.size	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEEC2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEEC2Ev, @function
_ZNSt11_Deque_baseIcSaIcEEC2Ev:
.LFB10805:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10805
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
	call	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC1Ev
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
.LEHB3:
	call	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
.LEHE3:
	jmp	.L45
.L44:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L45:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10805:
	.section	.gcc_except_table
.LLSDA10805:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10805-.LLSDACSB10805
.LLSDACSB10805:
	.uleb128 .LEHB3-.LFB10805
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L44-.LFB10805
	.uleb128 0
	.uleb128 .LEHB4-.LFB10805
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE10805:
	.section	.text._ZNSt11_Deque_baseIcSaIcEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEEC5Ev,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEEC2Ev, .-_ZNSt11_Deque_baseIcSaIcEEC2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEEC1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEEC1Ev,_ZNSt11_Deque_baseIcSaIcEEC2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEED2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEED2Ev, @function
_ZNSt11_Deque_baseIcSaIcEED2Ev:
.LFB10808:
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
	je	.L47
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 40[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
.L47:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10808:
	.size	_ZNSt11_Deque_baseIcSaIcEED2Ev, .-_ZNSt11_Deque_baseIcSaIcEED2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEED1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEED1Ev,_ZNSt11_Deque_baseIcSaIcEED2Ev
	.section	.text._ZNSt5dequeIcSaIcEE5beginEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE5beginEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE5beginEv
	.type	_ZNSt5dequeIcSaIcEE5beginEv, @function
_ZNSt5dequeIcSaIcEE5beginEv:
.LFB10810:
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
	call	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10810:
	.size	_ZNSt5dequeIcSaIcEE5beginEv, .-_ZNSt5dequeIcSaIcEE5beginEv
	.section	.text._ZNSt5dequeIcSaIcEE3endEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE3endEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE3endEv
	.type	_ZNSt5dequeIcSaIcEE3endEv, @function
_ZNSt5dequeIcSaIcEE3endEv:
.LFB10811:
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
	call	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10811:
	.size	_ZNSt5dequeIcSaIcEE3endEv, .-_ZNSt5dequeIcSaIcEE3endEv
	.section	.text._ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, @function
_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB10812:
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
.LFE10812:
	.size	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_,"axG",@progbits,_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_
	.type	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_, @function
_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_:
.LFB10813:
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
	je	.L55
	call	__stack_chk_fail@PLT
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10813:
	.size	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_, .-_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_
	.section	.text._ZNKSt5dequeIcSaIcEE5emptyEv,"axG",@progbits,_ZNKSt5dequeIcSaIcEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIcSaIcEE5emptyEv
	.type	_ZNKSt5dequeIcSaIcEE5emptyEv, @function
_ZNKSt5dequeIcSaIcEE5emptyEv:
.LFB10814:
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
	call	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10814:
	.size	_ZNKSt5dequeIcSaIcEE5emptyEv, .-_ZNKSt5dequeIcSaIcEE5emptyEv
	.section	.text._ZNSt5dequeIcSaIcEE4backEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE4backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE4backEv
	.type	_ZNSt5dequeIcSaIcEE4backEv, @function
_ZNSt5dequeIcSaIcEE4backEv:
.LFB10815:
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
	call	_ZNSt5dequeIcSaIcEE3endEv
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIcRcPcEmmEv
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIcRcPcEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10815:
	.size	_ZNSt5dequeIcSaIcEE4backEv, .-_ZNSt5dequeIcSaIcEE4backEv
	.section	.text._ZNSt5dequeIcSaIcEE9push_backERKc,"axG",@progbits,_ZNSt5dequeIcSaIcEE9push_backERKc,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE9push_backERKc
	.type	_ZNSt5dequeIcSaIcEE9push_backERKc, @function
_ZNSt5dequeIcSaIcEE9push_backERKc:
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 64[rax]
	sub	rax, 1
	cmp	rdx, rax
	je	.L62
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 48[rax]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 48[rax], rdx
	jmp	.L64
.L62:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
.L64:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10816:
	.size	_ZNSt5dequeIcSaIcEE9push_backERKc, .-_ZNSt5dequeIcSaIcEE9push_backERKc
	.section	.text._ZNSt5dequeIcSaIcEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE8pop_backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE8pop_backEv
	.type	_ZNSt5dequeIcSaIcEE8pop_backEv, @function
_ZNSt5dequeIcSaIcEE8pop_backEv:
.LFB10817:
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
	je	.L66
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 48[rax]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	jmp	.L68
.L66:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
.L68:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10817:
	.size	_ZNSt5dequeIcSaIcEE8pop_backEv, .-_ZNSt5dequeIcSaIcEE8pop_backEv
	.section	.text._ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.type	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, @function
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm:
.LFB10986:
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
	call	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10986:
	.size	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, .-_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.section	.text._ZNSt16allocator_traitsISaIcEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIcEE8allocateERS0_m:
.LFB10987:
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
	call	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10987:
	.size	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.section	.text._ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev, @function
_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev:
.LFB11016:
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
	call	_ZNSaIcEC2Ev@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11016:
	.size	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC1Ev,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm:
.LFB11018:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11018
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
	mov	edi, 1
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
	call	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
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
	call	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
.LEHE6:
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -32[rbp]
	sub	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rbx, QWORD PTR 56[rax]
	mov	edi, 1
	call	_ZSt16__deque_buf_sizem
	mov	rcx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, 0
	div	rcx
	mov	rcx, rdx
	mov	rax, rcx
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 48[rax], rdx
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L76
	jmp	.L79
.L77:
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
	call	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 8[rax], 0
.LEHB7:
	call	__cxa_rethrow@PLT
.LEHE7:
.L78:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L79:
	call	__stack_chk_fail@PLT
.L76:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11018:
	.section	.gcc_except_table
	.align 4
.LLSDA11018:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11018-.LLSDATTD11018
.LLSDATTD11018:
	.byte	0x1
	.uleb128 .LLSDACSE11018-.LLSDACSB11018
.LLSDACSB11018:
	.uleb128 .LEHB5-.LFB11018
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB11018
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L77-.LFB11018
	.uleb128 0x1
	.uleb128 .LEHB7-.LFB11018
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L78-.LFB11018
	.uleb128 0
	.uleb128 .LEHB8-.LFB11018
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE11018:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11018:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	.type	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_, @function
_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_:
.LFB11019:
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
	jmp	.L81
.L82:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	add	QWORD PTR -8[rbp], 8
.L81:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jb	.L82
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11019:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_, .-_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	.type	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm, @function
_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm:
.LFB11020:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11020
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
	call	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	lea	rax, -9[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m
	lea	rax, -9[rbp]
	mov	rdi, rax
	call	_ZNSaIPcED1Ev
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L84
	call	__stack_chk_fail@PLT
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11020:
	.section	.gcc_except_table
.LLSDA11020:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11020-.LLSDACSB11020
.LLSDACSB11020:
.LLSDACSE11020:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm, .-_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	.section	.text._ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_, @function
_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_:
.LFB11022:
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
.LFE11022:
	.size	_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_, .-_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_,_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_
	.section	.text._ZSteqRKSt15_Deque_iteratorIcRcPcES4_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIcRcPcES4_,comdat
	.weak	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_
	.type	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_, @function
_ZSteqRKSt15_Deque_iteratorIcRcPcES4_:
.LFB11025:
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
.LFE11025:
	.size	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_, .-_ZSteqRKSt15_Deque_iteratorIcRcPcES4_
	.section	.text._ZNSt15_Deque_iteratorIcRcPcEmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcEmmEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIcRcPcEmmEv
	.type	_ZNSt15_Deque_iteratorIcRcPcEmmEv, @function
_ZNSt15_Deque_iteratorIcRcPcEmmEv:
.LFB11026:
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
	jne	.L89
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
.L89:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11026:
	.size	_ZNSt15_Deque_iteratorIcRcPcEmmEv, .-_ZNSt15_Deque_iteratorIcRcPcEmmEv
	.section	.text._ZNKSt15_Deque_iteratorIcRcPcEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIcRcPcEdeEv,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorIcRcPcEdeEv
	.type	_ZNKSt15_Deque_iteratorIcRcPcEdeEv, @function
_ZNKSt15_Deque_iteratorIcRcPcEdeEv:
.LFB11027:
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
.LFE11027:
	.size	_ZNKSt15_Deque_iteratorIcRcPcEdeEv, .-_ZNKSt15_Deque_iteratorIcRcPcEdeEv
	.section	.text._ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_:
.LFB11028:
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
	call	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11028:
	.size	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	.section	.rodata
	.align 8
.LC2:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
	.type	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_, @function
_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_:
.LFB11029:
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
	call	_ZNKSt5dequeIcSaIcEE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt5dequeIcSaIcEE8max_sizeEv
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L95
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L95:
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	lea	rbx, 8[rdx]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	add	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
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
.LFE11029:
	.size	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_, .-_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
	.section	.text._ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_, @function
_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_:
.LFB11030:
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
	call	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11030:
	.size	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	.section	.text._ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
	.type	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv, @function
_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv:
.LFB11031:
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
	call	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	sub	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 64[rax]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11031:
	.size	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv, .-_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.type	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, @function
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm:
.LFB11137:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11137:
	.size	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, .-_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv:
.LFB11139:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 9223372036854775807
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11139:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv:
.LFB11138:
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
	call	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L103
	call	_ZSt17__throw_bad_allocv@PLT
.L103:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11138:
	.size	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev, @function
_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev:
.LFB11170:
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
	call	_ZNSt15_Deque_iteratorIcRcPcEC1Ev
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 48
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIcRcPcEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11170:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm, @function
_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm:
.LFB11172:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11172
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
	call	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB9:
	call	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m
.LEHE9:
	mov	rbx, rax
	nop
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIPcED1Ev
	mov	rax, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L109
	jmp	.L111
.L110:
	endbr64
	mov	rbx, rax
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIPcED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L111:
	call	__stack_chk_fail@PLT
.L109:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11172:
	.section	.gcc_except_table
.LLSDA11172:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11172-.LLSDACSB11172
.LLSDACSB11172:
	.uleb128 .LEHB9-.LFB11172
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L110-.LFB11172
	.uleb128 0
	.uleb128 .LEHB10-.LFB11172
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE11172:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
	.type	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_, @function
_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_:
.LFB11173:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11173
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
	jmp	.L113
.L114:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
.LEHB11:
	call	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
.LEHE11:
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rdx], rax
	add	QWORD PTR -24[rbp], 8
.L113:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -56[rbp]
	jb	.L114
	jmp	.L119
.L117:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
.LEHB12:
	call	__cxa_rethrow@PLT
.LEHE12:
.L118:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L119:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11173:
	.section	.gcc_except_table
	.align 4
.LLSDA11173:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11173-.LLSDATTD11173
.LLSDATTD11173:
	.byte	0x1
	.uleb128 .LLSDACSE11173-.LLSDACSB11173
.LLSDACSB11173:
	.uleb128 .LEHB11-.LFB11173
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L117-.LFB11173
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB11173
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L118-.LFB11173
	.uleb128 0
	.uleb128 .LEHB13-.LFB11173
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE11173:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11173:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_, .-_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
	.section	.text._ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_, @function
_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_:
.LFB11174:
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
	call	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11174:
	.size	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	.section	.text._ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	.type	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc, @function
_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc:
.LFB11175:
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
	mov	edi, 1
	call	_ZSt16__deque_buf_sizem
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11175:
	.size	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc, .-_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	.section	.text._ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv, @function
_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv:
.LFB11176:
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
	call	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIPcEC1IcEERKSaIT_E
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11176:
	.size	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPcED2Ev,"axG",@progbits,_ZNSaIPcED5Ev,comdat
	.align 2
	.weak	_ZNSaIPcED2Ev
	.type	_ZNSaIPcED2Ev, @function
_ZNSaIPcED2Ev:
.LFB11178:
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
	call	_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11178:
	.size	_ZNSaIPcED2Ev, .-_ZNSaIPcED2Ev
	.weak	_ZNSaIPcED1Ev
	.set	_ZNSaIPcED1Ev,_ZNSaIPcED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m:
.LFB11180:
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
	call	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11180:
	.size	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m
	.section	.text._ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11183:
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
.LFE11183:
	.size	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_:
.LFB11184:
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
	call	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	movzx	ebx, BYTE PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 1
	call	_ZnwmPv
	mov	BYTE PTR [rax], bl
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11184:
	.size	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	.section	.text._ZNKSt5dequeIcSaIcEE4sizeEv,"axG",@progbits,_ZNKSt5dequeIcSaIcEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIcSaIcEE4sizeEv
	.type	_ZNKSt5dequeIcSaIcEE4sizeEv, @function
_ZNKSt5dequeIcSaIcEE4sizeEv:
.LFB11185:
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
	call	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11185:
	.size	_ZNKSt5dequeIcSaIcEE4sizeEv, .-_ZNKSt5dequeIcSaIcEE4sizeEv
	.section	.text._ZNKSt5dequeIcSaIcEE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeIcSaIcEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIcSaIcEE8max_sizeEv
	.type	_ZNKSt5dequeIcSaIcEE8max_sizeEv, @function
_ZNKSt5dequeIcSaIcEE8max_sizeEv:
.LFB11186:
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
	call	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11186:
	.size	_ZNKSt5dequeIcSaIcEE8max_sizeEv, .-_ZNKSt5dequeIcSaIcEE8max_sizeEv
	.section	.text._ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm, @function
_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm:
.LFB11187:
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
	jbe	.L135
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
.L135:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11187:
	.size	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm, .-_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv, @function
_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv:
.LFB11188:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	edi, 1
	call	_ZSt16__deque_buf_sizem
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11188:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_:
.LFB11189:
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
.LFE11189:
	.size	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	.section	.text._ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_:
.LFB11217:
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
	call	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11217:
	.size	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.section	.text._ZNSt15_Deque_iteratorIcRcPcEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcEC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC2Ev
	.type	_ZNSt15_Deque_iteratorIcRcPcEC2Ev, @function
_ZNSt15_Deque_iteratorIcRcPcEC2Ev:
.LFB11275:
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
.LFE11275:
	.size	_ZNSt15_Deque_iteratorIcRcPcEC2Ev, .-_ZNSt15_Deque_iteratorIcRcPcEC2Ev
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC1Ev
	.set	_ZNSt15_Deque_iteratorIcRcPcEC1Ev,_ZNSt15_Deque_iteratorIcRcPcEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPcEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m:
.LFB11277:
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
	call	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11277:
	.size	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m
	.section	.text._ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv, @function
_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv:
.LFB11278:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 1
	call	_ZSt16__deque_buf_sizem
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11278:
	.size	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
	.section	.text._ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, @function
_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB11279:
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
.LFE11279:
	.size	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIPcEC2IcEERKSaIT_E,"axG",@progbits,_ZNSaIPcEC5IcEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaIPcEC2IcEERKSaIT_E
	.type	_ZNSaIPcEC2IcEERKSaIT_E, @function
_ZNSaIPcEC2IcEERKSaIT_E:
.LFB11281:
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
	call	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11281:
	.size	_ZNSaIPcEC2IcEERKSaIT_E, .-_ZNSaIPcEC2IcEERKSaIT_E
	.weak	_ZNSaIPcEC1IcEERKSaIT_E
	.set	_ZNSaIPcEC1IcEERKSaIT_E,_ZNSaIPcEC2IcEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPcED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPcED2Ev:
.LFB11284:
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
.LFE11284:
	.size	_ZN9__gnu_cxx13new_allocatorIPcED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPcED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPcED1Ev,_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m:
.LFB11286:
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
.LFE11286:
	.size	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m
	.section	.text._ZStmiRKSt15_Deque_iteratorIcRcPcES4_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIcRcPcES4_,comdat
	.weak	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_
	.type	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_, @function
_ZStmiRKSt15_Deque_iteratorIcRcPcES4_:
.LFB11288:
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
	call	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
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
	mov	rax, QWORD PTR 8[rax]
	sub	rdx, rax
	add	rcx, rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	lea	rax, [rcx+rdx]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11288:
	.size	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_, .-_ZStmiRKSt15_Deque_iteratorIcRcPcES4_
	.section	.text._ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_
	.type	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_, @function
_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_:
.LFB11289:
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
	call	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L156
	call	__stack_chk_fail@PLT
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11289:
	.size	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_, .-_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_
	.section	.text._ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb, @function
_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb:
.LFB11290:
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
	jbe	.L158
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -40[rbp]
	shr	rax
	lea	rcx, 0[0+rax*8]
	cmp	BYTE PTR -84[rbp], 0
	je	.L159
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L160
.L159:
	mov	eax, 0
.L160:
	add	rax, rcx
	add	rax, rdx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	cmp	QWORD PTR -56[rbp], rax
	jnb	.L161
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt4copyIPPcS1_ET0_T_S3_S2_
	jmp	.L162
.L161:
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
	call	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_
	jmp	.L162
.L158:
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
	call	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -40[rbp]
	shr	rax
	lea	rdx, 0[0+rax*8]
	cmp	BYTE PTR -84[rbp], 0
	je	.L163
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L164
.L163:
	mov	eax, 0
.L164:
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
	call	_ZSt4copyIPPcS1_ET0_T_S3_S2_
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
.L162:
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -48[rbp]
	sal	rdx, 3
	lea	rcx, -8[rdx]
	mov	rdx, QWORD PTR -56[rbp]
	add	rdx, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11290:
	.size	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11306:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv:
.LFB11397:
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
.LFE11397:
	.size	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv:
.LFB11396:
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
	call	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L170
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L171
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L171:
	call	_ZSt17__throw_bad_allocv@PLT
.L170:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11396:
	.size	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPcEC2Ev:
.LFB11399:
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
.LFE11399:
	.size	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPcEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPcEC1Ev,_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	.section	.text._ZSt4copyIPPcS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIPPcS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4copyIPPcS1_ET0_T_S3_S2_
	.type	_ZSt4copyIPPcS1_ET0_T_S3_S2_, @function
_ZSt4copyIPPcS1_ET0_T_S3_S2_:
.LFB11402:
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
	call	_ZSt12__miter_baseIPPcET_S2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIPPcET_S2_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11402:
	.size	_ZSt4copyIPPcS1_ET0_T_S3_S2_, .-_ZSt4copyIPPcS1_ET0_T_S3_S2_
	.section	.text._ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_
	.type	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_, @function
_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_:
.LFB11403:
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
	call	_ZSt12__miter_baseIPPcET_S2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIPPcET_S2_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11403:
	.size	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_, .-_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_
	.section	.text._ZSt12__miter_baseIPPcET_S2_,"axG",@progbits,_ZSt12__miter_baseIPPcET_S2_,comdat
	.weak	_ZSt12__miter_baseIPPcET_S2_
	.type	_ZSt12__miter_baseIPPcET_S2_, @function
_ZSt12__miter_baseIPPcET_S2_:
.LFB11471:
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
.LFE11471:
	.size	_ZSt12__miter_baseIPPcET_S2_, .-_ZSt12__miter_baseIPPcET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11472:
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
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIPPcET_RKS2_S2_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11472:
	.size	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11474:
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
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPPcET_S2_
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIPPcET_RKS2_S2_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11474:
	.size	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_baseIPPcET_S2_,"axG",@progbits,_ZSt12__niter_baseIPPcET_S2_,comdat
	.weak	_ZSt12__niter_baseIPPcET_S2_
	.type	_ZSt12__niter_baseIPPcET_S2_, @function
_ZSt12__niter_baseIPPcET_S2_:
.LFB11504:
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
.LFE11504:
	.size	_ZSt12__niter_baseIPPcET_S2_, .-_ZSt12__niter_baseIPPcET_S2_
	.section	.text._ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11505:
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
	call	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11505:
	.size	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIPPcET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIPPcET_RKS2_S2_,comdat
	.weak	_ZSt12__niter_wrapIPPcET_RKS2_S2_
	.type	_ZSt12__niter_wrapIPPcET_RKS2_S2_, @function
_ZSt12__niter_wrapIPPcET_RKS2_S2_:
.LFB11506:
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
.LFE11506:
	.size	_ZSt12__niter_wrapIPPcET_RKS2_S2_, .-_ZSt12__niter_wrapIPPcET_RKS2_S2_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11507:
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
	call	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11507:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11511:
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
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11511:
	.size	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11512:
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
	call	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11512:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_:
.LFB11524:
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
	je	.L197
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
.L197:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11524:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_, @function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_:
.LFB11525:
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
	je	.L200
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
.L200:
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
.LFE11525:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11564:
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
	jne	.L204
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L204
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
.L204:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11564:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11587:
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
.LFE11587:
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
