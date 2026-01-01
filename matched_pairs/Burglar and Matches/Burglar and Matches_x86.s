	.file	"Burglar and Matches.cpp"
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
	.section	.text._ZSt4__lgl,"axG",@progbits,_ZSt4__lgl,comdat
	.weak	_ZSt4__lgl
	.type	_ZSt4__lgl, @function
_ZSt4__lgl:
.LFB405:
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
.LFE405:
	.size	_ZSt4__lgl, .-_ZSt4__lgl
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
	.text
	.align 2
	.type	_ZZ4mainENKUlRKSt4pairIiiES2_E_clES2_S2_, @function
_ZZ4mainENKUlRKSt4pairIiiES2_E_clES2_S2_:
.LFB9706:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	cmp	edx, eax
	setl	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9706:
	.size	_ZZ4mainENKUlRKSt4pairIiiES2_E_clES2_S2_, .-_ZZ4mainENKUlRKSt4pairIiiES2_E_clES2_S2_
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
	sub	rsp, 88
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
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	mov	QWORD PTR -56[rbp], 0
	lea	rax, -84[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -88[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
.LEHE0:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIiiEEC1Ev
	mov	eax, DWORD PTR -88[rbp]
	movsx	rcx, eax
	lea	rdx, -64[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB1:
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEC1EmRKS2_
.LEHE1:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIiiEED1Ev
	mov	DWORD PTR -80[rbp], 0
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -80[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB2:
	call	_ZNSirsERi@PLT
	mov	rbx, rax
	mov	eax, DWORD PTR -80[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	add	rax, 4
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERi@PLT
	add	DWORD PTR -80[rbp], 1
.L11:
	mov	eax, DWORD PTR -88[rbp]
	cmp	DWORD PTR -80[rbp], eax
	jl	.L12
	lea	rax, -64[rbp]
	lea	rdx, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv
	lea	rax, -72[rbp]
	lea	rdx, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv
	lea	rdx, -64[rbp]
	lea	rax, -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEEZ4mainEUlRKS4_SC_E_EvT_SE_T0_
	mov	DWORD PTR -76[rbp], 0
	jmp	.L13
.L18:
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	sete	al
	test	al, al
	je	.L14
	add	DWORD PTR -76[rbp], 1
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -84[rbp]
	cmp	edx, eax
	setle	al
	test	al, al
	je	.L15
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	ebx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	eax, DWORD PTR [rax]
	imul	eax, ebx
	cdqe
	add	QWORD PTR -56[rbp], rax
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, edx
	mov	DWORD PTR -84[rbp], eax
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	DWORD PTR [rax], 0
	jmp	.L13
.L15:
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -84[rbp]
	cmp	edx, eax
	setg	al
	test	al, al
	je	.L16
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	edx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR -84[rbp]
	imul	eax, edx
	cdqe
	add	QWORD PTR -56[rbp], rax
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	edx, DWORD PTR [rax]
	mov	ecx, DWORD PTR -84[rbp]
	sub	edx, ecx
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR -84[rbp], 0
	jmp	.L13
.L16:
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	eax, DWORD PTR 4[rax]
	cdqe
	add	QWORD PTR -56[rbp], rax
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, 1
	mov	DWORD PTR -84[rbp], eax
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	mov	edx, DWORD PTR [rax]
	sub	edx, 1
	mov	DWORD PTR [rax], edx
.L13:
	mov	eax, DWORD PTR -84[rbp]
	test	eax, eax
	jle	.L17
	mov	eax, DWORD PTR -88[rbp]
	cmp	DWORD PTR -76[rbp], eax
	jl	.L18
.L17:
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
.LEHE2:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EED1Ev
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L22
	jmp	.L25
.L23:
	endbr64
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIiiEED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB3:
	call	_Unwind_Resume@PLT
.L24:
	endbr64
	mov	rbx, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EED1Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE3:
.L25:
	call	__stack_chk_fail@PLT
.L22:
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
	.uleb128 .L23-.LFB9704
	.uleb128 0
	.uleb128 .LEHB2-.LFB9704
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L24-.LFB9704
	.uleb128 0
	.uleb128 .LEHB3-.LFB9704
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE9704:
	.text
	.size	main, .-main
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB10025:
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
.LFE10025:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSaISt4pairIiiEEC2Ev,"axG",@progbits,_ZNSaISt4pairIiiEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIiiEEC2Ev
	.type	_ZNSaISt4pairIiiEEC2Ev, @function
_ZNSaISt4pairIiiEEC2Ev:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10398:
	.size	_ZNSaISt4pairIiiEEC2Ev, .-_ZNSaISt4pairIiiEEC2Ev
	.weak	_ZNSaISt4pairIiiEEC1Ev
	.set	_ZNSaISt4pairIiiEEC1Ev,_ZNSaISt4pairIiiEEC2Ev
	.section	.text._ZNSaISt4pairIiiEED2Ev,"axG",@progbits,_ZNSaISt4pairIiiEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIiiEED2Ev
	.type	_ZNSaISt4pairIiiEED2Ev, @function
_ZNSaISt4pairIiiEED2Ev:
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
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10401:
	.size	_ZNSaISt4pairIiiEED2Ev, .-_ZNSaISt4pairIiiEED2Ev
	.weak	_ZNSaISt4pairIiiEED1Ev
	.set	_ZNSaISt4pairIiiEED1Ev,_ZNSaISt4pairIiiEED2Ev
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_, @function
_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_:
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
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB4:
	call	_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2EmRKS2_
.LEHE4:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB5:
	call	_ZNSt6vectorISt4pairIiiESaIS1_EE21_M_default_initializeEm
.LEHE5:
	jmp	.L33
.L32:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L33:
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
	.uleb128 .LEHB4-.LFB10404
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB10404
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L32-.LFB10404
	.uleb128 0
	.uleb128 .LEHB6-.LFB10404
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE10404:
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_, .-_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EEC1EmRKS2_
	.set	_ZNSt6vectorISt4pairIiiESaIS1_EEC1EmRKS2_,_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev, @function
_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev:
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev
	nop
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
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev, .-_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EED1Ev
	.set	_ZNSt6vectorISt4pairIiiESaIS1_EED1Ev,_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm, @function
_ZNSt6vectorISt4pairIiiESaIS1_EEixEm:
.LFB10409:
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
	sal	rax, 3
	add	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10409:
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EEixEm, .-_ZNSt6vectorISt4pairIiiESaIS1_EEixEm
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv, @function
_ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ES8_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10410:
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv, .-_ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv, @function
_ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv:
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ES8_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10411:
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv, .-_ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv
	.text
	.type	_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEEZ4mainEUlRKS4_SC_E_EvT_SE_T0_, @function
_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEEZ4mainEUlRKS4_SC_E_EvT_SE_T0_:
.LFB10412:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	call	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_15_Iter_comp_iterIT_EES8_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt6__sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10412:
	.size	_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEEZ4mainEUlRKS4_SC_E_EvT_SE_T0_, .-_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEEZ4mainEUlRKS4_SC_E_EvT_SE_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev:
.LFB10806:
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
.LFE10806:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev:
.LFB10809:
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
.LFE10809:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIiiEED2Ev
	.section	.rodata
	.align 8
.LC0:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_,comdat
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_, @function
_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_:
.LFB10811:
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaISt4pairIiiEEC1ERKS1_
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_max_sizeERKS2_
	cmp	QWORD PTR -40[rbp], rax
	seta	bl
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIiiEED1Ev
	test	bl, bl
	je	.L46
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L46:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10811:
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_, .-_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev:
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
	mov	rdi, rax
	call	_ZNSaISt4pairIiiEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10814:
	.size	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2EmRKS2_
	.type	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2EmRKS2_, @function
_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2EmRKS2_:
.LFB10816:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10816
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC1ERKS2_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB7:
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_M_create_storageEm
.LEHE7:
	jmp	.L53
.L52:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L53:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10816:
	.section	.gcc_except_table
.LLSDA10816:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10816-.LLSDACSB10816
.LLSDACSB10816:
	.uleb128 .LEHB7-.LFB10816
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L52-.LFB10816
	.uleb128 0
	.uleb128 .LEHB8-.LFB10816
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10816:
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2EmRKS2_, .-_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2EmRKS2_
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC1EmRKS2_
	.set	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC1EmRKS2_,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EEC2EmRKS2_
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev:
.LFB10819:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10819
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10819:
	.section	.gcc_except_table
.LLSDA10819:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10819-.LLSDACSB10819
.LLSDACSB10819:
.LLSDACSE10819:
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev, .-_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED1Ev,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EE21_M_default_initializeEm
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EE21_M_default_initializeEm, @function
_ZNSt6vectorISt4pairIiiESaIS1_EE21_M_default_initializeEm:
.LFB10821:
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
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__uninitialized_default_n_aIPSt4pairIiiEmS1_ET_S3_T0_RSaIT1_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10821:
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EE21_M_default_initializeEm, .-_ZNSt6vectorISt4pairIiiESaIS1_EE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB10822:
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
.LFE10822:
	.size	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIiiEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10823:
	.size	_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv, @function
_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv:
.LFB10824:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 8[rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10824:
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv, .-_ZNSt6vectorISt4pairIiiESaIS1_EE3endEv
	.section	.text._ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ES8_,"axG",@progbits,_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC5ES8_,comdat
	.align 2
	.weak	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ES8_
	.type	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ES8_, @function
_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ES8_:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10826:
	.size	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ES8_, .-_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ES8_
	.weak	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ES8_
	.set	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ES8_,_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ES8_
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv, @function
_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv:
.LFB10828:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L65
	call	__stack_chk_fail@PLT
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10828:
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv, .-_ZNSt6vectorISt4pairIiiESaIS1_EE5beginEv
	.text
	.type	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_15_Iter_comp_iterIT_EES8_, @function
_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_15_Iter_comp_iterIT_EES8_:
.LFB10829:
	.cfi_startproc
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
	call	_ZSt4moveIRZ4mainEUlRKSt4pairIiiES3_E_EONSt16remove_referenceIT_E4typeEOS7_
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC1ES6_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L68
	call	__stack_chk_fail@PLT
.L68:
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10829:
	.size	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_15_Iter_comp_iterIT_EES8_, .-_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_15_Iter_comp_iterIT_EES8_
	.section	.text._ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ERKS9_,"axG",@progbits,_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC5ERKS9_,comdat
	.align 2
	.weak	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ERKS9_
	.type	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ERKS9_, @function
_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ERKS9_:
.LFB10831:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10831:
	.size	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ERKS9_, .-_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ERKS9_
	.weak	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	.set	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_,_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC2ERKS9_
	.section	.text._ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_,"axG",@progbits,_ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_,comdat
	.weak	_ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	.type	_ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_, @function
_ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSteqIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	xor	eax, 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10834:
	.size	_ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_, .-_ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	.section	.text._ZSteqIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_,"axG",@progbits,_ZSteqIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_,comdat
	.weak	_ZSteqIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	.type	_ZSteqIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_, @function
_ZSteqIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_:
.LFB10835:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxeqIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L74
	call	__stack_chk_fail@PLT
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10835:
	.size	_ZSteqIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_, .-_ZSteqIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	.section	.text._ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E,"axG",@progbits,_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E,comdat
	.weak	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	.type	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E, @function
_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E:
.LFB10836:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L77
	call	__stack_chk_fail@PLT
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10836:
	.size	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E, .-_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	.text
	.type	_ZSt6__sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_, @function
_ZSt6__sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_:
.LFB10833:
	.cfi_startproc
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	test	al, al
	je	.L81
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	mov	rdi, rax
	call	_ZSt4__lgl
	lea	rbx, [rax+rax]
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rcx, -32[rbp]
	lea	rax, -40[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_T1_
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -32[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_
.L81:
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10833:
	.size	_ZSt6__sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_, .-_ZSt6__sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_
	.section	.text._ZNSt6vectorISt4pairIiiESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_max_sizeERKS2_:
.LFB11033:
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
	movabs	rax, 1152921504606846975
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L84
	call	__stack_chk_fail@PLT
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11033:
	.size	_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNSaISt4pairIiiEEC2ERKS1_,"axG",@progbits,_ZNSaISt4pairIiiEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSaISt4pairIiiEEC2ERKS1_
	.type	_ZNSaISt4pairIiiEEC2ERKS1_, @function
_ZNSaISt4pairIiiEEC2ERKS1_:
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2ERKS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11035:
	.size	_ZNSaISt4pairIiiEEC2ERKS1_, .-_ZNSaISt4pairIiiEEC2ERKS1_
	.weak	_ZNSaISt4pairIiiEEC1ERKS1_
	.set	_ZNSaISt4pairIiiEEC1ERKS1_,_ZNSaISt4pairIiiEEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2ERKS2_
	.type	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2ERKS2_, @function
_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2ERKS2_:
.LFB11038:
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
	call	_ZNSaISt4pairIiiEEC2ERKS1_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11038:
	.size	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2ERKS2_, .-_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2ERKS2_
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC1ERKS2_
	.set	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC1ERKS2_,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implC2ERKS2_
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_M_create_storageEm:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11040:
	.size	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m:
.LFB11041:
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
	cmp	QWORD PTR -16[rbp], 0
	je	.L90
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m
.L90:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11041:
	.size	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZSt27__uninitialized_default_n_aIPSt4pairIiiEmS1_ET_S3_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPSt4pairIiiEmS1_ET_S3_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPSt4pairIiiEmS1_ET_S3_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPSt4pairIiiEmS1_ET_S3_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPSt4pairIiiEmS1_ET_S3_T0_RSaIT1_E:
.LFB11042:
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
	call	_ZSt25__uninitialized_default_nIPSt4pairIiiEmET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11042:
	.size	_ZSt27__uninitialized_default_n_aIPSt4pairIiiEmS1_ET_S3_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPSt4pairIiiEmS1_ET_S3_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPSt4pairIiiEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPSt4pairIiiEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPSt4pairIiiEEvT_S3_
	.type	_ZSt8_DestroyIPSt4pairIiiEEvT_S3_, @function
_ZSt8_DestroyIPSt4pairIiiEEvT_S3_:
.LFB11043:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11043:
	.size	_ZSt8_DestroyIPSt4pairIiiEEvT_S3_, .-_ZSt8_DestroyIPSt4pairIiiEEvT_S3_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_:
.LFB11046:
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
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11046:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC1ERKS3_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC1ERKS3_,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.text
	.type	_ZSt4moveIRZ4mainEUlRKSt4pairIiiES3_E_EONSt16remove_referenceIT_E4typeEOS7_, @function
_ZSt4moveIRZ4mainEUlRKSt4pairIiiES3_E_EONSt16remove_referenceIT_E4typeEOS7_:
.LFB11048:
	.cfi_startproc
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
.LFE11048:
	.size	_ZSt4moveIRZ4mainEUlRKSt4pairIiiES3_E_EONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIRZ4mainEUlRKSt4pairIiiES3_E_EONSt16remove_referenceIT_E4typeEOS7_
	.align 2
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2ES6_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2ES6_:
.LFB11050:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	lea	rax, -9[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRZ4mainEUlRKSt4pairIiiES3_E_EONSt16remove_referenceIT_E4typeEOS7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11050:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2ES6_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2ES6_
	.set	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC1ES6_,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2ES6_
	.section	.text._ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv,"axG",@progbits,_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv,comdat
	.align 2
	.weak	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	.type	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv, @function
_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv:
.LFB11052:
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
.LFE11052:
	.size	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv, .-_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	.section	.text._ZN9__gnu_cxxeqIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"axG",@progbits,_ZN9__gnu_cxxeqIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,comdat
	.weak	_ZN9__gnu_cxxeqIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.type	_ZN9__gnu_cxxeqIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, @function
_ZN9__gnu_cxxeqIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB11053:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	sete	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11053:
	.size	_ZN9__gnu_cxxeqIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, .-_ZN9__gnu_cxxeqIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.section	.text._ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.weak	_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.type	_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, @function
_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB11054:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 3
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11054:
	.size	_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .-_ZN9__gnu_cxxmiIPSt4pairIiiESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.text
	.type	_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_T1_, @function
_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_T1_:
.LFB11055:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L105
.L108:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L106
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_
	jmp	.L104
.L106:
	sub	QWORD PTR -56[rbp], 1
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -32[rbp]
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_T0_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -32[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -56[rbp]
	lea	rcx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_T1_
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
.L105:
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	cmp	rax, 16
	setg	al
	test	al, al
	jne	.L108
.L104:
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11055:
	.size	_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_T1_, .-_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_T1_
	.type	_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_, @function
_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_:
.LFB11056:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	cmp	rax, 16
	setg	al
	test	al, al
	je	.L111
	lea	rax, -24[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	mov	edx, 16
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -24[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	mov	edx, 16
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_
	jmp	.L114
.L111:
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_
.L114:
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L113
	call	__stack_chk_fail@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11056:
	.size	_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_, .-_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_
	.section	.text._ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_
	.type	_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_, @function
_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_:
.LFB11193:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11193:
	.size	_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_, .-_ZNSt16allocator_traitsISaISt4pairIiiEEE8max_sizeERKS2_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2ERKS3_
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2ERKS3_, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2ERKS3_:
.LFB11195:
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
.LFE11195:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2ERKS3_, .-_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2ERKS3_
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC1ERKS3_
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC1ERKS3_,_ZN9__gnu_cxx13new_allocatorISt4pairIiiEEC2ERKS3_
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC2Ev:
.LFB11198:
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
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11198:
	.size	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm:
.LFB11200:
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
	cmp	QWORD PTR -16[rbp], 0
	je	.L120
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m
	jmp	.L122
.L120:
	mov	eax, 0
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11200:
	.size	_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m, @function
_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m:
.LFB11201:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11201:
	.size	_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaISt4pairIiiEEE10deallocateERS2_PS1_m
	.section	.text._ZSt25__uninitialized_default_nIPSt4pairIiiEmET_S3_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPSt4pairIiiEmET_S3_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPSt4pairIiiEmET_S3_T0_
	.type	_ZSt25__uninitialized_default_nIPSt4pairIiiEmET_S3_T0_, @function
_ZSt25__uninitialized_default_nIPSt4pairIiiEmET_S3_T0_:
.LFB11202:
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
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11202:
	.size	_ZSt25__uninitialized_default_nIPSt4pairIiiEmET_S3_T0_, .-_ZSt25__uninitialized_default_nIPSt4pairIiiEmET_S3_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_:
.LFB11203:
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
.LFE11203:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiiEEEvT_S5_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB11204:
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
.LFE11204:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv
	.text
	.type	_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_, @function
_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_:
.LFB11205:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -57[rbp]
	lea	rcx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt11__sort_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L130
	call	__stack_chk_fail@PLT
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11205:
	.size	_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_, .-_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_
	.section	.text._ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl,"axG",@progbits,_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl,comdat
	.align 2
	.weak	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	.type	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl, @function
_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl:
.LFB11207:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmiEl
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ES8_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11207:
	.size	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl, .-_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	.text
	.type	_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_T0_, @function
_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_T0_:
.LFB11206:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	lea	rax, -48[rbp]
	mov	rcx, QWORD PTR -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -32[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmiEl
	lea	rdx, -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -40[rbp]
	mov	rcx, QWORD PTR -64[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rcx, -32[rbp]
	lea	rdx, -16[rbp]
	lea	rsi, -40[rbp]
	lea	rax, -24[rbp]
	mov	rdi, rax
	call	_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_SH_T0_
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -32[rbp]
	mov	rcx, QWORD PTR -64[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	mov	rax, QWORD PTR -56[rbp]
	lea	rcx, -16[rbp]
	lea	rdx, -24[rbp]
	lea	rsi, -32[rbp]
	mov	rdi, rax
	call	_ZSt21__unguarded_partitionISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_SH_T0_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L135
	call	__stack_chk_fail@PLT
.L135:
	mov	rax, QWORD PTR -56[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11206:
	.size	_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_T0_, .-_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_T0_
	.section	.text._ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv,"axG",@progbits,_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv,comdat
	.align 2
	.weak	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv
	.type	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv, @function
_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv:
.LFB11209:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmmEv
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11209:
	.size	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv, .-_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv
	.text
	.align 2
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_:
.LFB11210:
	.cfi_startproc
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
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdx, r12
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZZ4mainENKUlRKSt4pairIiiES2_E_clES2_S2_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11210:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	.section	.text._ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB11211:
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
.LFE11211:
	.size	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv,"axG",@progbits,_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv,comdat
	.align 2
	.weak	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	.type	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv, @function
_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv:
.LFB11212:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmmEv
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L144
	call	__stack_chk_fail@PLT
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11212:
	.size	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv, .-_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	.text
	.type	_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_, @function
_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_:
.LFB11208:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 104
	.cfi_offset 3, -24
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSteqIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	test	al, al
	jne	.L153
	lea	rax, -72[rbp]
	mov	rcx, QWORD PTR -88[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	jmp	.L148
.L151:
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -72[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -32[rbp]
	lea	rcx, -40[rbp]
	lea	rax, -97[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	je	.L149
	lea	rax, -72[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	lea	rax, -64[rbp]
	lea	rcx, -72[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rdx, -72[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -40[rbp]
	lea	rcx, -64[rbp]
	lea	rdx, -48[rbp]
	lea	rsi, -56[rbp]
	mov	rdi, rax
	call	_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt4pairIiiEaSEOS0_
	jmp	.L150
.L149:
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE
	lea	rdx, -72[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_
.L150:
	lea	rax, -72[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv
.L148:
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	test	al, al
	jne	.L151
	jmp	.L145
.L153:
	nop
.L145:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L152
	call	__stack_chk_fail@PLT
.L152:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11208:
	.size	_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_, .-_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_
	.type	_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_, @function
_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_:
.LFB11213:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	jmp	.L155
.L156:
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_
	lea	rax, -24[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv
.L155:
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStneIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	test	al, al
	jne	.L156
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L157
	call	__stack_chk_fail@PLT
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11213:
	.size	_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_, .-_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv:
.LFB11298:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11298:
	.size	_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m, @function
_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m:
.LFB11299:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11299:
	.size	_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaISt4pairIiiEEE8allocateERS2_m
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m:
.LFB11300:
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
.LFE11300:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_:
.LFB11301:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11301
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
	mov	QWORD PTR -24[rbp], rax
	jmp	.L165
.L166:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt4pairIiiEEPT_RS2_
	mov	rdi, rax
.LEHB9:
	call	_ZSt10_ConstructISt4pairIiiEJEEvPT_DpOT0_
.LEHE9:
	sub	QWORD PTR -48[rbp], 1
	add	QWORD PTR -24[rbp], 8
.L165:
	cmp	QWORD PTR -48[rbp], 0
	jne	.L166
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L172
.L170:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIiiEEvT_S3_
.LEHB10:
	call	__cxa_rethrow@PLT
.LEHE10:
.L171:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L172:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11301:
	.section	.gcc_except_table
	.align 4
.LLSDA11301:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11301-.LLSDATTD11301
.LLSDATTD11301:
	.byte	0x1
	.uleb128 .LLSDACSE11301-.LLSDACSB11301
.LLSDACSB11301:
	.uleb128 .LEHB9-.LFB11301
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L170-.LFB11301
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB11301
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L171-.LFB11301
	.uleb128 0
	.uleb128 .LEHB11-.LFB11301
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE11301:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11301:
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_,comdat
	.size	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_, .-_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIiiEmEET_S5_T0_
	.text
	.type	_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_, @function
_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_:
.LFB11302:
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -73[rbp]
	lea	rcx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	jmp	.L174
.L176:
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -73[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	je	.L175
	lea	rdx, -40[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rcx, -73[rbp]
	lea	rdx, -16[rbp]
	lea	rsi, -24[rbp]
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_RT0_
.L175:
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv
.L174:
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStltIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	test	al, al
	jne	.L176
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L177
	call	__stack_chk_fail@PLT
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11302:
	.size	_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_, .-_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_T0_
	.section	.text._ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv,"axG",@progbits,_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv,comdat
	.align 2
	.weak	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv
	.type	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv, @function
_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv:
.LFB11304:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11304:
	.size	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv, .-_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv
	.text
	.type	_ZSt11__sort_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_, @function
_ZSt11__sort_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_:
.LFB11303:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L181
.L182:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rcx, QWORD PTR -56[rbp]
	lea	rdx, -16[rbp]
	lea	rsi, -24[rbp]
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_RT0_
.L181:
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	cmp	rax, 1
	setg	al
	test	al, al
	jne	.L182
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L183
	call	__stack_chk_fail@PLT
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11303:
	.size	_ZSt11__sort_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_, .-_ZSt11__sort_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmiEl:
.LFB11305:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	sal	rax, 3
	neg	rax
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L186
	call	__stack_chk_fail@PLT
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11305:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmiEl
	.section	.text._ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmiEl,"axG",@progbits,_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmiEl,comdat
	.align 2
	.weak	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmiEl
	.type	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmiEl, @function
_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmiEl:
.LFB11306:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEplEl
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ES8_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11306:
	.size	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmiEl, .-_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmiEl
	.text
	.type	_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_SH_T0_, @function
_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_SH_T0_:
.LFB11307:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -65[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	je	.L190
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -65[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	je	.L191
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_
	jmp	.L197
.L191:
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -65[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	je	.L193
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_
	jmp	.L197
.L193:
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_
	jmp	.L197
.L190:
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -65[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	je	.L194
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_
	jmp	.L197
.L194:
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -65[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	je	.L195
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_
	jmp	.L197
.L195:
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_
.L197:
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L196
	call	__stack_chk_fail@PLT
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11307:
	.size	_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_SH_T0_, .-_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_SH_T0_
	.section	.text._ZStltIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_,"axG",@progbits,_ZStltIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_,comdat
	.weak	_ZStltIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	.type	_ZStltIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_, @function
_ZStltIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_:
.LFB11309:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxltIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L200
	call	__stack_chk_fail@PLT
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11309:
	.size	_ZStltIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_, .-_ZStltIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	.text
	.type	_ZSt21__unguarded_partitionISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_SH_T0_, @function
_ZSt21__unguarded_partitionISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_SH_T0_:
.LFB11308:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L202
.L203:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv
.L202:
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -65[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	jne	.L203
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv
	jmp	.L204
.L205:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv
.L204:
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -65[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	jne	.L205
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStltIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEbRKSt16reverse_iteratorIT_ESD_
	xor	eax, 1
	test	al, al
	je	.L206
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L209
	jmp	.L210
.L206:
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEppEv
	jmp	.L202
.L210:
	call	__stack_chk_fail@PLT
.L209:
	mov	rax, QWORD PTR -40[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11308:
	.size	_ZSt21__unguarded_partitionISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_SH_T0_, .-_ZSt21__unguarded_partitionISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEET_SH_SH_SH_T0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmmEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmmEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmmEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmmEv:
.LFB11310:
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
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11310:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmmEv, .-_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEmmEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv:
.LFB11311:
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
.LFE11311:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEdeEv
	.section	.text._ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_,"axG",@progbits,_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_,comdat
	.weak	_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_
	.type	_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_, @function
_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_:
.LFB11312:
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
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -24[rbp]
	lea	rdx, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -40[rbp]
	lea	rdx, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	mov	rax, QWORD PTR -56[rbp]
	lea	rcx, -16[rbp]
	lea	rdx, -24[rbp]
	lea	rsi, -40[rbp]
	mov	rdi, rax
	call	_ZSt22__copy_move_backward_aILb1ESt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET1_T0_SC_SB_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L217
	call	__stack_chk_fail@PLT
.L217:
	mov	rax, QWORD PTR -56[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11312:
	.size	_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_, .-_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_
	.section	.text._ZNSt4pairIiiEaSEOS0_,"axG",@progbits,_ZNSt4pairIiiEaSEOS0_,comdat
	.align 2
	.weak	_ZNSt4pairIiiEaSEOS0_
	.type	_ZNSt4pairIiiEaSEOS0_, @function
_ZNSt4pairIiiEaSEOS0_:
.LFB11313:
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
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 4
	mov	rdi, rax
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11313:
	.size	_ZNSt4pairIiiEaSEOS0_, .-_ZNSt4pairIiiEaSEOS0_
	.text
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE, @function
_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE:
.LFB11314:
	.cfi_startproc
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
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES6_E_EEEONSt16remove_referenceIT_E4typeEOSB_
	mov	rdx, rax
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC1EONS0_15_Iter_comp_iterIS6_EE
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L222
	call	__stack_chk_fail@PLT
.L222:
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11314:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE, .-_ZN9__gnu_cxx5__ops15__val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE
	.type	_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_, @function
_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_:
.LFB11315:
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
	mov	QWORD PTR -56[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv
	jmp	.L224
.L225:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt4pairIiiEaSEOS0_
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR [rax], rdx
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEmmEv
.L224:
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rdx, -40[rbp]
	lea	rcx, -32[rbp]
	lea	rax, -57[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclIS3_St16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEbRT_T0_
	test	al, al
	jne	.L225
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt4pairIiiEaSEOS0_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L226
	call	__stack_chk_fail@PLT
.L226:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11315:
	.size	_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_, .-_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE11_M_max_sizeEv:
.LFB11421:
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
.LFE11421:
	.size	_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv:
.LFB11422:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L230
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L231
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L231:
	call	_ZSt17__throw_bad_allocv@PLT
.L230:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11422:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv
	.section	.text._ZSt11__addressofISt4pairIiiEEPT_RS2_,"axG",@progbits,_ZSt11__addressofISt4pairIiiEEPT_RS2_,comdat
	.weak	_ZSt11__addressofISt4pairIiiEEPT_RS2_
	.type	_ZSt11__addressofISt4pairIiiEEPT_RS2_, @function
_ZSt11__addressofISt4pairIiiEEPT_RS2_:
.LFB11423:
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
.LFE11423:
	.size	_ZSt11__addressofISt4pairIiiEEPT_RS2_, .-_ZSt11__addressofISt4pairIiiEEPT_RS2_
	.section	.text._ZSt10_ConstructISt4pairIiiEJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt4pairIiiEJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt4pairIiiEJEEvPT_DpOT0_
	.type	_ZSt10_ConstructISt4pairIiiEJEEvPT_DpOT0_, @function
_ZSt10_ConstructISt4pairIiiEJEEvPT_DpOT0_:
.LFB11424:
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
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	rdi, rax
	call	_ZNSt4pairIiiEC1IiiLb1EEEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11424:
	.size	_ZSt10_ConstructISt4pairIiiEJEEvPT_DpOT0_, .-_ZSt10_ConstructISt4pairIiiEJEEvPT_DpOT0_
	.text
	.type	_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_, @function
_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_:
.LFB11425:
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
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	cmp	rax, 1
	setle	al
	test	al, al
	jne	.L242
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -48[rbp], rax
.L240:
	lea	rax, -56[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -56[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR -48[rbp]
	lea	rax, -56[rbp]
	mov	rcx, QWORD PTR [rbx]
	mov	rdi, rax
	call	_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_T2_
	cmp	QWORD PTR -48[rbp], 0
	je	.L243
	sub	QWORD PTR -48[rbp], 1
	jmp	.L240
.L242:
	nop
	jmp	.L236
.L243:
	nop
.L236:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L241
	call	__stack_chk_fail@PLT
.L241:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11425:
	.size	_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_, .-_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_RT0_
	.type	_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_RT0_, @function
_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_RT0_:
.LFB11426:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 64
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt4pairIiiEaSEOS0_
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKSA_IT0_E
	mov	r12, rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -40[rbp]
	mov	rcx, QWORD PTR [rbx]
	mov	rdx, r12
	mov	esi, 0
	mov	rdi, rax
	call	_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_T2_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L245
	call	__stack_chk_fail@PLT
.L245:
	add	rsp, 64
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11426:
	.size	_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_RT0_, .-_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_SH_SH_RT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv:
.LFB11427:
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
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11427:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEplEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEplEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEplEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEplEl:
.LFB11428:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L250
	call	__stack_chk_fail@PLT
.L250:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11428:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEplEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEEplEl
	.section	.text._ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_,"axG",@progbits,_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_,comdat
	.weak	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_
	.type	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_, @function
_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_:
.LFB11429:
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
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt4swapIiiENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11429:
	.size	_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_, .-_ZSt9iter_swapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_EvT_T0_
	.section	.text._ZN9__gnu_cxxltIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"axG",@progbits,_ZN9__gnu_cxxltIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,comdat
	.weak	_ZN9__gnu_cxxltIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.type	_ZN9__gnu_cxxltIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, @function
_ZN9__gnu_cxxltIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB11430:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	setb	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11430:
	.size	_ZN9__gnu_cxxltIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, .-_ZN9__gnu_cxxltIPSt4pairIiiESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E:
.LFB11431:
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
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	mov	rdi, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEET_S9_
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt23__make_reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEESt16reverse_iteratorIT_ESA_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L256
	call	__stack_chk_fail@PLT
.L256:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11431:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	.section	.text._ZSt22__copy_move_backward_aILb1ESt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET1_T0_SC_SB_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1ESt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET1_T0_SC_SB_,comdat
	.weak	_ZSt22__copy_move_backward_aILb1ESt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET1_T0_SC_SB_
	.type	_ZSt22__copy_move_backward_aILb1ESt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET1_T0_SC_SB_, @function
_ZSt22__copy_move_backward_aILb1ESt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET1_T0_SC_SB_:
.LFB11432:
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
	mov	QWORD PTR -104[rbp], rdx
	mov	QWORD PTR -112[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -32[rbp]
	lea	rdx, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -48[rbp]
	lea	rdx, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -64[rbp]
	lea	rdx, -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	lea	rax, -24[rbp]
	lea	rcx, -32[rbp]
	lea	rdx, -48[rbp]
	lea	rsi, -64[rbp]
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	mov	rax, QWORD PTR -88[rbp]
	lea	rdx, -24[rbp]
	lea	rcx, -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt12__niter_wrapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES0_IS5_EET_SC_T0_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L259
	call	__stack_chk_fail@PLT
.L259:
	mov	rax, QWORD PTR -88[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11432:
	.size	_ZSt22__copy_move_backward_aILb1ESt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET1_T0_SC_SB_, .-_ZSt22__copy_move_backward_aILb1ESt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEESA_ET1_T0_SC_SB_
	.text
	.type	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES6_E_EEEONSt16remove_referenceIT_E4typeEOSB_, @function
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES6_E_EEEONSt16remove_referenceIT_E4typeEOSB_:
.LFB11434:
	.cfi_startproc
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
.LFE11434:
	.size	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES6_E_EEEONSt16remove_referenceIT_E4typeEOSB_, .-_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES6_E_EEEONSt16remove_referenceIT_E4typeEOSB_
	.align 2
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE:
.LFB11436:
	.cfi_startproc
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
	call	_ZSt4moveIRZ4mainEUlRKSt4pairIiiES3_E_EONSt16remove_referenceIT_E4typeEOS7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11436:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.set	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC1EONS0_15_Iter_comp_iterIS6_EE,_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.align 2
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclIS3_St16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEbRT_T0_, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclIS3_St16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEbRT_T0_:
.LFB11438:
	.cfi_startproc
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
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZZ4mainENKUlRKSt4pairIiiES2_E_clES2_S2_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11438:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclIS3_St16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEbRT_T0_, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclIS3_St16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEbRT_T0_
	.section	.text._ZNSt4pairIiiEC2IiiLb1EEEv,"axG",@progbits,_ZNSt4pairIiiEC5IiiLb1EEEv,comdat
	.align 2
	.weak	_ZNSt4pairIiiEC2IiiLb1EEEv
	.type	_ZNSt4pairIiiEC2IiiLb1EEEv, @function
_ZNSt4pairIiiEC2IiiLb1EEEv:
.LFB11507:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11507:
	.size	_ZNSt4pairIiiEC2IiiLb1EEEv, .-_ZNSt4pairIiiEC2IiiLb1EEEv
	.weak	_ZNSt4pairIiiEC1IiiLb1EEEv
	.set	_ZNSt4pairIiiEC1IiiLb1EEEv,_ZNSt4pairIiiEC2IiiLb1EEEv
	.text
	.type	_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_T2_, @function
_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_T2_:
.LFB11509:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 104
	.cfi_offset 3, -24
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	QWORD PTR -96[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L267
.L269:
	mov	rax, QWORD PTR -40[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, -1[rax]
	lea	rax, -48[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -56[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rdx, -48[rbp]
	lea	rcx, -56[rbp]
	lea	rax, -97[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEESG_EEbT_T0_
	test	al, al
	je	.L268
	sub	QWORD PTR -40[rbp], 1
.L268:
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	lea	rax, -56[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -56[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt4pairIiiEaSEOS0_
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -80[rbp], rax
.L267:
	mov	rax, QWORD PTR -88[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -40[rbp], rax
	jl	.L269
	mov	rax, QWORD PTR -88[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L270
	mov	rax, QWORD PTR -88[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -40[rbp], rax
	jne	.L270
	mov	rax, QWORD PTR -40[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, -1[rax]
	lea	rax, -48[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	lea	rax, -56[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -56[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt4pairIiiEaSEOS0_
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
.L270:
	lea	rax, -97[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZ4mainEUlRKSt4pairIiiES6_E_EEEONSt16remove_referenceIT_E4typeEOSB_
	mov	rdx, rax
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EC1EONS0_15_Iter_comp_iterIS6_EE
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rcx, -56[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -80[rbp]
	lea	rax, -48[rbp]
	mov	r8, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rdi, rax
	call	_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_RT2_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L271
	call	__stack_chk_fail@PLT
.L271:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11509:
	.size	_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_T2_, .-_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_T2_
	.section	.text._ZSt4swapIiiENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_,"axG",@progbits,_ZSt4swapIiiENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_,comdat
	.weak	_ZSt4swapIiiENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_
	.type	_ZSt4swapIiiENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_, @function
_ZSt4swapIiiENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_:
.LFB11510:
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
	call	_ZNSt4pairIiiE4swapERS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11510:
	.size	_ZSt4swapIiiENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_, .-_ZSt4swapIiiENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEET_S9_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEET_S9_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEET_S9_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEET_S9_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEET_S9_:
.LFB11511:
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
.LFE11511:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEET_S9_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEET_S9_
	.section	.text._ZSt23__make_reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEESt16reverse_iteratorIT_ESA_,"axG",@progbits,_ZSt23__make_reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEESt16reverse_iteratorIT_ESA_,comdat
	.weak	_ZSt23__make_reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEESt16reverse_iteratorIT_ESA_
	.type	_ZSt23__make_reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEESt16reverse_iteratorIT_ESA_, @function
_ZSt23__make_reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEESt16reverse_iteratorIT_ESA_:
.LFB11512:
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
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ES8_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11512:
	.size	_ZSt23__make_reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEESt16reverse_iteratorIT_ESA_, .-_ZSt23__make_reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEESt16reverse_iteratorIT_ESA_
	.section	.text._ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E,"axG",@progbits,_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E,comdat
	.weak	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	.type	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E, @function
_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E:
.LFB11513:
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
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEE4baseEv
	mov	rdi, rax
	call	_ZSt12__niter_baseIPSt4pairIiiESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt23__make_reverse_iteratorIPSt4pairIiiEESt16reverse_iteratorIT_ES4_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L279
	call	__stack_chk_fail@PLT
.L279:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11513:
	.size	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E, .-_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	.section	.text._ZSt23__copy_move_backward_a1ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_
	.type	_ZSt23__copy_move_backward_a1ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_, @function
_ZSt23__copy_move_backward_a1ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_:
.LFB11514:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ERKS3_
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ERKS3_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ERKS3_
	mov	rax, QWORD PTR -40[rbp]
	lea	rcx, -16[rbp]
	lea	rdx, -24[rbp]
	lea	rsi, -32[rbp]
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a2ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L282
	call	__stack_chk_fail@PLT
.L282:
	mov	rax, QWORD PTR -40[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11514:
	.size	_ZSt23__copy_move_backward_a1ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_, .-_ZSt23__copy_move_backward_a1ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_
	.section	.text._ZSt12__niter_wrapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES0_IS5_EET_SC_T0_,"axG",@progbits,_ZSt12__niter_wrapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES0_IS5_EET_SC_T0_,comdat
	.weak	_ZSt12__niter_wrapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES0_IS5_EET_SC_T0_
	.type	_ZSt12__niter_wrapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES0_IS5_EET_SC_T0_, @function
_ZSt12__niter_wrapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES0_IS5_EET_SC_T0_:
.LFB11515:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEC1ERKS9_
	lea	rax, -16[rbp]
	lea	rdx, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEDTcl23__make_reverse_iteratorcl12__niter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E
	lea	rdx, -16[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIPSt4pairIiiES2_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS4_IT0_E
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L285
	call	__stack_chk_fail@PLT
.L285:
	mov	rax, QWORD PTR -40[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11515:
	.size	_ZSt12__niter_wrapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES0_IS5_EET_SC_T0_, .-_ZSt12__niter_wrapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES0_IS5_EET_SC_T0_
	.text
	.align 2
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE:
.LFB11546:
	.cfi_startproc
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
	call	_ZSt4moveIRZ4mainEUlRKSt4pairIiiES3_E_EONSt16remove_referenceIT_E4typeEOS7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11546:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.set	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EC1EONS0_15_Iter_comp_iterIS6_EE,_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.type	_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_RT2_, @function
_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_RT2_:
.LFB11548:
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
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -64[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -32[rbp], rax
	jmp	.L288
.L291:
	lea	rax, -40[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt4pairIiiEaSEOS0_
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -32[rbp], rax
.L288:
	mov	rax, QWORD PTR -64[rbp]
	cmp	rax, QWORD PTR -72[rbp]
	jle	.L289
	lea	rax, -40[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rdx, -80[rbp]
	lea	rcx, -40[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEES3_EEbT_RT0_
	test	al, al
	je	.L289
	mov	eax, 1
	jmp	.L290
.L289:
	mov	eax, 0
.L290:
	test	al, al
	jne	.L291
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	lea	rax, -40[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEplEl
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt4pairIiiEaSEOS0_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L292
	call	__stack_chk_fail@PLT
.L292:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11548:
	.size	_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_RT2_, .-_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZ4mainEUlRKS4_SE_E_EEEvT_T0_SI_T1_RT2_
	.section	.text._ZNSt4pairIiiE4swapERS0_,"axG",@progbits,_ZNSt4pairIiiE4swapERS0_,comdat
	.align 2
	.weak	_ZNSt4pairIiiE4swapERS0_
	.type	_ZNSt4pairIiiE4swapERS0_, @function
_ZNSt4pairIiiE4swapERS0_:
.LFB11549:
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
	call	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 4[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 4
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11549:
	.size	_ZNSt4pairIiiE4swapERS0_, .-_ZNSt4pairIiiE4swapERS0_
	.section	.text._ZSt12__niter_baseIPSt4pairIiiESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPSt4pairIiiESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPSt4pairIiiESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	.type	_ZSt12__niter_baseIPSt4pairIiiESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE, @function
_ZSt12__niter_baseIPSt4pairIiiESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE:
.LFB11550:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11550:
	.size	_ZSt12__niter_baseIPSt4pairIiiESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE, .-_ZSt12__niter_baseIPSt4pairIiiESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	.section	.text._ZSt23__make_reverse_iteratorIPSt4pairIiiEESt16reverse_iteratorIT_ES4_,"axG",@progbits,_ZSt23__make_reverse_iteratorIPSt4pairIiiEESt16reverse_iteratorIT_ES4_,comdat
	.weak	_ZSt23__make_reverse_iteratorIPSt4pairIiiEESt16reverse_iteratorIT_ES4_
	.type	_ZSt23__make_reverse_iteratorIPSt4pairIiiEESt16reverse_iteratorIT_ES4_, @function
_ZSt23__make_reverse_iteratorIPSt4pairIiiEESt16reverse_iteratorIT_ES4_:
.LFB11551:
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
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ES2_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11551:
	.size	_ZSt23__make_reverse_iteratorIPSt4pairIiiEESt16reverse_iteratorIT_ES4_, .-_ZSt23__make_reverse_iteratorIPSt4pairIiiEESt16reverse_iteratorIT_ES4_
	.section	.text._ZNSt16reverse_iteratorIPSt4pairIiiEEC2ERKS3_,"axG",@progbits,_ZNSt16reverse_iteratorIPSt4pairIiiEEC5ERKS3_,comdat
	.align 2
	.weak	_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ERKS3_
	.type	_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ERKS3_, @function
_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ERKS3_:
.LFB11553:
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
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11553:
	.size	_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ERKS3_, .-_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ERKS3_
	.weak	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ERKS3_
	.set	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ERKS3_,_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ERKS3_
	.section	.text._ZSt23__copy_move_backward_a2ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_
	.type	_ZSt23__copy_move_backward_a2ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_, @function
_ZSt23__copy_move_backward_a2ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_:
.LFB11555:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ERKS3_
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ERKS3_
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ERKS3_
	mov	rax, QWORD PTR -40[rbp]
	lea	rcx, -16[rbp]
	lea	rdx, -24[rbp]
	lea	rsi, -32[rbp]
	mov	rdi, rax
	call	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bISt16reverse_iteratorIPSt4pairIiiEES7_EET0_T_S9_S8_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L301
	call	__stack_chk_fail@PLT
.L301:
	mov	rax, QWORD PTR -40[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11555:
	.size	_ZSt23__copy_move_backward_a2ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_, .-_ZSt23__copy_move_backward_a2ILb1ESt16reverse_iteratorIPSt4pairIiiEES4_ET1_T0_S6_S5_
	.section	.text._ZStmiIPSt4pairIiiES2_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS4_IT0_E,"axG",@progbits,_ZStmiIPSt4pairIiiES2_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS4_IT0_E,comdat
	.weak	_ZStmiIPSt4pairIiiES2_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS4_IT0_E
	.type	_ZStmiIPSt4pairIiiES2_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS4_IT0_E, @function
_ZStmiIPSt4pairIiiES2_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS4_IT0_E:
.LFB11556:
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
	call	_ZNKSt16reverse_iteratorIPSt4pairIiiEE4baseEv
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIPSt4pairIiiEE4baseEv
	mov	rdx, rax
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 3
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11556:
	.size	_ZStmiIPSt4pairIiiES2_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS4_IT0_E, .-_ZStmiIPSt4pairIiiES2_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS4_IT0_E
	.text
	.align 2
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEES3_EEbT_RT0_, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEES3_EEbT_RT0_:
.LFB11560:
	.cfi_startproc
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
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEdeEv
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZZ4mainENKUlRKSt4pairIiiES2_E_clES2_S2_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11560:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEES3_EEbT_RT0_, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ4mainEUlRKSt4pairIiiES5_E_EclISt16reverse_iteratorINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEES3_EEbT_RT0_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB11562:
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
.LFE11562:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB11561:
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
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -12[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	lea	rax, -12[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L309
	call	__stack_chk_fail@PLT
.L309:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11561:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZNSt16reverse_iteratorIPSt4pairIiiEEC2ES2_,"axG",@progbits,_ZNSt16reverse_iteratorIPSt4pairIiiEEC5ES2_,comdat
	.align 2
	.weak	_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ES2_
	.type	_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ES2_, @function
_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ES2_:
.LFB11564:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11564:
	.size	_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ES2_, .-_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ES2_
	.weak	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ES2_
	.set	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ES2_,_ZNSt16reverse_iteratorIPSt4pairIiiEEC2ES2_
	.section	.text._ZNKSt16reverse_iteratorIPSt4pairIiiEE4baseEv,"axG",@progbits,_ZNKSt16reverse_iteratorIPSt4pairIiiEE4baseEv,comdat
	.align 2
	.weak	_ZNKSt16reverse_iteratorIPSt4pairIiiEE4baseEv
	.type	_ZNKSt16reverse_iteratorIPSt4pairIiiEE4baseEv, @function
_ZNKSt16reverse_iteratorIPSt4pairIiiEE4baseEv:
.LFB11567:
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
.LFE11567:
	.size	_ZNKSt16reverse_iteratorIPSt4pairIiiEE4baseEv, .-_ZNKSt16reverse_iteratorIPSt4pairIiiEE4baseEv
	.section	.text._ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bISt16reverse_iteratorIPSt4pairIiiEES7_EET0_T_S9_S8_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bISt16reverse_iteratorIPSt4pairIiiEES7_EET0_T_S9_S8_,comdat
	.weak	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bISt16reverse_iteratorIPSt4pairIiiEES7_EET0_T_S9_S8_
	.type	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bISt16reverse_iteratorIPSt4pairIiiEES7_EET0_T_S9_S8_, @function
_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bISt16reverse_iteratorIPSt4pairIiiEES7_EET0_T_S9_S8_:
.LFB11566:
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
	mov	QWORD PTR -64[rbp], rcx
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStmiIPSt4pairIiiES2_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS4_IT0_E
	mov	QWORD PTR -24[rbp], rax
	jmp	.L314
.L315:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEmmEv
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIPSt4pairIiiEEdeEv
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIiiEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rbx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEmmEv
	mov	rdi, rax
	call	_ZNKSt16reverse_iteratorIPSt4pairIiiEEdeEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt4pairIiiEaSEOS0_
	sub	QWORD PTR -24[rbp], 1
.L314:
	cmp	QWORD PTR -24[rbp], 0
	jg	.L315
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16reverse_iteratorIPSt4pairIiiEEC1ERKS3_
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11566:
	.size	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bISt16reverse_iteratorIPSt4pairIiiEES7_EET0_T_S9_S8_, .-_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bISt16reverse_iteratorIPSt4pairIiiEES7_EET0_T_S9_S8_
	.section	.text._ZNSt16reverse_iteratorIPSt4pairIiiEEmmEv,"axG",@progbits,_ZNSt16reverse_iteratorIPSt4pairIiiEEmmEv,comdat
	.align 2
	.weak	_ZNSt16reverse_iteratorIPSt4pairIiiEEmmEv
	.type	_ZNSt16reverse_iteratorIPSt4pairIiiEEmmEv, @function
_ZNSt16reverse_iteratorIPSt4pairIiiEEmmEv:
.LFB11579:
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
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11579:
	.size	_ZNSt16reverse_iteratorIPSt4pairIiiEEmmEv, .-_ZNSt16reverse_iteratorIPSt4pairIiiEEmmEv
	.section	.text._ZNKSt16reverse_iteratorIPSt4pairIiiEEdeEv,"axG",@progbits,_ZNKSt16reverse_iteratorIPSt4pairIiiEEdeEv,comdat
	.align 2
	.weak	_ZNKSt16reverse_iteratorIPSt4pairIiiEEdeEv
	.type	_ZNKSt16reverse_iteratorIPSt4pairIiiEEdeEv, @function
_ZNKSt16reverse_iteratorIPSt4pairIiiEEdeEv:
.LFB11580:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	sub	QWORD PTR -8[rbp], 8
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11580:
	.size	_ZNKSt16reverse_iteratorIPSt4pairIiiEEdeEv, .-_ZNKSt16reverse_iteratorIPSt4pairIiiEEdeEv
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11619:
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
	jne	.L323
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L323
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
.L323:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11619:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11642:
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
.LFE11642:
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
