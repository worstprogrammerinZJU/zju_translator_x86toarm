	.file	"81A.cpp"
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
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB1070:
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
	mov	QWORD PTR -8[rbp], rax
	mov	eax, 0
	test	al, al
	je	.L5
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L6
.L5:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	strlen@PLT
	nop
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1070:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
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
	jnb	.L8
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L9
.L8:
	mov	rax, QWORD PTR -8[rbp]
.L9:
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
	ja	.L11
	mov	eax, 512
	mov	edx, 0
	div	QWORD PTR -8[rbp]
	jmp	.L13
.L11:
	mov	eax, 1
.L13:
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
	.align 8
	.type	_ZL3INF, @object
	.size	_ZL3INF, 8
_ZL3INF:
	.quad	2000000000000000000
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
	.string	""
.LC1:
	.string	"\n"
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
	sub	rsp, 184
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	edi, 0
.LEHB0:
	call	_ZNSt8ios_base15sync_with_stdioEb@PLT
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEEC1IS2_vEEv
.LEHE0:
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB1:
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	sub	eax, 1
	mov	DWORD PTR -180[rbp], eax
	jmp	.L16
.L21:
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	xor	eax, 1
	test	al, al
	je	.L17
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -180[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	jne	.L17
	mov	eax, 1
	jmp	.L18
.L17:
	mov	eax, 0
.L18:
	test	al, al
	je	.L19
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv
	jmp	.L20
.L19:
	mov	eax, DWORD PTR -180[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	mov	rdx, rax
	lea	rax, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc
.LEHE1:
.L20:
	sub	DWORD PTR -180[rbp], 1
.L16:
	cmp	DWORD PTR -180[rbp], 0
	jns	.L21
	lea	rax, -181[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -181[rbp]
	lea	rax, -64[rbp]
	lea	rcx, .LC0[rip]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	lea	rax, -181[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L22
.L23:
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	lea	rax, -64[rbp]
	mov	esi, edx
	mov	rdi, rax
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc@PLT
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv
.L22:
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	xor	eax, 1
	test	al, al
	jne	.L23
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE3:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L28
	jmp	.L32
.L30:
	endbr64
	mov	rbx, rax
	lea	rax, -181[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L26
.L31:
	endbr64
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L26
.L29:
	endbr64
	mov	rbx, rax
.L26:
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L32:
	call	__stack_chk_fail@PLT
.L28:
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
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9704
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L29-.LFB9704
	.uleb128 0
	.uleb128 .LEHB2-.LFB9704
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L30-.LFB9704
	.uleb128 0
	.uleb128 .LEHB3-.LFB9704
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L31-.LFB9704
	.uleb128 0
	.uleb128 .LEHB4-.LFB9704
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE9704:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB9761:
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
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	sete	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9761:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB9760:
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
	mov	QWORD PTR -16[rbp], 0
	jmp	.L36
.L37:
	add	QWORD PTR -16[rbp], 1
.L36:
	mov	BYTE PTR -17[rbp], 0
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	lea	rax, -17[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xor	eax, 1
	test	al, al
	jne	.L37
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L39
	call	__stack_chk_fail@PLT
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9760:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB9868:
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
.LFE9868:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
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
	jnb	.L42
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L43
.L42:
	mov	rax, QWORD PTR -8[rbp]
.L43:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10020:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB10299:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10299
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 72
	.cfi_offset 3, -24
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rbx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	mov	rcx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
.LEHE5:
	cmp	QWORD PTR -64[rbp], 0
	je	.L45
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
.LEHB6:
	call	_ZNSt11char_traitsIcE6lengthEPKc
	mov	rdx, QWORD PTR -64[rbp]
	add	rax, rdx
	jmp	.L46
.L45:
	mov	eax, 1
.L46:
	mov	QWORD PTR -32[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE6:
	jmp	.L50
.L49:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L50:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10299:
	.section	.gcc_except_table
.LLSDA10299:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10299-.LLSDACSB10299
.LLSDACSB10299:
	.uleb128 .LEHB5-.LFB10299
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB10299
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L49-.LFB10299
	.uleb128 0
	.uleb128 .LEHB7-.LFB10299
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE10299:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt5dequeIcSaIcEEC2Ev,"axG",@progbits,_ZNSt5dequeIcSaIcEEC5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEEC2Ev
	.type	_ZNSt5dequeIcSaIcEEC2Ev, @function
_ZNSt5dequeIcSaIcEEC2Ev:
.LFB10399:
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
.LFE10399:
	.size	_ZNSt5dequeIcSaIcEEC2Ev, .-_ZNSt5dequeIcSaIcEEC2Ev
	.weak	_ZNSt5dequeIcSaIcEEC1Ev
	.set	_ZNSt5dequeIcSaIcEEC1Ev,_ZNSt5dequeIcSaIcEEC2Ev
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEEC5IS2_vEEv,comdat
	.align 2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv, @function
_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv:
.LFB10401:
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
.LFE10401:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv, .-_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEEC1IS2_vEEv
	.set	_ZNSt5stackIcSt5dequeIcSaIcEEEC1IS2_vEEv,_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv
	.section	.text._ZNSt5dequeIcSaIcEED2Ev,"axG",@progbits,_ZNSt5dequeIcSaIcEED5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEED2Ev
	.type	_ZNSt5dequeIcSaIcEED2Ev, @function
_ZNSt5dequeIcSaIcEED2Ev:
.LFB10404:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10404
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
	je	.L54
	call	__stack_chk_fail@PLT
.L54:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10404:
	.section	.gcc_except_table
.LLSDA10404:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10404-.LLSDACSB10404
.LLSDACSB10404:
.LLSDACSE10404:
	.section	.text._ZNSt5dequeIcSaIcEED2Ev,"axG",@progbits,_ZNSt5dequeIcSaIcEED5Ev,comdat
	.size	_ZNSt5dequeIcSaIcEED2Ev, .-_ZNSt5dequeIcSaIcEED2Ev
	.weak	_ZNSt5dequeIcSaIcEED1Ev
	.set	_ZNSt5dequeIcSaIcEED1Ev,_ZNSt5dequeIcSaIcEED2Ev
	.section	.text._ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv,"axG",@progbits,_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	.type	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv, @function
_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv:
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
	call	_ZNKSt5dequeIcSaIcEE5emptyEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10406:
	.size	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv, .-_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEE3topEv,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv,comdat
	.align 2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv, @function
_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE4backEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10407:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv, .-_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
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
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc,comdat
	.align 2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc, @function
_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc:
.LFB10409:
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
.LFE10409:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc, .-_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB10684:
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
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10684:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.rodata
	.align 8
.LC2:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB10683:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10683
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	test	al, al
	je	.L64
	mov	rax, QWORD PTR -48[rbp]
	cmp	rax, QWORD PTR -56[rbp]
	je	.L64
	mov	eax, 1
	jmp	.L65
.L64:
	mov	eax, 0
.L65:
	test	al, al
	je	.L66
	lea	rax, .LC2[rip]
	mov	rdi, rax
.LEHB8:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L66:
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, 15
	jbe	.L67
	lea	rcx, -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
.LEHE8:
.L67:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
.LEHB9:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
.LEHE9:
	mov	rcx, rax
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
.LEHE10:
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L70
	jmp	.L73
.L71:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	call	__cxa_rethrow@PLT
.LEHE11:
.L72:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L73:
	call	__stack_chk_fail@PLT
.L70:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10683:
	.section	.gcc_except_table
	.align 4
.LLSDA10683:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10683-.LLSDATTD10683
.LLSDATTD10683:
	.byte	0x1
	.uleb128 .LLSDACSE10683-.LLSDACSB10683
.LLSDACSB10683:
	.uleb128 .LEHB8-.LFB10683
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB10683
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L71-.LFB10683
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB10683
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB10683
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L72-.LFB10683
	.uleb128 0
	.uleb128 .LEHB12-.LFB10683
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE10683:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10683:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev, @function
_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev:
.LFB10806:
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
.LFE10806:
	.size	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEEC2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEEC2Ev, @function
_ZNSt11_Deque_baseIcSaIcEEC2Ev:
.LFB10808:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10808
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
.LEHB13:
	call	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
.LEHE13:
	jmp	.L78
.L77:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L78:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10808:
	.section	.gcc_except_table
.LLSDA10808:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10808-.LLSDACSB10808
.LLSDACSB10808:
	.uleb128 .LEHB13-.LFB10808
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L77-.LFB10808
	.uleb128 0
	.uleb128 .LEHB14-.LFB10808
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE10808:
	.section	.text._ZNSt11_Deque_baseIcSaIcEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEEC5Ev,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEEC2Ev, .-_ZNSt11_Deque_baseIcSaIcEEC2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEEC1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEEC1Ev,_ZNSt11_Deque_baseIcSaIcEEC2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEED2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEED2Ev, @function
_ZNSt11_Deque_baseIcSaIcEED2Ev:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L80
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
.L80:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10811:
	.size	_ZNSt11_Deque_baseIcSaIcEED2Ev, .-_ZNSt11_Deque_baseIcSaIcEED2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEED1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEED1Ev,_ZNSt11_Deque_baseIcSaIcEED2Ev
	.section	.text._ZNSt5dequeIcSaIcEE5beginEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE5beginEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE5beginEv
	.type	_ZNSt5dequeIcSaIcEE5beginEv, @function
_ZNSt5dequeIcSaIcEE5beginEv:
.LFB10813:
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
.LFE10813:
	.size	_ZNSt5dequeIcSaIcEE5beginEv, .-_ZNSt5dequeIcSaIcEE5beginEv
	.section	.text._ZNSt5dequeIcSaIcEE3endEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE3endEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE3endEv
	.type	_ZNSt5dequeIcSaIcEE3endEv, @function
_ZNSt5dequeIcSaIcEE3endEv:
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
.LFE10814:
	.size	_ZNSt5dequeIcSaIcEE3endEv, .-_ZNSt5dequeIcSaIcEE3endEv
	.section	.text._ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, @function
_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB10815:
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
.LFE10815:
	.size	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_,"axG",@progbits,_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_
	.type	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_, @function
_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_:
.LFB10816:
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
	je	.L88
	call	__stack_chk_fail@PLT
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10816:
	.size	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_, .-_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_
	.section	.text._ZNKSt5dequeIcSaIcEE5emptyEv,"axG",@progbits,_ZNKSt5dequeIcSaIcEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIcSaIcEE5emptyEv
	.type	_ZNKSt5dequeIcSaIcEE5emptyEv, @function
_ZNKSt5dequeIcSaIcEE5emptyEv:
.LFB10817:
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
.LFE10817:
	.size	_ZNKSt5dequeIcSaIcEE5emptyEv, .-_ZNKSt5dequeIcSaIcEE5emptyEv
	.section	.text._ZNSt5dequeIcSaIcEE4backEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE4backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE4backEv
	.type	_ZNSt5dequeIcSaIcEE4backEv, @function
_ZNSt5dequeIcSaIcEE4backEv:
.LFB10818:
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
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10818:
	.size	_ZNSt5dequeIcSaIcEE4backEv, .-_ZNSt5dequeIcSaIcEE4backEv
	.section	.text._ZNSt5dequeIcSaIcEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE8pop_backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE8pop_backEv
	.type	_ZNSt5dequeIcSaIcEE8pop_backEv, @function
_ZNSt5dequeIcSaIcEE8pop_backEv:
.LFB10819:
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
	je	.L95
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
	jmp	.L97
.L95:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
.L97:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10819:
	.size	_ZNSt5dequeIcSaIcEE8pop_backEv, .-_ZNSt5dequeIcSaIcEE8pop_backEv
	.section	.text._ZNSt5dequeIcSaIcEE9push_backERKc,"axG",@progbits,_ZNSt5dequeIcSaIcEE9push_backERKc,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE9push_backERKc
	.type	_ZNSt5dequeIcSaIcEE9push_backERKc, @function
_ZNSt5dequeIcSaIcEE9push_backERKc:
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
	sub	rax, 1
	cmp	rdx, rax
	je	.L99
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
	jmp	.L101
.L99:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
.L101:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10820:
	.size	_ZNSt5dequeIcSaIcEE9push_backERKc, .-_ZNSt5dequeIcSaIcEE9push_backERKc
	.section	.text._ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"axG",@progbits,_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,comdat
	.weak	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.type	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, @function
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
.LFB10964:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	sete	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10964:
	.size	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, .-_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB10965:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10965:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB10966:
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
	sub	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10966:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.text._ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.type	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, @function
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm:
.LFB10989:
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
.LFE10989:
	.size	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, .-_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.section	.text._ZNSt16allocator_traitsISaIcEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIcEE8allocateERS0_m:
.LFB10990:
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
.LFE10990:
	.size	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.section	.text._ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev, @function
_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev:
.LFB11018:
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
.LFE11018:
	.size	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC1Ev,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm:
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
.LEHB15:
	call	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
.LEHE15:
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
.LEHB16:
	call	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
.LEHE16:
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
	je	.L115
	jmp	.L118
.L116:
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
.LEHB17:
	call	__cxa_rethrow@PLT
.LEHE17:
.L117:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB18:
	call	_Unwind_Resume@PLT
.LEHE18:
.L118:
	call	__stack_chk_fail@PLT
.L115:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11020:
	.section	.gcc_except_table
	.align 4
.LLSDA11020:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11020-.LLSDATTD11020
.LLSDATTD11020:
	.byte	0x1
	.uleb128 .LLSDACSE11020-.LLSDACSB11020
.LLSDACSB11020:
	.uleb128 .LEHB15-.LFB11020
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB11020
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L116-.LFB11020
	.uleb128 0x1
	.uleb128 .LEHB17-.LFB11020
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L117-.LFB11020
	.uleb128 0
	.uleb128 .LEHB18-.LFB11020
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE11020:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11020:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	.type	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_, @function
_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_:
.LFB11021:
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
	jmp	.L120
.L121:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	add	QWORD PTR -8[rbp], 8
.L120:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jb	.L121
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11021:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_, .-_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	.type	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm, @function
_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm:
.LFB11022:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11022
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
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11022:
	.section	.gcc_except_table
.LLSDA11022:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11022-.LLSDACSB11022
.LLSDACSB11022:
.LLSDACSE11022:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm, .-_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	.section	.text._ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_, @function
_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_:
.LFB11024:
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
.LFE11024:
	.size	_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_, .-_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_,_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_
	.section	.text._ZSteqRKSt15_Deque_iteratorIcRcPcES4_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIcRcPcES4_,comdat
	.weak	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_
	.type	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_, @function
_ZSteqRKSt15_Deque_iteratorIcRcPcES4_:
.LFB11027:
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
.LFE11027:
	.size	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_, .-_ZSteqRKSt15_Deque_iteratorIcRcPcES4_
	.section	.text._ZNSt15_Deque_iteratorIcRcPcEmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcEmmEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIcRcPcEmmEv
	.type	_ZNSt15_Deque_iteratorIcRcPcEmmEv, @function
_ZNSt15_Deque_iteratorIcRcPcEmmEv:
.LFB11028:
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
	jne	.L128
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
.L128:
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
.LFE11028:
	.size	_ZNSt15_Deque_iteratorIcRcPcEmmEv, .-_ZNSt15_Deque_iteratorIcRcPcEmmEv
	.section	.text._ZNKSt15_Deque_iteratorIcRcPcEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIcRcPcEdeEv,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorIcRcPcEdeEv
	.type	_ZNKSt15_Deque_iteratorIcRcPcEdeEv, @function
_ZNKSt15_Deque_iteratorIcRcPcEdeEv:
.LFB11029:
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
.LFE11029:
	.size	_ZNKSt15_Deque_iteratorIcRcPcEdeEv, .-_ZNKSt15_Deque_iteratorIcRcPcEdeEv
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
	.section	.text._ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_:
.LFB11032:
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
.LFE11032:
	.size	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	.section	.rodata
	.align 8
.LC3:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
	.type	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_, @function
_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_:
.LFB11033:
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
	je	.L136
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L136:
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
.LFE11033:
	.size	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_, .-_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.type	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, @function
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm:
.LFB11139:
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
.LFE11139:
	.size	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, .-_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv:
.LFB11141:
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
.LFE11141:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv:
.LFB11140:
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
	je	.L142
	call	_ZSt17__throw_bad_allocv@PLT
.L142:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11140:
	.size	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev, @function
_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev:
.LFB11172:
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
.LFE11172:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm, @function
_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm:
.LFB11174:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11174
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
.LEHB19:
	call	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m
.LEHE19:
	mov	rbx, rax
	nop
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIPcED1Ev
	mov	rax, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L148
	jmp	.L150
.L149:
	endbr64
	mov	rbx, rax
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIPcED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB20:
	call	_Unwind_Resume@PLT
.LEHE20:
.L150:
	call	__stack_chk_fail@PLT
.L148:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11174:
	.section	.gcc_except_table
.LLSDA11174:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11174-.LLSDACSB11174
.LLSDACSB11174:
	.uleb128 .LEHB19-.LFB11174
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L149-.LFB11174
	.uleb128 0
	.uleb128 .LEHB20-.LFB11174
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE11174:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
	.type	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_, @function
_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_:
.LFB11175:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11175
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
	jmp	.L152
.L153:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
.LEHB21:
	call	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
.LEHE21:
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rdx], rax
	add	QWORD PTR -24[rbp], 8
.L152:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -56[rbp]
	jb	.L153
	jmp	.L158
.L156:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
.LEHB22:
	call	__cxa_rethrow@PLT
.LEHE22:
.L157:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L158:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11175:
	.section	.gcc_except_table
	.align 4
.LLSDA11175:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11175-.LLSDATTD11175
.LLSDATTD11175:
	.byte	0x1
	.uleb128 .LLSDACSE11175-.LLSDACSB11175
.LLSDACSB11175:
	.uleb128 .LEHB21-.LFB11175
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L156-.LFB11175
	.uleb128 0x1
	.uleb128 .LEHB22-.LFB11175
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L157-.LFB11175
	.uleb128 0
	.uleb128 .LEHB23-.LFB11175
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE11175:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11175:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_, .-_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
	.section	.text._ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_, @function
_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_:
.LFB11176:
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
.LFE11176:
	.size	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	.section	.text._ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	.type	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc, @function
_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc:
.LFB11177:
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
.LFE11177:
	.size	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc, .-_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	.section	.text._ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv, @function
_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv:
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
.LFE11178:
	.size	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPcED2Ev,"axG",@progbits,_ZNSaIPcED5Ev,comdat
	.align 2
	.weak	_ZNSaIPcED2Ev
	.type	_ZNSaIPcED2Ev, @function
_ZNSaIPcED2Ev:
.LFB11180:
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
.LFE11180:
	.size	_ZNSaIPcED2Ev, .-_ZNSaIPcED2Ev
	.weak	_ZNSaIPcED1Ev
	.set	_ZNSaIPcED1Ev,_ZNSaIPcED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m:
.LFB11182:
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
.LFE11182:
	.size	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_:
.LFB11185:
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
.LFE11185:
	.size	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	.section	.text._ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11186:
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
.LFE11186:
	.size	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_:
.LFB11187:
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
.LFE11187:
	.size	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	.section	.text._ZNKSt5dequeIcSaIcEE4sizeEv,"axG",@progbits,_ZNKSt5dequeIcSaIcEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIcSaIcEE4sizeEv
	.type	_ZNKSt5dequeIcSaIcEE4sizeEv, @function
_ZNKSt5dequeIcSaIcEE4sizeEv:
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
.LFE11188:
	.size	_ZNKSt5dequeIcSaIcEE4sizeEv, .-_ZNKSt5dequeIcSaIcEE4sizeEv
	.section	.text._ZNKSt5dequeIcSaIcEE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeIcSaIcEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIcSaIcEE8max_sizeEv
	.type	_ZNKSt5dequeIcSaIcEE8max_sizeEv, @function
_ZNKSt5dequeIcSaIcEE8max_sizeEv:
.LFB11189:
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
.LFE11189:
	.size	_ZNKSt5dequeIcSaIcEE8max_sizeEv, .-_ZNKSt5dequeIcSaIcEE8max_sizeEv
	.section	.text._ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm, @function
_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm:
.LFB11190:
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
	jbe	.L175
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
.L175:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11190:
	.size	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm, .-_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv, @function
_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv:
.LFB11191:
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
.LFE11191:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
	.section	.text._ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_:
.LFB11223:
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
.LFE11223:
	.size	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.section	.text._ZNSt15_Deque_iteratorIcRcPcEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcEC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC2Ev
	.type	_ZNSt15_Deque_iteratorIcRcPcEC2Ev, @function
_ZNSt15_Deque_iteratorIcRcPcEC2Ev:
.LFB11277:
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
.LFE11277:
	.size	_ZNSt15_Deque_iteratorIcRcPcEC2Ev, .-_ZNSt15_Deque_iteratorIcRcPcEC2Ev
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC1Ev
	.set	_ZNSt15_Deque_iteratorIcRcPcEC1Ev,_ZNSt15_Deque_iteratorIcRcPcEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPcEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m:
.LFB11279:
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
.LFE11279:
	.size	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m
	.section	.text._ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv, @function
_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv:
.LFB11280:
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
.LFE11280:
	.size	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
	.section	.text._ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, @function
_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB11281:
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
.LFE11281:
	.size	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIPcEC2IcEERKSaIT_E,"axG",@progbits,_ZNSaIPcEC5IcEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaIPcEC2IcEERKSaIT_E
	.type	_ZNSaIPcEC2IcEERKSaIT_E, @function
_ZNSaIPcEC2IcEERKSaIT_E:
.LFB11283:
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
.LFE11283:
	.size	_ZNSaIPcEC2IcEERKSaIT_E, .-_ZNSaIPcEC2IcEERKSaIT_E
	.weak	_ZNSaIPcEC1IcEERKSaIT_E
	.set	_ZNSaIPcEC1IcEERKSaIT_E,_ZNSaIPcEC2IcEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPcED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPcED2Ev:
.LFB11286:
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
.LFE11286:
	.size	_ZN9__gnu_cxx13new_allocatorIPcED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPcED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPcED1Ev,_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m:
.LFB11288:
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
.LFE11288:
	.size	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m
	.section	.text._ZStmiRKSt15_Deque_iteratorIcRcPcES4_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIcRcPcES4_,comdat
	.weak	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_
	.type	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_, @function
_ZStmiRKSt15_Deque_iteratorIcRcPcES4_:
.LFB11290:
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
.LFE11290:
	.size	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_, .-_ZStmiRKSt15_Deque_iteratorIcRcPcES4_
	.section	.text._ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_
	.type	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_, @function
_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_:
.LFB11291:
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
	je	.L195
	call	__stack_chk_fail@PLT
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11291:
	.size	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_, .-_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_
	.section	.text._ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb, @function
_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb:
.LFB11292:
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
	jbe	.L197
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -40[rbp]
	shr	rax
	lea	rcx, 0[0+rax*8]
	cmp	BYTE PTR -84[rbp], 0
	je	.L198
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L199
.L198:
	mov	eax, 0
.L199:
	add	rax, rcx
	add	rax, rdx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	cmp	QWORD PTR -56[rbp], rax
	jnb	.L200
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt4copyIPPcS1_ET0_T_S3_S2_
	jmp	.L201
.L200:
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
	jmp	.L201
.L197:
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
	je	.L202
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L203
.L202:
	mov	eax, 0
.L203:
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
.L201:
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
.LFE11292:
	.size	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11310:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv:
.LFB11399:
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
.LFE11399:
	.size	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv:
.LFB11398:
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
	je	.L209
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L210
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L210:
	call	_ZSt17__throw_bad_allocv@PLT
.L209:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11398:
	.size	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPcEC2Ev:
.LFB11401:
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
.LFE11401:
	.size	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPcEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPcEC1Ev,_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	.section	.text._ZSt4copyIPPcS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIPPcS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4copyIPPcS1_ET0_T_S3_S2_
	.type	_ZSt4copyIPPcS1_ET0_T_S3_S2_, @function
_ZSt4copyIPPcS1_ET0_T_S3_S2_:
.LFB11404:
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
.LFE11404:
	.size	_ZSt4copyIPPcS1_ET0_T_S3_S2_, .-_ZSt4copyIPPcS1_ET0_T_S3_S2_
	.section	.text._ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_
	.type	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_, @function
_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_:
.LFB11405:
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
.LFE11405:
	.size	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_, .-_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_
	.section	.text._ZSt12__miter_baseIPPcET_S2_,"axG",@progbits,_ZSt12__miter_baseIPPcET_S2_,comdat
	.weak	_ZSt12__miter_baseIPPcET_S2_
	.type	_ZSt12__miter_baseIPPcET_S2_, @function
_ZSt12__miter_baseIPPcET_S2_:
.LFB11473:
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
.LFE11473:
	.size	_ZSt12__miter_baseIPPcET_S2_, .-_ZSt12__miter_baseIPPcET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_:
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
.LFE11474:
	.size	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11476:
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
.LFE11476:
	.size	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_baseIPPcET_S2_,"axG",@progbits,_ZSt12__niter_baseIPPcET_S2_,comdat
	.weak	_ZSt12__niter_baseIPPcET_S2_
	.type	_ZSt12__niter_baseIPPcET_S2_, @function
_ZSt12__niter_baseIPPcET_S2_:
.LFB11506:
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
.LFE11506:
	.size	_ZSt12__niter_baseIPPcET_S2_, .-_ZSt12__niter_baseIPPcET_S2_
	.section	.text._ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_:
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
	call	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11507:
	.size	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIPPcET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIPPcET_RKS2_S2_,comdat
	.weak	_ZSt12__niter_wrapIPPcET_RKS2_S2_
	.type	_ZSt12__niter_wrapIPPcET_RKS2_S2_, @function
_ZSt12__niter_wrapIPPcET_RKS2_S2_:
.LFB11508:
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
.LFE11508:
	.size	_ZSt12__niter_wrapIPPcET_RKS2_S2_, .-_ZSt12__niter_wrapIPPcET_RKS2_S2_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11509:
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
.LFE11509:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11513:
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
.LFE11513:
	.size	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11514:
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
.LFE11514:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_:
.LFB11526:
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
	je	.L236
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
.L236:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11526:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_, @function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_:
.LFB11527:
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
	je	.L239
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
.L239:
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
.LFE11527:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11566:
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
	jne	.L243
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L243
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
.L243:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11566:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11589:
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
.LFE11589:
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
