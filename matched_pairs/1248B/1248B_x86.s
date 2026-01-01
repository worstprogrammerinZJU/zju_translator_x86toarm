	.file	"1248B.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZSt4__lgl,"axG",@progbits,_ZSt4__lgl,comdat
	.weak	_ZSt4__lgl
	.type	_ZSt4__lgl, @function
_ZSt4__lgl:
.LFB572:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	bsr	rax, rax
	xor	rax, 63
	mov	edx, eax
	mov	eax, 63
	sub	eax, edx
	cdqe
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	_ZSt4__lgl, .-_ZSt4__lgl
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
	jnb	.L6
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L7
.L6:
	mov	rax, QWORD PTR -8[rbp]
.L7:
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
	ja	.L9
	mov	eax, 512
	mov	edx, 0
	div	QWORD PTR -8[rbp]
	jmp	.L11
.L9:
	mov	eax, 1
.L11:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4252:
	.size	_ZSt16__deque_buf_sizem, .-_ZSt16__deque_buf_sizem
	.section	.text._ZSt3minIlERKT_S2_S2_,"axG",@progbits,_ZSt3minIlERKT_S2_S2_,comdat
	.weak	_ZSt3minIlERKT_S2_S2_
	.type	_ZSt3minIlERKT_S2_S2_, @function
_ZSt3minIlERKT_S2_S2_:
.LFB4562:
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
	jge	.L13
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L14
.L13:
	mov	rax, QWORD PTR -8[rbp]
.L14:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4562:
	.size	_ZSt3minIlERKT_S2_S2_, .-_ZSt3minIlERKT_S2_S2_
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
	.section	.text._ZNSt5dequeIxSaIxEEC2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEEC2Ev
	.type	_ZNSt5dequeIxSaIxEEC2Ev, @function
_ZNSt5dequeIxSaIxEEC2Ev:
.LFB9706:
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
.LFE9706:
	.size	_ZNSt5dequeIxSaIxEEC2Ev, .-_ZNSt5dequeIxSaIxEEC2Ev
	.weak	_ZNSt5dequeIxSaIxEEC1Ev
	.set	_ZNSt5dequeIxSaIxEEC1Ev,_ZNSt5dequeIxSaIxEEC2Ev
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
	sub	rsp, 216
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
	lea	rax, -220[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEEC1Ev
.LEHE0:
	mov	DWORD PTR -216[rbp], 0
	jmp	.L17
.L18:
	lea	rax, -208[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB1:
	call	_ZNSirsERx@PLT
	lea	rdx, -208[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE9push_backERKx
	add	DWORD PTR -216[rbp], 1
.L17:
	mov	eax, DWORD PTR -220[rbp]
	cmp	DWORD PTR -216[rbp], eax
	jl	.L18
	lea	rax, -144[rbp]
	lea	rdx, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE3endEv
	lea	rax, -176[rbp]
	lea	rdx, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE5beginEv
	lea	rdx, -144[rbp]
	lea	rax, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_
	mov	QWORD PTR -200[rbp], 0
	mov	QWORD PTR -192[rbp], 0
	mov	BYTE PTR -221[rbp], 0
	mov	DWORD PTR -212[rbp], 0
	jmp	.L19
.L22:
	xor	BYTE PTR -221[rbp], 1
	cmp	BYTE PTR -221[rbp], 0
	je	.L20
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE5frontEv
	mov	rax, QWORD PTR [rax]
	add	QWORD PTR -200[rbp], rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE9pop_frontEv
	jmp	.L21
.L20:
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE4backEv
	mov	rax, QWORD PTR [rax]
	add	QWORD PTR -192[rbp], rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE8pop_backEv
.L21:
	add	DWORD PTR -212[rbp], 1
.L19:
	mov	eax, DWORD PTR -220[rbp]
	cmp	DWORD PTR -212[rbp], eax
	jl	.L22
	mov	rax, QWORD PTR -200[rbp]
	imul	rax, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -192[rbp]
	imul	rax, rax
	add	rax, rdx
	mov	QWORD PTR -184[rbp], rax
	mov	rax, QWORD PTR -184[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.LEHE1:
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEED1Ev
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L25
	jmp	.L27
.L26:
	endbr64
	mov	rbx, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L27:
	call	__stack_chk_fail@PLT
.L25:
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
.LFB10019:
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
.LFE10019:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev:
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
	call	_ZNSaIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10399:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEEC2Ev, @function
_ZNSt11_Deque_baseIxSaIxEEC2Ev:
.LFB10401:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10401
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
	jmp	.L35
.L34:
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
.L35:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10401:
	.section	.gcc_except_table
.LLSDA10401:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10401-.LLSDACSB10401
.LLSDACSB10401:
	.uleb128 .LEHB3-.LFB10401
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L34-.LFB10401
	.uleb128 0
	.uleb128 .LEHB4-.LFB10401
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE10401:
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5Ev,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEEC2Ev, .-_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEEC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEEC1Ev,_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEED2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEED2Ev, @function
_ZNSt11_Deque_baseIxSaIxEED2Ev:
.LFB10404:
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
	je	.L37
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
.L37:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10404:
	.size	_ZNSt11_Deque_baseIxSaIxEED2Ev, .-_ZNSt11_Deque_baseIxSaIxEED2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEED1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEED1Ev,_ZNSt11_Deque_baseIxSaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEED2Ev
	.type	_ZNSt5dequeIxSaIxEED2Ev, @function
_ZNSt5dequeIxSaIxEED2Ev:
.LFB10407:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10407
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
	je	.L39
	call	__stack_chk_fail@PLT
.L39:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10407:
	.section	.gcc_except_table
.LLSDA10407:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10407-.LLSDACSB10407
.LLSDACSB10407:
.LLSDACSE10407:
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.size	_ZNSt5dequeIxSaIxEED2Ev, .-_ZNSt5dequeIxSaIxEED2Ev
	.weak	_ZNSt5dequeIxSaIxEED1Ev
	.set	_ZNSt5dequeIxSaIxEED1Ev,_ZNSt5dequeIxSaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEE9push_backERKx,"axG",@progbits,_ZNSt5dequeIxSaIxEE9push_backERKx,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE9push_backERKx
	.type	_ZNSt5dequeIxSaIxEE9push_backERKx, @function
_ZNSt5dequeIxSaIxEE9push_backERKx:
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 64[rax]
	sub	rax, 8
	cmp	rdx, rax
	je	.L41
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
	jmp	.L43
.L41:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
.L43:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10410:
	.size	_ZNSt5dequeIxSaIxEE9push_backERKx, .-_ZNSt5dequeIxSaIxEE9push_backERKx
	.section	.text._ZNSt5dequeIxSaIxEE5beginEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5beginEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE5beginEv
	.type	_ZNSt5dequeIxSaIxEE5beginEv, @function
_ZNSt5dequeIxSaIxEE5beginEv:
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
.LFE10412:
	.size	_ZNSt5dequeIxSaIxEE5beginEv, .-_ZNSt5dequeIxSaIxEE5beginEv
	.section	.text._ZNSt5dequeIxSaIxEE3endEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE3endEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE3endEv
	.type	_ZNSt5dequeIxSaIxEE3endEv, @function
_ZNSt5dequeIxSaIxEE3endEv:
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
.LFE10413:
	.size	_ZNSt5dequeIxSaIxEE3endEv, .-_ZNSt5dequeIxSaIxEE3endEv
	.section	.text._ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_,"axG",@progbits,_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_,comdat
	.weak	_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_
	.type	_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_, @function
_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_:
.LFB10414:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	call	_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L49
	call	__stack_chk_fail@PLT
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10414:
	.size	_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_, .-_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_
	.section	.text._ZNSt5dequeIxSaIxEE5frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE5frontEv
	.type	_ZNSt5dequeIxSaIxEE5frontEv, @function
_ZNSt5dequeIxSaIxEE5frontEv:
.LFB10415:
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
	call	_ZNSt5dequeIxSaIxEE5beginEv
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
.LFE10415:
	.size	_ZNSt5dequeIxSaIxEE5frontEv, .-_ZNSt5dequeIxSaIxEE5frontEv
	.section	.text._ZNSt5dequeIxSaIxEE9pop_frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE9pop_frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE9pop_frontEv
	.type	_ZNSt5dequeIxSaIxEE9pop_frontEv, @function
_ZNSt5dequeIxSaIxEE9pop_frontEv:
.LFB10416:
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
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 32[rax]
	sub	rax, 8
	cmp	rdx, rax
	je	.L54
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L56
.L54:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
.L56:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10416:
	.size	_ZNSt5dequeIxSaIxEE9pop_frontEv, .-_ZNSt5dequeIxSaIxEE9pop_frontEv
	.section	.text._ZNSt5dequeIxSaIxEE4backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE4backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE4backEv
	.type	_ZNSt5dequeIxSaIxEE4backEv, @function
_ZNSt5dequeIxSaIxEE4backEv:
.LFB10417:
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
	je	.L59
	call	__stack_chk_fail@PLT
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10417:
	.size	_ZNSt5dequeIxSaIxEE4backEv, .-_ZNSt5dequeIxSaIxEE4backEv
	.section	.text._ZNSt5dequeIxSaIxEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE8pop_backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE8pop_backEv
	.type	_ZNSt5dequeIxSaIxEE8pop_backEv, @function
_ZNSt5dequeIxSaIxEE8pop_backEv:
.LFB10418:
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
	je	.L61
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
	jmp	.L63
.L61:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
.L63:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10418:
	.size	_ZNSt5dequeIxSaIxEE8pop_backEv, .-_ZNSt5dequeIxSaIxEE8pop_backEv
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev:
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
.LFE10813:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED5Ev,comdat
	.align 2
	.weak	_ZNSaIxED2Ev
	.type	_ZNSaIxED2Ev, @function
_ZNSaIxED2Ev:
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
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10816:
	.size	_ZNSaIxED2Ev, .-_ZNSaIxED2Ev
	.weak	_ZNSaIxED1Ev
	.set	_ZNSaIxED1Ev,_ZNSaIxED2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm:
.LFB10818:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10818
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
	je	.L69
	jmp	.L72
.L70:
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
.L71:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L72:
	call	__stack_chk_fail@PLT
.L69:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10818:
	.section	.gcc_except_table
	.align 4
.LLSDA10818:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10818-.LLSDATTD10818
.LLSDATTD10818:
	.byte	0x1
	.uleb128 .LLSDACSE10818-.LLSDACSB10818
.LLSDACSB10818:
	.uleb128 .LEHB5-.LFB10818
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB10818
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L70-.LFB10818
	.uleb128 0x1
	.uleb128 .LEHB7-.LFB10818
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L71-.LFB10818
	.uleb128 0
	.uleb128 .LEHB8-.LFB10818
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10818:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10818:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, @function
_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_:
.LFB10819:
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
	jmp	.L74
.L75:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	add	QWORD PTR -8[rbp], 8
.L74:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jb	.L75
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10819:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, @function
_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm:
.LFB10820:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10820
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
	je	.L77
	call	__stack_chk_fail@PLT
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10820:
	.section	.gcc_except_table
.LLSDA10820:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10820-.LLSDACSB10820
.LLSDACSB10820:
.LLSDACSE10820:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
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
	.size	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.type	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, @function
_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_:
.LFB10822:
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
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10822:
	.size	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, .-_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_:
.LFB10823:
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
.LFE10823:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.section	.rodata
	.align 8
.LC0:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.type	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_, @function
_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_:
.LFB10824:
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
	je	.L84
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L84:
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
.LFE10824:
	.size	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_, .-_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, @function
_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_:
.LFB10826:
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
.LFE10826:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, .-_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_,_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.section	.text._ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_,comdat
	.weak	_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_
	.type	_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_, @function
_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_:
.LFB10828:
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -33[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC1ES3_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L88
	call	__stack_chk_fail@PLT
.L88:
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10828:
	.size	_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_, .-_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_
	.section	.text._ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,"axG",@progbits,_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,comdat
	.weak	_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.type	_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, @function
_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_:
.LFB10829:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 120
	.cfi_offset 3, -24
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	test	al, al
	je	.L92
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	mov	rdi, rax
	call	_ZSt4__lgl
	lea	rbx, [rax+rax]
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rcx, -64[rbp]
	lea	rax, -96[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -64[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
.L92:
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L91
	call	__stack_chk_fail@PLT
.L91:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10829:
	.size	_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, .-_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.section	.text._ZNKSt15_Deque_iteratorIxRxPxEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIxRxPxEdeEv,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.type	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, @function
_ZNKSt15_Deque_iteratorIxRxPxEdeEv:
.LFB10830:
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
.LFE10830:
	.size	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, .-_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, @function
_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_:
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
.LFE10831:
	.size	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.section	.text._ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.type	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv, @function
_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv:
.LFB10832:
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
	mov	rbx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 24[rdx]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 16
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 40[rdx]
	add	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10832:
	.size	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv, .-_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEmmEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.type	_ZNSt15_Deque_iteratorIxRxPxEmmEv, @function
_ZNSt15_Deque_iteratorIxRxPxEmmEv:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	rdx, rax
	jne	.L98
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
.L98:
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
.LFE10833:
	.size	_ZNSt15_Deque_iteratorIxRxPxEmmEv, .-_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.section	.text._ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.type	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, @function
_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv:
.LFB10834:
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
.LFE10834:
	.size	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, .-_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC5Ev,comdat
	.align 2
	.weak	_ZNSaIxEC2Ev
	.type	_ZNSaIxEC2Ev, @function
_ZNSaIxEC2Ev:
.LFB11032:
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
.LFE11032:
	.size	_ZNSaIxEC2Ev, .-_ZNSaIxEC2Ev
	.weak	_ZNSaIxEC1Ev
	.set	_ZNSaIxEC1Ev,_ZNSaIxEC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev:
.LFB11035:
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
.LFE11035:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:
.LFB11038:
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
.LFE11038:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxED1Ev,_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, @function
_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm:
.LFB11040:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11040
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
	je	.L107
	jmp	.L109
.L108:
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
.L109:
	call	__stack_chk_fail@PLT
.L107:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11040:
	.section	.gcc_except_table
.LLSDA11040:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11040-.LLSDACSB11040
.LLSDACSB11040:
	.uleb128 .LEHB9-.LFB11040
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L108-.LFB11040
	.uleb128 0
	.uleb128 .LEHB10-.LFB11040
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE11040:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, @function
_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_:
.LFB11041:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11041
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
	jmp	.L111
.L112:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
.LEHB11:
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
.LEHE11:
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rdx], rax
	add	QWORD PTR -24[rbp], 8
.L111:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -56[rbp]
	jb	.L112
	jmp	.L117
.L115:
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
.L116:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L117:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11041:
	.section	.gcc_except_table
	.align 4
.LLSDA11041:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11041-.LLSDATTD11041
.LLSDATTD11041:
	.byte	0x1
	.uleb128 .LLSDACSE11041-.LLSDACSB11041
.LLSDACSB11041:
	.uleb128 .LEHB11-.LFB11041
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L115-.LFB11041
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB11041
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L116-.LFB11041
	.uleb128 0
	.uleb128 .LEHB13-.LFB11041
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE11041:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11041:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, @function
_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_:
.LFB11042:
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
.LFE11042:
	.size	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.type	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, @function
_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx:
.LFB11043:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11043
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
.LFE11043:
	.section	.gcc_except_table
.LLSDA11043:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11043-.LLSDACSB11043
.LLSDACSB11043:
.LLSDACSE11043:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, .-_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, @function
_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv:
.LFB11044:
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
.LFE11044:
	.size	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPxED2Ev,"axG",@progbits,_ZNSaIPxED5Ev,comdat
	.align 2
	.weak	_ZNSaIPxED2Ev
	.type	_ZNSaIPxED2Ev, @function
_ZNSaIPxED2Ev:
.LFB11046:
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
.LFE11046:
	.size	_ZNSaIPxED2Ev, .-_ZNSaIPxED2Ev
	.weak	_ZNSaIPxED1Ev
	.set	_ZNSaIPxED1Ev,_ZNSaIPxED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m:
.LFB11048:
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
.LFE11048:
	.size	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.section	.text._ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11050:
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
.LFE11050:
	.size	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_:
.LFB11051:
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
.LFE11051:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.section	.text._ZNKSt5dequeIxSaIxEE4sizeEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIxSaIxEE4sizeEv
	.type	_ZNKSt5dequeIxSaIxEE4sizeEv, @function
_ZNKSt5dequeIxSaIxEE4sizeEv:
.LFB11052:
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
.LFE11052:
	.size	_ZNKSt5dequeIxSaIxEE4sizeEv, .-_ZNKSt5dequeIxSaIxEE4sizeEv
	.section	.text._ZNKSt5dequeIxSaIxEE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIxSaIxEE8max_sizeEv
	.type	_ZNKSt5dequeIxSaIxEE8max_sizeEv, @function
_ZNKSt5dequeIxSaIxEE8max_sizeEv:
.LFB11053:
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
.LFE11053:
	.size	_ZNKSt5dequeIxSaIxEE8max_sizeEv, .-_ZNKSt5dequeIxSaIxEE8max_sizeEv
	.section	.text._ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm, @function
_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm:
.LFB11054:
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
	jbe	.L133
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
.L133:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11054:
	.size	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm, .-_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, @function
_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv:
.LFB11055:
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
.LFE11055:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.section	.text._ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB11056:
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
.LFE11056:
	.size	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC5ES3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_:
.LFB11058:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	lea	rax, -9[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11058:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC1ES3_
	.set	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC1ES3_,_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_
	.section	.text._ZStneRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZStneRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.weak	_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZStneRKSt15_Deque_iteratorIxRxPxES4_, @function
_ZStneRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11060:
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
	call	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	xor	eax, 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11060:
	.size	_ZStneRKSt15_Deque_iteratorIxRxPxES4_, .-_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZStmiRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.weak	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_, @function
_ZStmiRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11061:
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
.LFE11061:
	.size	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_, .-_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_
	.type	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_, @function
_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_:
.LFB11062:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 144
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L144
.L147:
	cmp	QWORD PTR -136[rbp], 0
	jne	.L145
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	jmp	.L143
.L145:
	sub	QWORD PTR -136[rbp], 1
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -112[rbp]
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -112[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -136[rbp]
	lea	rcx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_
	mov	rcx, QWORD PTR -128[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	QWORD PTR 16[rcx], rax
	mov	QWORD PTR 24[rcx], rdx
.L144:
	mov	rdx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	cmp	rax, 16
	setg	al
	test	al, al
	jne	.L147
.L143:
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L148
	call	__stack_chk_fail@PLT
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11062:
	.size	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_, .-_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_
	.section	.text._ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,"axG",@progbits,_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,comdat
	.weak	_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.type	_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, @function
_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_:
.LFB11063:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	cmp	rax, 16
	setg	al
	test	al, al
	je	.L150
	lea	rax, -80[rbp]
	mov	rcx, QWORD PTR -88[rbp]
	mov	edx, 16
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -80[rbp]
	mov	rcx, QWORD PTR -88[rbp]
	mov	edx, 16
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	jmp	.L153
.L150:
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
.L153:
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L152
	call	__stack_chk_fail@PLT
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11063:
	.size	_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, .-_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_:
.LFB11064:
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
.LFE11064:
	.size	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:
.LFB11202:
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
.LFE11202:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1Ev,_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, @function
_ZNSt15_Deque_iteratorIxRxPxEC2Ev:
.LFB11205:
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
.LFE11205:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, .-_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1Ev,_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m:
.LFB11207:
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
.LFE11207:
	.size	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, @function
_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv:
.LFB11208:
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
.LFE11208:
	.size	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, @function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm:
.LFB11209:
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
.LFE11209:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB11210:
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
.LFE11210:
	.size	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIPxEC2IxEERKSaIT_E,"axG",@progbits,_ZNSaIPxEC5IxEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaIPxEC2IxEERKSaIT_E
	.type	_ZNSaIPxEC2IxEERKSaIT_E, @function
_ZNSaIPxEC2IxEERKSaIT_E:
.LFB11212:
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
.LFE11212:
	.size	_ZNSaIPxEC2IxEERKSaIT_E, .-_ZNSaIPxEC2IxEERKSaIT_E
	.weak	_ZNSaIPxEC1IxEERKSaIT_E
	.set	_ZNSaIPxEC1IxEERKSaIT_E,_ZNSaIPxEC2IxEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPxED2Ev:
.LFB11215:
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
.LFE11215:
	.size	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxED1Ev,_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m:
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
.LFE11217:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.section	.text._ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.type	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, @function
_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_:
.LFB11220:
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
	je	.L170
	call	__stack_chk_fail@PLT
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11220:
	.size	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, .-_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.section	.text._ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb, @function
_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb:
.LFB11221:
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
	jbe	.L172
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -40[rbp]
	shr	rax
	lea	rcx, 0[0+rax*8]
	cmp	BYTE PTR -84[rbp], 0
	je	.L173
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L174
.L173:
	mov	eax, 0
.L174:
	add	rax, rcx
	add	rax, rdx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	cmp	QWORD PTR -56[rbp], rax
	jnb	.L175
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	jmp	.L176
.L175:
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
	jmp	.L176
.L172:
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
	je	.L177
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L178
.L177:
	mov	eax, 0
.L178:
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
.L176:
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
.LFE11221:
	.size	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m:
.LFB11222:
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
.LFE11222:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.section	.text._ZSteqRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.weak	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, @function
_ZSteqRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11223:
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
.LFE11223:
	.size	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, .-_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_,"axG",@progbits,_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_,comdat
	.weak	_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	.type	_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_, @function
_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_:
.LFB11224:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 144
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -136[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -137[rbp]
	lea	rcx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L184
	call	__stack_chk_fail@PLT
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11224:
	.size	_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_, .-_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	.section	.text._ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_,"axG",@progbits,_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_,comdat
	.weak	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_
	.type	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_, @function
_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_:
.LFB11225:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 208
	mov	QWORD PTR -184[rbp], rdi
	mov	QWORD PTR -192[rbp], rsi
	mov	QWORD PTR -200[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -192[rbp]
	mov	rax, QWORD PTR -200[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	lea	rax, -176[rbp]
	mov	rcx, QWORD PTR -192[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -112[rbp]
	mov	rcx, QWORD PTR -200[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxEl
	lea	rdx, -176[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -144[rbp]
	mov	rcx, QWORD PTR -192[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	mov	rdx, QWORD PTR -192[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rcx, -112[rbp]
	lea	rdx, -48[rbp]
	lea	rsi, -144[rbp]
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_
	mov	rdx, QWORD PTR -192[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -200[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -112[rbp]
	mov	rcx, QWORD PTR -192[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	mov	rax, QWORD PTR -184[rbp]
	lea	rcx, -48[rbp]
	lea	rdx, -80[rbp]
	lea	rsi, -112[rbp]
	mov	rdi, rax
	call	_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L187
	call	__stack_chk_fail@PLT
.L187:
	mov	rax, QWORD PTR -184[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11225:
	.size	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_, .-_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_
	.section	.text._ZStplRKSt15_Deque_iteratorIxRxPxEl,"axG",@progbits,_ZStplRKSt15_Deque_iteratorIxRxPxEl,comdat
	.weak	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	.type	_ZStplRKSt15_Deque_iteratorIxRxPxEl, @function
_ZStplRKSt15_Deque_iteratorIxRxPxEl:
.LFB11226:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEpLEl
	nop
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11226:
	.size	_ZStplRKSt15_Deque_iteratorIxRxPxEl, .-_ZStplRKSt15_Deque_iteratorIxRxPxEl
	.section	.text._ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,comdat
	.weak	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.type	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, @function
_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_:
.LFB11227:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 232
	.cfi_offset 3, -24
	mov	QWORD PTR -216[rbp], rdi
	mov	QWORD PTR -224[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -224[rbp]
	mov	rax, QWORD PTR -216[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	test	al, al
	jne	.L198
	lea	rax, -192[rbp]
	mov	rcx, QWORD PTR -216[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	jmp	.L193
.L196:
	mov	rdx, QWORD PTR -216[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -192[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -64[rbp]
	lea	rcx, -96[rbp]
	lea	rax, -225[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	je	.L194
	lea	rax, -192[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -200[rbp], rax
	lea	rax, -160[rbp]
	lea	rcx, -192[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rdx, -192[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -216[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -64[rbp]
	lea	rcx, -160[rbp]
	lea	rdx, -96[rbp]
	lea	rsi, -128[rbp]
	mov	rdi, rax
	call	_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_
	lea	rax, -200[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -216[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	QWORD PTR [rax], rbx
	jmp	.L195
.L194:
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE
	lea	rdx, -192[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_
.L195:
	lea	rax, -192[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEppEv
.L193:
	mov	rdx, QWORD PTR -224[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	test	al, al
	jne	.L196
	jmp	.L190
.L198:
	nop
.L190:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L197
	call	__stack_chk_fail@PLT
.L197:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11227:
	.size	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, .-_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.section	.text._ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,"axG",@progbits,_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,comdat
	.weak	_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.type	_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, @function
_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_:
.LFB11228:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	jmp	.L200
.L201:
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE
	lea	rdx, -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEppEv
.L200:
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	test	al, al
	jne	.L201
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L202
	call	__stack_chk_fail@PLT
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11228:
	.size	_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, .-_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv:
.LFB11314:
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
.LFE11314:
	.size	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv:
.LFB11313:
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
	je	.L206
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L207
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L207:
	call	_ZSt17__throw_bad_allocv@PLT
.L206:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11313:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, @function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm:
.LFB11315:
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
.LFE11315:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPxEC2Ev:
.LFB11317:
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
.LFE11317:
	.size	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev,_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11320:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.section	.text._ZSt4copyIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIPPxS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.type	_ZSt4copyIPPxS1_ET0_T_S3_S2_, @function
_ZSt4copyIPPxS1_ET0_T_S3_S2_:
.LFB11321:
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
.LFE11321:
	.size	_ZSt4copyIPPxS1_ET0_T_S3_S2_, .-_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.section	.text._ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.type	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_, @function
_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_:
.LFB11322:
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
.LFE11322:
	.size	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_, .-_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv:
.LFB11324:
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
.LFE11324:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv:
.LFB11323:
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
	je	.L221
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L222
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L222:
	call	_ZSt17__throw_bad_allocv@PLT
.L221:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11323:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.section	.text._ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_,"axG",@progbits,_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_,comdat
	.weak	_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	.type	_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_, @function
_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_:
.LFB11325:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 176
	mov	QWORD PTR -152[rbp], rdi
	mov	QWORD PTR -160[rbp], rsi
	mov	QWORD PTR -168[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -160[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -152[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -169[rbp]
	lea	rcx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	mov	rdx, QWORD PTR -160[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	jmp	.L225
.L227:
	mov	rdx, QWORD PTR -152[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -144[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -169[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	je	.L226
	lea	rdx, -144[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -160[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -152[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rcx, -169[rbp]
	lea	rdx, -48[rbp]
	lea	rsi, -80[rbp]
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_
.L226:
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEppEv
.L225:
	mov	rdx, QWORD PTR -168[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStltRKSt15_Deque_iteratorIxRxPxES4_
	test	al, al
	jne	.L227
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L228
	call	__stack_chk_fail@PLT
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11325:
	.size	_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_, .-_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	.section	.text._ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_,"axG",@progbits,_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_,comdat
	.weak	_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	.type	_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_, @function
_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_:
.LFB11326:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 144
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L230
.L231:
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rcx, QWORD PTR -136[rbp]
	lea	rdx, -48[rbp]
	lea	rsi, -80[rbp]
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_
.L230:
	mov	rdx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	cmp	rax, 1
	setg	al
	test	al, al
	jne	.L231
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L232
	call	__stack_chk_fail@PLT
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11326:
	.size	_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_, .-_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	.section	.text._ZStmiRKSt15_Deque_iteratorIxRxPxEl,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIxRxPxEl,comdat
	.weak	_ZStmiRKSt15_Deque_iteratorIxRxPxEl
	.type	_ZStmiRKSt15_Deque_iteratorIxRxPxEl, @function
_ZStmiRKSt15_Deque_iteratorIxRxPxEl:
.LFB11327:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEmIEl
	nop
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11327:
	.size	_ZStmiRKSt15_Deque_iteratorIxRxPxEl, .-_ZStmiRKSt15_Deque_iteratorIxRxPxEl
	.section	.text._ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_,comdat
	.weak	_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_
	.type	_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_, @function
_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_:
.LFB11328:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	add	rsp, -128
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -104[rbp], rdx
	mov	QWORD PTR -112[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -113[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	je	.L236
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -113[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	je	.L237
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	jmp	.L243
.L237:
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -113[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	je	.L239
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	jmp	.L243
.L239:
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	jmp	.L243
.L236:
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -113[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	je	.L240
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	jmp	.L243
.L240:
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -113[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	je	.L241
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	jmp	.L243
.L241:
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
.L243:
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L242
	call	__stack_chk_fail@PLT
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11328:
	.size	_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_, .-_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_
	.section	.text._ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_,"axG",@progbits,_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_,comdat
	.weak	_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_
	.type	_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_, @function
_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_:
.LFB11329:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	add	rsp, -128
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -104[rbp], rdx
	mov	QWORD PTR -112[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L245
.L246:
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEppEv
.L245:
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -113[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	jne	.L246
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	jmp	.L247
.L248:
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEmmEv
.L247:
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -113[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	jne	.L248
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStltRKSt15_Deque_iteratorIxRxPxES4_
	xor	eax, 1
	test	al, al
	je	.L249
	mov	rdx, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L252
	jmp	.L253
.L249:
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEppEv
	jmp	.L245
.L253:
	call	__stack_chk_fail@PLT
.L252:
	mov	rax, QWORD PTR -88[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11329:
	.size	_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_, .-_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEpLEl,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEpLEl,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEpLEl
	.type	_ZNSt15_Deque_iteratorIxRxPxEpLEl, @function
_ZNSt15_Deque_iteratorIxRxPxEpLEl:
.LFB11330:
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
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	js	.L255
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jge	.L255
	mov	eax, 1
	jmp	.L256
.L255:
	mov	eax, 0
.L256:
	test	al, al
	je	.L257
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	jmp	.L258
.L257:
	cmp	QWORD PTR -32[rbp], 0
	jle	.L259
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	rcx, rax
	mov	rax, QWORD PTR -32[rbp]
	cqo
	idiv	rcx
	jmp	.L260
.L259:
	mov	rax, QWORD PTR -32[rbp]
	not	rax
	mov	rbx, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	rsi, rax
	mov	rax, rbx
	mov	edx, 0
	div	rsi
	not	rax
.L260:
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -24[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR 8[rax]
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	imul	rax, QWORD PTR -24[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, rdx
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
.L258:
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11330:
	.size	_ZNSt15_Deque_iteratorIxRxPxEpLEl, .-_ZNSt15_Deque_iteratorIxRxPxEpLEl
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEppEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEppEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEppEv
	.type	_ZNSt15_Deque_iteratorIxRxPxEppEv, @function
_ZNSt15_Deque_iteratorIxRxPxEppEv:
.LFB11331:
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
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	jne	.L263
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
.L263:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11331:
	.size	_ZNSt15_Deque_iteratorIxRxPxEppEv, .-_ZNSt15_Deque_iteratorIxRxPxEppEv
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_:
.LFB11332:
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
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -28[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -32[rbp], eax
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNKSt7greaterIiEclERKiS2_
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L267
	call	__stack_chk_fail@PLT
.L267:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11332:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	.section	.text._ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_:
.LFB11333:
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
.LFE11333:
	.size	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_,"axG",@progbits,_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_,comdat
	.weak	_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_
	.type	_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_, @function
_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_:
.LFB11334:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 208
	mov	QWORD PTR -184[rbp], rdi
	mov	QWORD PTR -192[rbp], rsi
	mov	QWORD PTR -200[rbp], rdx
	mov	QWORD PTR -208[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -200[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -80[rbp]
	lea	rdx, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	mov	rdx, QWORD PTR -192[rbp]
	lea	rax, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -144[rbp]
	lea	rdx, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	mov	rax, QWORD PTR -184[rbp]
	lea	rcx, -48[rbp]
	lea	rdx, -80[rbp]
	lea	rsi, -144[rbp]
	mov	rdi, rax
	call	_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L272
	call	__stack_chk_fail@PLT
.L272:
	mov	rax, QWORD PTR -184[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11334:
	.size	_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_, .-_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_
	.section	.text._ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE,comdat
	.weak	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE, @function
_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE:
.LFB11335:
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -33[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_
	mov	rdx, rax
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L275
	call	__stack_chk_fail@PLT
.L275:
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11335:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE, .-_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE
	.section	.text._ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_,"axG",@progbits,_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_,comdat
	.weak	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_
	.type	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_, @function
_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_:
.LFB11336:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 120
	.cfi_offset 3, -24
	mov	QWORD PTR -120[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -104[rbp], rax
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	jmp	.L277
.L278:
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	QWORD PTR [rax], rbx
	mov	rcx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	QWORD PTR 16[rcx], rax
	mov	QWORD PTR 24[rcx], rdx
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEmmEv
.L277:
	lea	rdx, -96[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rdx, -64[rbp]
	lea	rcx, -104[rbp]
	lea	rax, -121[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_
	test	al, al
	jne	.L278
	lea	rax, -104[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	QWORD PTR [rax], rbx
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L279
	call	__stack_chk_fail@PLT
.L279:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11336:
	.size	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_, .-_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv:
.LFB11443:
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
.LFE11443:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.section	.text._ZSt12__miter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__miter_baseIPPxET_S2_,comdat
	.weak	_ZSt12__miter_baseIPPxET_S2_
	.type	_ZSt12__miter_baseIPPxET_S2_, @function
_ZSt12__miter_baseIPPxET_S2_:
.LFB11444:
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
.LFE11444:
	.size	_ZSt12__miter_baseIPPxET_S2_, .-_ZSt12__miter_baseIPPxET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11445:
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
.LFE11445:
	.size	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11447:
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
.LFE11447:
	.size	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_,"axG",@progbits,_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_,comdat
	.weak	_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	.type	_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_, @function
_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_:
.LFB11448:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 120
	.cfi_offset 3, -24
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	QWORD PTR -120[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	cmp	rax, 1
	setle	al
	test	al, al
	jne	.L294
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -80[rbp], rax
.L292:
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -88[rbp], rax
	lea	rax, -88[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -72[rbp]
	mov	rsi, QWORD PTR -80[rbp]
	lea	rax, -64[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_
	cmp	QWORD PTR -80[rbp], 0
	je	.L295
	sub	QWORD PTR -80[rbp], 1
	jmp	.L292
.L294:
	nop
	jmp	.L288
.L295:
	nop
.L288:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L293
	call	__stack_chk_fail@PLT
.L293:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11448:
	.size	_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_, .-_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	.section	.text._ZStltRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZStltRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.weak	_ZStltRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZStltRKSt15_Deque_iteratorIxRxPxES4_, @function
_ZStltRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11449:
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
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	rdx, rax
	jne	.L297
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	setb	al
	jmp	.L299
.L297:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	rdx, rax
	setb	al
.L299:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11449:
	.size	_ZStltRKSt15_Deque_iteratorIxRxPxES4_, .-_ZStltRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_,"axG",@progbits,_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_,comdat
	.weak	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_
	.type	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_, @function
_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_:
.LFB11450:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 96
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -104[rbp], rdx
	mov	QWORD PTR -112[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	QWORD PTR [rax], rbx
	lea	rax, -72[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	mov	r12, rax
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -64[rbp]
	mov	rcx, rbx
	mov	rdx, r12
	mov	esi, 0
	mov	rdi, rax
	call	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L301
	call	__stack_chk_fail@PLT
.L301:
	add	rsp, 96
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11450:
	.size	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_, .-_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEmIEl,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEmIEl,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEmIEl
	.type	_ZNSt15_Deque_iteratorIxRxPxEmIEl, @function
_ZNSt15_Deque_iteratorIxRxPxEmIEl:
.LFB11451:
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
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEpLEl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11451:
	.size	_ZNSt15_Deque_iteratorIxRxPxEmIEl, .-_ZNSt15_Deque_iteratorIxRxPxEmIEl
	.section	.text._ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_,"axG",@progbits,_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_,comdat
	.weak	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	.type	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_, @function
_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_:
.LFB11452:
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
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11452:
	.size	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_, .-_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	.section	.text._ZNKSt7greaterIiEclERKiS2_,"axG",@progbits,_ZNKSt7greaterIiEclERKiS2_,comdat
	.align 2
	.weak	_ZNKSt7greaterIiEclERKiS2_
	.type	_ZNKSt7greaterIiEclERKiS2_, @function
_ZNKSt7greaterIiEclERKiS2_:
.LFB11453:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setg	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11453:
	.size	_ZNKSt7greaterIiEclERKiS2_, .-_ZNKSt7greaterIiEclERKiS2_
	.section	.text._ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_,"axG",@progbits,_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_,comdat
	.weak	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	.type	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_, @function
_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_:
.LFB11454:
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
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11454:
	.size	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_, .-_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	.section	.text._ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_,comdat
	.weak	_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_
	.type	_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_, @function
_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_:
.LFB11455:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 272
	mov	QWORD PTR -248[rbp], rdi
	mov	QWORD PTR -256[rbp], rsi
	mov	QWORD PTR -264[rbp], rdx
	mov	QWORD PTR -272[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -80[rbp]
	lea	rdx, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	mov	rdx, QWORD PTR -264[rbp]
	lea	rax, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -144[rbp]
	lea	rdx, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	mov	rdx, QWORD PTR -256[rbp]
	lea	rax, -240[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rax, -208[rbp]
	lea	rdx, -240[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	lea	rax, -48[rbp]
	lea	rcx, -80[rbp]
	lea	rdx, -144[rbp]
	lea	rsi, -208[rbp]
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_
	mov	rax, QWORD PTR -248[rbp]
	lea	rdx, -48[rbp]
	mov	rcx, QWORD PTR -272[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L311
	call	__stack_chk_fail@PLT
.L311:
	mov	rax, QWORD PTR -248[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11455:
	.size	_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_, .-_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_
	.section	.text._ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB11457:
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
.LFE11457:
	.size	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC5EONS0_15_Iter_comp_iterIS3_EE,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE:
.LFB11459:
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
	call	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11459:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE
	.set	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE,_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_:
.LFB11461:
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
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -28[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -32[rbp], eax
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNKSt7greaterIiEclERKiS2_
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L317
	call	__stack_chk_fail@PLT
.L317:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11461:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_
	.section	.text._ZSt12__niter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__niter_baseIPPxET_S2_,comdat
	.weak	_ZSt12__niter_baseIPPxET_S2_
	.type	_ZSt12__niter_baseIPPxET_S2_, @function
_ZSt12__niter_baseIPPxET_S2_:
.LFB11529:
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
.LFE11529:
	.size	_ZSt12__niter_baseIPPxET_S2_, .-_ZSt12__niter_baseIPPxET_S2_
	.section	.text._ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11530:
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
.LFE11530:
	.size	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIPPxET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIPPxET_RKS2_S2_,comdat
	.weak	_ZSt12__niter_wrapIPPxET_RKS2_S2_
	.type	_ZSt12__niter_wrapIPPxET_RKS2_S2_, @function
_ZSt12__niter_wrapIPPxET_RKS2_S2_:
.LFB11531:
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
.LFE11531:
	.size	_ZSt12__niter_wrapIPPxET_RKS2_S2_, .-_ZSt12__niter_wrapIPPxET_RKS2_S2_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11532:
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
.LFE11532:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_,comdat
	.weak	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_
	.type	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_, @function
_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_:
.LFB11533:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 152
	.cfi_offset 3, -24
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	mov	QWORD PTR -144[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -128[rbp]
	mov	QWORD PTR -104[rbp], rax
	mov	rax, QWORD PTR -128[rbp]
	mov	QWORD PTR -112[rbp], rax
	jmp	.L327
.L329:
	mov	rax, QWORD PTR -112[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -112[rbp], rax
	mov	rax, QWORD PTR -112[rbp]
	lea	rdx, -1[rax]
	lea	rax, -64[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -112[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rdx, -64[rbp]
	lea	rcx, -96[rbp]
	lea	rax, -145[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	test	al, al
	je	.L328
	sub	QWORD PTR -112[rbp], 1
.L328:
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -112[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -128[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	QWORD PTR [rax], rbx
	mov	rax, QWORD PTR -112[rbp]
	mov	QWORD PTR -128[rbp], rax
.L327:
	mov	rax, QWORD PTR -136[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -112[rbp], rax
	jl	.L329
	mov	rax, QWORD PTR -136[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L330
	mov	rax, QWORD PTR -136[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -112[rbp], rax
	jne	.L330
	mov	rax, QWORD PTR -112[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -112[rbp], rax
	mov	rax, QWORD PTR -112[rbp]
	lea	rdx, -1[rax]
	lea	rax, -64[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -128[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	QWORD PTR [rax], rbx
	mov	rax, QWORD PTR -112[rbp]
	sub	rax, 1
	mov	QWORD PTR -128[rbp], rax
.L330:
	lea	rax, -145[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	lea	rcx, -96[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rsi, QWORD PTR -128[rbp]
	lea	rax, -64[rbp]
	mov	r8, rcx
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L331
	call	__stack_chk_fail@PLT
.L331:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11533:
	.size	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_, .-_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_
	.section	.text._ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.weak	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB11534:
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
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L333
	call	__stack_chk_fail@PLT
.L333:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11534:
	.size	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_,"axG",@progbits,_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_,comdat
	.weak	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	.type	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_, @function
_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_:
.LFB11535:
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
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11535:
	.size	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_, .-_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	.section	.text._ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_
	.type	_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_, @function
_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_:
.LFB11536:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 144
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	mov	QWORD PTR -144[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -144[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -136[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -120[rbp]
	lea	rcx, -48[rbp]
	lea	rdx, -80[rbp]
	lea	rsi, -112[rbp]
	mov	rdi, rax
	call	_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L338
	call	__stack_chk_fail@PLT
.L338:
	mov	rax, QWORD PTR -120[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11536:
	.size	_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_, .-_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_
	.section	.text._ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_,"axG",@progbits,_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_,comdat
	.weak	_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_
	.type	_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_, @function
_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_:
.LFB11537:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11537:
	.size	_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_, .-_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_
	.section	.text._ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11567:
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
.LFE11567:
	.size	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11568:
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
.LFE11568:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC5EONS0_15_Iter_comp_iterIS3_EE,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE:
.LFB11570:
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
	call	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11570:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE
	.set	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE,_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.section	.text._ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_,"axG",@progbits,_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_,comdat
	.weak	_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_
	.type	_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_, @function
_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_:
.LFB11572:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 152
	.cfi_offset 3, -24
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	mov	QWORD PTR -144[rbp], rcx
	mov	QWORD PTR -152[rbp], r8
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -128[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -104[rbp], rax
	jmp	.L347
.L350:
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -128[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	QWORD PTR [rax], rbx
	mov	rax, QWORD PTR -104[rbp]
	mov	QWORD PTR -128[rbp], rax
	mov	rax, QWORD PTR -128[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -104[rbp], rax
.L347:
	mov	rax, QWORD PTR -128[rbp]
	cmp	rax, QWORD PTR -136[rbp]
	jle	.L348
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rdx, -144[rbp]
	lea	rcx, -64[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_
	test	al, al
	je	.L348
	mov	eax, 1
	jmp	.L349
.L348:
	mov	eax, 0
.L349:
	test	al, al
	jne	.L350
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	rbx, QWORD PTR [rax]
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -128[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	QWORD PTR [rax], rbx
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L351
	call	__stack_chk_fail@PLT
.L351:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11572:
	.size	_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_, .-_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_
	.section	.text._ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_,"axG",@progbits,_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_,comdat
	.weak	_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_
	.type	_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_, @function
_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_:
.LFB11573:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 136
	.cfi_offset 3, -24
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	mov	QWORD PTR -144[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -128[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	rdx, rax
	je	.L353
	mov	rdx, QWORD PTR -144[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rsi, QWORD PTR 8[rax]
	lea	rax, -64[rbp]
	lea	rcx, -96[rbp]
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	mov	rcx, QWORD PTR -144[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 16[rcx], rax
	mov	QWORD PTR 24[rcx], rdx
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR 24[rax]
	sub	rax, 8
	mov	QWORD PTR -104[rbp], rax
	jmp	.L354
.L355:
	mov	rdx, QWORD PTR -144[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -104[rbp]
	mov	rbx, QWORD PTR [rax]
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	sal	rax, 3
	lea	rdi, [rbx+rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, QWORD PTR [rax]
	lea	rax, -64[rbp]
	lea	rdx, -96[rbp]
	mov	rcx, rdx
	mov	rdx, rdi
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	mov	rcx, QWORD PTR -144[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 16[rcx], rax
	mov	QWORD PTR 24[rcx], rdx
	sub	QWORD PTR -104[rbp], 8
.L354:
	mov	rax, QWORD PTR -128[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	QWORD PTR -104[rbp], rax
	jne	.L355
	mov	rdx, QWORD PTR -144[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -128[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -128[rbp]
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR -120[rbp]
	lea	rcx, -64[rbp]
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	jmp	.L352
.L353:
	mov	rdx, QWORD PTR -144[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -128[rbp]
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR -120[rbp]
	lea	rcx, -64[rbp]
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
.L352:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L357
	call	__stack_chk_fail@PLT
.L357:
	mov	rax, QWORD PTR -120[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11573:
	.size	_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_, .-_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_:
.LFB11577:
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
	je	.L359
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
.L359:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11577:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_, @function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_:
.LFB11579:
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
	je	.L362
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
.L362:
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
.LFE11579:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_:
.LFB11580:
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
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -28[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -32[rbp], eax
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNKSt7greaterIiEclERKiS2_
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L366
	call	__stack_chk_fail@PLT
.L366:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11580:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	.type	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_, @function
_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_:
.LFB11581:
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
	mov	rax, QWORD PTR -72[rbp]
	sub	rax, QWORD PTR -64[rbp]
	sar	rax, 3
	mov	QWORD PTR -40[rbp], rax
	jmp	.L368
.L370:
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	test	rax, rax
	jne	.L369
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 24[rax]
	sub	rax, 8
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
.L369:
	lea	rdx, -32[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIlERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	neg	rax
	add	QWORD PTR -72[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEmIEl
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -40[rbp], rax
.L368:
	mov	rax, QWORD PTR -40[rbp]
	test	rax, rax
	jg	.L370
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L372
	call	__stack_chk_fail@PLT
.L372:
	mov	rax, QWORD PTR -56[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11581:
	.size	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_, .-_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_
	.type	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_, @function
_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_:
.LFB11593:
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
	call	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11593:
	.size	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_, .-_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_
	.type	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_, @function
_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_:
.LFB11595:
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
	call	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11595:
	.size	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_, .-_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_
	.type	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_, @function
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_:
.LFB11597:
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
	je	.L378
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
.L378:
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
.LFE11597:
	.size	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_, .-_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11634:
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
	jne	.L382
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L382
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
.L382:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11634:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11657:
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
.LFE11657:
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
