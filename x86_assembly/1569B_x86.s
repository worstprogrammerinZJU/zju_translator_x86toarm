	.file	"1569B.cpp"
	.intel_syntax noprefix
	.text
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
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
.LC0:
	.string	"NO"
.LC1:
	.string	"YES"
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
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 184
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	edi, 0
.LEHB0:
	call	_ZNSt8ios_base15sync_with_stdioEb@PLT
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	lea	rax, -152[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
.L33:
	mov	rax, rsp
	mov	QWORD PTR -200[rbp], rax
	lea	rax, -148[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
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
	mov	DWORD PTR -144[rbp], 0
	mov	DWORD PTR -140[rbp], 0
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	sete	al
	test	al, al
	je	.L4
	add	DWORD PTR -144[rbp], 1
.L4:
	add	DWORD PTR -140[rbp], 1
.L3:
	mov	eax, DWORD PTR -148[rbp]
	cmp	DWORD PTR -140[rbp], eax
	jl	.L5
	cmp	DWORD PTR -144[rbp], 1
	je	.L6
	cmp	DWORD PTR -144[rbp], 2
	jne	.L7
.L6:
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	mov	ebx, 0
	jmp	.L8
.L7:
	mov	esi, DWORD PTR -148[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -120[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -224[rbp], rax
	mov	QWORD PTR -216[rbp], 0
	movsx	rbx, esi
	mov	edi, DWORD PTR -148[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -112[rbp], rax
	movsx	rax, esi
	mov	r12, rax
	mov	r13d, 0
	movsx	rax, edi
	mov	r14, rax
	mov	r15d, 0
	mov	rdx, r13
	imul	rdx, r14
	mov	rax, r15
	imul	rax, r12
	lea	rcx, [rdx+rax]
	mov	rax, r12
	mul	r14
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR -176[rbp], rax
	mov	QWORD PTR -168[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -192[rbp], rax
	mov	QWORD PTR -184[rbp], 0
	mov	r8, QWORD PTR -176[rbp]
	mov	r9, QWORD PTR -168[rbp]
	mov	rdx, r9
	mov	r10, QWORD PTR -192[rbp]
	mov	r11, QWORD PTR -184[rbp]
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
	mov	edx, 16
	sub	rdx, 1
	add	rax, rdx
	mov	ecx, 16
	mov	edx, 0
	div	rcx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L9:
	cmp	rsp, rdx
	je	.L10
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L9
.L10:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L11
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L11:
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -104[rbp], rax
	mov	DWORD PTR -136[rbp], 0
	jmp	.L12
.L27:
	mov	BYTE PTR -153[rbp], 1
	mov	eax, DWORD PTR -136[rbp]
	mov	DWORD PTR -132[rbp], eax
	jmp	.L13
.L26:
	mov	eax, DWORD PTR -136[rbp]
	cmp	eax, DWORD PTR -132[rbp]
	jne	.L14
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -132[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -136[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 88
	jmp	.L15
.L14:
	mov	eax, DWORD PTR -136[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	jne	.L16
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	je	.L17
.L16:
	mov	eax, DWORD PTR -136[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	jne	.L18
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	je	.L17
.L18:
	mov	eax, DWORD PTR -136[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	jne	.L19
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	jne	.L19
.L17:
	mov	eax, 1
	jmp	.L20
.L19:
	mov	eax, 0
.L20:
	test	al, al
	je	.L21
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -132[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -136[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 61
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -136[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 61
	jmp	.L15
.L21:
	mov	eax, DWORD PTR -136[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	jne	.L22
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	jne	.L22
	mov	eax, 1
	jmp	.L23
.L22:
	mov	eax, 0
.L23:
	test	al, al
	je	.L15
	cmp	BYTE PTR -153[rbp], 0
	je	.L24
	mov	BYTE PTR -153[rbp], 0
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -132[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -136[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 43
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -136[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 45
	jmp	.L39
.L24:
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -132[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -136[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 45
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -136[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 43
.L39:
	nop
.L15:
	add	DWORD PTR -132[rbp], 1
.L13:
	mov	eax, DWORD PTR -148[rbp]
	cmp	DWORD PTR -132[rbp], eax
	jl	.L26
	add	DWORD PTR -136[rbp], 1
.L12:
	mov	eax, DWORD PTR -148[rbp]
	cmp	DWORD PTR -136[rbp], eax
	jl	.L27
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	mov	DWORD PTR -128[rbp], 0
	jmp	.L28
.L31:
	mov	DWORD PTR -124[rbp], 0
	jmp	.L29
.L30:
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -124[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -128[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	add	DWORD PTR -124[rbp], 1
.L29:
	mov	eax, DWORD PTR -148[rbp]
	cmp	DWORD PTR -124[rbp], eax
	jl	.L30
	mov	esi, 10
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.LEHE1:
	add	DWORD PTR -128[rbp], 1
.L28:
	mov	eax, DWORD PTR -148[rbp]
	cmp	DWORD PTR -128[rbp], eax
	jl	.L31
	mov	ebx, 1
.L8:
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	cmp	ebx, 1
	jne	.L32
	nop
	mov	rsp, QWORD PTR -200[rbp]
	jmp	.L2
.L32:
	mov	rsp, QWORD PTR -200[rbp]
.L2:
	mov	eax, DWORD PTR -152[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -152[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L33
	mov	eax, 0
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L36
	jmp	.L38
.L37:
	endbr64
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L38:
	call	__stack_chk_fail@PLT
.L36:
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
	.uleb128 .L37-.LFB9704
	.uleb128 0
	.uleb128 .LEHB2-.LFB9704
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE9704:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11457:
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
	jne	.L42
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L42
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
.L42:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11457:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11480:
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
.LFE11480:
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
