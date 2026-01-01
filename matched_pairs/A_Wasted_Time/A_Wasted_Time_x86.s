	.file	"A_Wasted_Time.cpp"
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
	.section	.text._ZStanSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStanSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStanSt13_Ios_FmtflagsS_
	.type	_ZStanSt13_Ios_FmtflagsS_, @function
_ZStanSt13_Ios_FmtflagsS_:
.LFB1923:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	and	eax, DWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1923:
	.size	_ZStanSt13_Ios_FmtflagsS_, .-_ZStanSt13_Ios_FmtflagsS_
	.section	.text._ZStorSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStorSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStorSt13_Ios_FmtflagsS_
	.type	_ZStorSt13_Ios_FmtflagsS_, @function
_ZStorSt13_Ios_FmtflagsS_:
.LFB1924:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	or	eax, DWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1924:
	.size	_ZStorSt13_Ios_FmtflagsS_, .-_ZStorSt13_Ios_FmtflagsS_
	.section	.text._ZStcoSt13_Ios_Fmtflags,"axG",@progbits,_ZStcoSt13_Ios_Fmtflags,comdat
	.weak	_ZStcoSt13_Ios_Fmtflags
	.type	_ZStcoSt13_Ios_Fmtflags, @function
_ZStcoSt13_Ios_Fmtflags:
.LFB1926:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	not	eax
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1926:
	.size	_ZStcoSt13_Ios_Fmtflags, .-_ZStcoSt13_Ios_Fmtflags
	.section	.text._ZStoRRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStoRRSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStoRRSt13_Ios_FmtflagsS_
	.type	_ZStoRRSt13_Ios_FmtflagsS_, @function
_ZStoRRSt13_Ios_FmtflagsS_:
.LFB1927:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_ZStorSt13_Ios_FmtflagsS_
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1927:
	.size	_ZStoRRSt13_Ios_FmtflagsS_, .-_ZStoRRSt13_Ios_FmtflagsS_
	.section	.text._ZStaNRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStaNRSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStaNRSt13_Ios_FmtflagsS_
	.type	_ZStaNRSt13_Ios_FmtflagsS_, @function
_ZStaNRSt13_Ios_FmtflagsS_:
.LFB1928:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_ZStanSt13_Ios_FmtflagsS_
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1928:
	.size	_ZStaNRSt13_Ios_FmtflagsS_, .-_ZStaNRSt13_Ios_FmtflagsS_
	.section	.text._ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,"axG",@progbits,_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,comdat
	.align 2
	.weak	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.type	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_, @function
_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_:
.LFB1957:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 24[rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, eax
	call	_ZStcoSt13_Ios_Fmtflags
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 24
	mov	esi, edx
	mov	rdi, rax
	call	_ZStaNRSt13_Ios_FmtflagsS_
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_ZStanSt13_Ios_FmtflagsS_
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 24
	mov	esi, edx
	mov	rdi, rax
	call	_ZStoRRSt13_Ios_FmtflagsS_
	mov	eax, DWORD PTR -4[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1957:
	.size	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_, .-_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.section	.text._ZNSt8ios_base9precisionEl,"axG",@progbits,_ZNSt8ios_base9precisionEl,comdat
	.align 2
	.weak	_ZNSt8ios_base9precisionEl
	.type	_ZNSt8ios_base9precisionEl, @function
_ZNSt8ios_base9precisionEl:
.LFB1960:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1960:
	.size	_ZNSt8ios_base9precisionEl, .-_ZNSt8ios_base9precisionEl
	.section	.text._ZSt5fixedRSt8ios_base,"axG",@progbits,_ZSt5fixedRSt8ios_base,comdat
	.weak	_ZSt5fixedRSt8ios_base
	.type	_ZSt5fixedRSt8ios_base, @function
_ZSt5fixedRSt8ios_base:
.LFB1987:
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
	mov	edx, 260
	mov	esi, 4
	mov	rdi, rax
	call	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1987:
	.size	_ZSt5fixedRSt8ios_base, .-_ZSt5fixedRSt8ios_base
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
	jnb	.L20
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L21
.L20:
	mov	rax, QWORD PTR -8[rbp]
.L21:
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
	.globl	main
	.type	main, @function
main:
.LFB9705:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9705
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
.LEHB0:
	call	_Z5setupv
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
.LEHE0:
	lea	rax, -69[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIddEEC1Ev
	mov	eax, DWORD PTR -68[rbp]
	movsx	rcx, eax
	lea	rdx, -69[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB1:
	call	_ZNSt6vectorISt4pairIddESaIS1_EEC1EmRKS2_
.LEHE1:
	lea	rax, -69[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIddEED1Ev
	pxor	xmm0, xmm0
	movsd	QWORD PTR -56[rbp], xmm0
	mov	DWORD PTR -60[rbp], 0
	jmp	.L24
.L26:
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIddESaIS1_EEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB2:
	call	_ZNSirsERd@PLT
	mov	rbx, rax
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIddESaIS1_EEixEm
	add	rax, 8
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERd@PLT
	cmp	DWORD PTR -60[rbp], 0
	je	.L25
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIddESaIS1_EEixEm
	movsd	xmm3, QWORD PTR [rax]
	movsd	QWORD PTR -88[rbp], xmm3
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, 1
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIddESaIS1_EEixEm
	movsd	xmm0, QWORD PTR [rax]
	movsd	xmm3, QWORD PTR -88[rbp]
	subsd	xmm3, xmm0
	movq	rax, xmm3
	mov	edi, 2
	movq	xmm0, rax
	call	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	movsd	QWORD PTR -88[rbp], xmm0
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIddESaIS1_EEixEm
	movsd	xmm4, QWORD PTR 8[rax]
	movsd	QWORD PTR -96[rbp], xmm4
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, 1
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIddESaIS1_EEixEm
	movsd	xmm0, QWORD PTR 8[rax]
	movsd	xmm4, QWORD PTR -96[rbp]
	subsd	xmm4, xmm0
	movq	rax, xmm4
	mov	edi, 2
	movq	xmm0, rax
	call	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	movapd	xmm5, xmm0
	addsd	xmm5, QWORD PTR -88[rbp]
	movq	rax, xmm5
	movq	xmm0, rax
	call	sqrt@PLT
	movsd	xmm1, QWORD PTR -56[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
.L25:
	add	DWORD PTR -60[rbp], 1
.L24:
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L26
	mov	esi, 9
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	call	_ZNSt8ios_base9precisionEl
	lea	rax, _ZSt5fixedRSt8ios_base[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSt8ios_baseS0_E@PLT
	mov	rdx, rax
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	xmm2, QWORD PTR .LC5[rip]
	movapd	xmm1, xmm0
	divsd	xmm1, xmm2
	mov	eax, DWORD PTR -64[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	mov	rdi, rdx
	call	_ZNSolsEd@PLT
.LEHE2:
	mov	ebx, 0
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIddESaIS1_EED1Ev
	mov	eax, ebx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L30
	jmp	.L33
.L31:
	endbr64
	mov	rbx, rax
	lea	rax, -69[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIddEED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB3:
	call	_Unwind_Resume@PLT
.L32:
	endbr64
	mov	rbx, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIddESaIS1_EED1Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE3:
.L33:
	call	__stack_chk_fail@PLT
.L30:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9705:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9705:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9705-.LLSDACSB9705
.LLSDACSB9705:
	.uleb128 .LEHB0-.LFB9705
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9705
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L31-.LFB9705
	.uleb128 0
	.uleb128 .LEHB2-.LFB9705
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L32-.LFB9705
	.uleb128 0
	.uleb128 .LEHB3-.LFB9705
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE9705:
	.text
	.size	main, .-main
	.section	.text._ZNSaISt4pairIddEEC2Ev,"axG",@progbits,_ZNSaISt4pairIddEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIddEEC2Ev
	.type	_ZNSaISt4pairIddEEC2Ev, @function
_ZNSaISt4pairIddEEC2Ev:
.LFB10396:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10396:
	.size	_ZNSaISt4pairIddEEC2Ev, .-_ZNSaISt4pairIddEEC2Ev
	.weak	_ZNSaISt4pairIddEEC1Ev
	.set	_ZNSaISt4pairIddEEC1Ev,_ZNSaISt4pairIddEEC2Ev
	.section	.text._ZNSaISt4pairIddEED2Ev,"axG",@progbits,_ZNSaISt4pairIddEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIddEED2Ev
	.type	_ZNSaISt4pairIddEED2Ev, @function
_ZNSaISt4pairIddEED2Ev:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIddEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10399:
	.size	_ZNSaISt4pairIddEED2Ev, .-_ZNSaISt4pairIddEED2Ev
	.weak	_ZNSaISt4pairIddEED1Ev
	.set	_ZNSaISt4pairIddEED1Ev,_ZNSaISt4pairIddEED2Ev
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EEC2EmRKS2_
	.type	_ZNSt6vectorISt4pairIddESaIS1_EEC2EmRKS2_, @function
_ZNSt6vectorISt4pairIddESaIS1_EEC2EmRKS2_:
.LFB10402:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10402
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
	call	_ZNSt6vectorISt4pairIddESaIS1_EE17_S_check_init_lenEmRKS2_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2EmRKS2_
.LEHE4:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB5:
	call	_ZNSt6vectorISt4pairIddESaIS1_EE21_M_default_initializeEm
.LEHE5:
	jmp	.L39
.L38:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L39:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10402:
	.section	.gcc_except_table
.LLSDA10402:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10402-.LLSDACSB10402
.LLSDACSB10402:
	.uleb128 .LEHB4-.LFB10402
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB10402
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L38-.LFB10402
	.uleb128 0
	.uleb128 .LEHB6-.LFB10402
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE10402:
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt6vectorISt4pairIddESaIS1_EEC2EmRKS2_, .-_ZNSt6vectorISt4pairIddESaIS1_EEC2EmRKS2_
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EEC1EmRKS2_
	.set	_ZNSt6vectorISt4pairIddESaIS1_EEC1EmRKS2_,_ZNSt6vectorISt4pairIddESaIS1_EEC2EmRKS2_
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EED2Ev
	.type	_ZNSt6vectorISt4pairIddESaIS1_EED2Ev, @function
_ZNSt6vectorISt4pairIddESaIS1_EED2Ev:
.LFB10405:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10405
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
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIddES1_EvT_S3_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10405:
	.section	.gcc_except_table
.LLSDA10405:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10405-.LLSDACSB10405
.LLSDACSB10405:
.LLSDACSE10405:
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorISt4pairIddESaIS1_EED2Ev, .-_ZNSt6vectorISt4pairIddESaIS1_EED2Ev
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EED1Ev
	.set	_ZNSt6vectorISt4pairIddESaIS1_EED1Ev,_ZNSt6vectorISt4pairIddESaIS1_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EEixEm
	.type	_ZNSt6vectorISt4pairIddESaIS1_EEixEm, @function
_ZNSt6vectorISt4pairIddESaIS1_EEixEm:
.LFB10407:
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
	sal	rax, 4
	add	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10407:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EEixEm, .-_ZNSt6vectorISt4pairIddESaIS1_EEixEm
	.section	.text._ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,"axG",@progbits,_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,comdat
	.weak	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.type	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, @function
_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_:
.LFB10409:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	movsd	QWORD PTR -8[rbp], xmm0
	mov	DWORD PTR -12[rbp], edi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10409:
	.size	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, .-_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2Ev:
.LFB10804:
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
.LFE10804:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIddEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIddEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIddEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIddEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIddEED2Ev:
.LFB10807:
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
.LFE10807:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIddEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIddEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIddEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIddEED1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIddEED2Ev
	.section	.rodata
	.align 8
.LC6:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE17_S_check_init_lenEmRKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE17_S_check_init_lenEmRKS2_,comdat
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE17_S_check_init_lenEmRKS2_
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE17_S_check_init_lenEmRKS2_, @function
_ZNSt6vectorISt4pairIddESaIS1_EE17_S_check_init_lenEmRKS2_:
.LFB10809:
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
	call	_ZNSaISt4pairIddEEC1ERKS1_
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_
	cmp	QWORD PTR -40[rbp], rax
	seta	bl
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIddEED1Ev
	test	bl, bl
	je	.L48
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L48:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10809:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE17_S_check_init_lenEmRKS2_, .-_ZNSt6vectorISt4pairIddESaIS1_EE17_S_check_init_lenEmRKS2_
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev:
.LFB10812:
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
	call	_ZNSaISt4pairIddEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10812:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2EmRKS2_
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2EmRKS2_, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2EmRKS2_:
.LFB10814:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10814
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
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC1ERKS2_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB7:
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_M_create_storageEm
.LEHE7:
	jmp	.L55
.L54:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L55:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10814:
	.section	.gcc_except_table
.LLSDA10814:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10814-.LLSDACSB10814
.LLSDACSB10814:
	.uleb128 .LEHB7-.LFB10814
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L54-.LFB10814
	.uleb128 0
	.uleb128 .LEHB8-.LFB10814
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10814:
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2EmRKS2_, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2EmRKS2_
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC1EmRKS2_
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC1EmRKS2_,_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2EmRKS2_
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev:
.LFB10817:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10817
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
	sar	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10817:
	.section	.gcc_except_table
.LLSDA10817:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10817-.LLSDACSB10817
.LLSDACSB10817:
.LLSDACSE10817:
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED1Ev,_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE21_M_default_initializeEm
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE21_M_default_initializeEm, @function
_ZNSt6vectorISt4pairIddESaIS1_EE21_M_default_initializeEm:
.LFB10819:
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
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__uninitialized_default_n_aIPSt4pairIddEmS1_ET_S3_T0_RSaIT1_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10819:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE21_M_default_initializeEm, .-_ZNSt6vectorISt4pairIddESaIS1_EE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB10820:
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
.LFE10820:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPSt4pairIddES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt4pairIddES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt4pairIddES1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPSt4pairIddES1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPSt4pairIddES1_EvT_S3_RSaIT0_E:
.LFB10821:
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
	call	_ZSt8_DestroyIPSt4pairIddEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10821:
	.size	_ZSt8_DestroyIPSt4pairIddES1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPSt4pairIddES1_EvT_S3_RSaIT0_E
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_:
.LFB11018:
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
	movabs	rax, 576460752303423487
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIddEEE8max_sizeERKS2_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11018:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNSaISt4pairIddEEC2ERKS1_,"axG",@progbits,_ZNSaISt4pairIddEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSaISt4pairIddEEC2ERKS1_
	.type	_ZNSaISt4pairIddEEC2ERKS1_, @function
_ZNSaISt4pairIddEEC2ERKS1_:
.LFB11020:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2ERKS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11020:
	.size	_ZNSaISt4pairIddEEC2ERKS1_, .-_ZNSaISt4pairIddEEC2ERKS1_
	.weak	_ZNSaISt4pairIddEEC1ERKS1_
	.set	_ZNSaISt4pairIddEEC1ERKS1_,_ZNSaISt4pairIddEEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2ERKS2_
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2ERKS2_, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2ERKS2_:
.LFB11023:
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
	call	_ZNSaISt4pairIddEEC2ERKS1_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11023:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2ERKS2_, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2ERKS2_
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC1ERKS2_
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC1ERKS2_,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2ERKS2_
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_M_create_storageEm:
.LFB11025:
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
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11025:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m:
.LFB11026:
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
	je	.L69
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIddEEE10deallocateERS2_PS1_m
.L69:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11026:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZSt27__uninitialized_default_n_aIPSt4pairIddEmS1_ET_S3_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPSt4pairIddEmS1_ET_S3_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPSt4pairIddEmS1_ET_S3_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPSt4pairIddEmS1_ET_S3_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPSt4pairIddEmS1_ET_S3_T0_RSaIT1_E:
.LFB11027:
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
	call	_ZSt25__uninitialized_default_nIPSt4pairIddEmET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11027:
	.size	_ZSt27__uninitialized_default_n_aIPSt4pairIddEmS1_ET_S3_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPSt4pairIddEmS1_ET_S3_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPSt4pairIddEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPSt4pairIddEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPSt4pairIddEEvT_S3_
	.type	_ZSt8_DestroyIPSt4pairIddEEvT_S3_, @function
_ZSt8_DestroyIPSt4pairIddEEvT_S3_:
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11028:
	.size	_ZSt8_DestroyIPSt4pairIddEEvT_S3_, .-_ZSt8_DestroyIPSt4pairIddEEvT_S3_
	.section	.text._ZNSt16allocator_traitsISaISt4pairIddEEE8max_sizeERKS2_,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIddEEE8max_sizeERKS2_,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIddEEE8max_sizeERKS2_
	.type	_ZNSt16allocator_traitsISaISt4pairIddEEE8max_sizeERKS2_, @function
_ZNSt16allocator_traitsISaISt4pairIddEEE8max_sizeERKS2_:
.LFB11166:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11166:
	.size	_ZNSt16allocator_traitsISaISt4pairIddEEE8max_sizeERKS2_, .-_ZNSt16allocator_traitsISaISt4pairIddEEE8max_sizeERKS2_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2ERKS3_
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2ERKS3_, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2ERKS3_:
.LFB11168:
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
.LFE11168:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2ERKS3_, .-_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2ERKS3_
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC1ERKS3_
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC1ERKS3_,_ZN9__gnu_cxx13new_allocatorISt4pairIddEEC2ERKS3_
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev:
.LFB11171:
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
.LFE11171:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm:
.LFB11173:
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
	je	.L78
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIddEEE8allocateERS2_m
	jmp	.L80
.L78:
	mov	eax, 0
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11173:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaISt4pairIddEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIddEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIddEEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaISt4pairIddEEE10deallocateERS2_PS1_m, @function
_ZNSt16allocator_traitsISaISt4pairIddEEE10deallocateERS2_PS1_m:
.LFB11174:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIddEE10deallocateEPS2_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11174:
	.size	_ZNSt16allocator_traitsISaISt4pairIddEEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaISt4pairIddEEE10deallocateERS2_PS1_m
	.section	.text._ZSt25__uninitialized_default_nIPSt4pairIddEmET_S3_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPSt4pairIddEmET_S3_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPSt4pairIddEmET_S3_T0_
	.type	_ZSt25__uninitialized_default_nIPSt4pairIddEmET_S3_T0_, @function
_ZSt25__uninitialized_default_nIPSt4pairIddEmET_S3_T0_:
.LFB11175:
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
	call	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11175:
	.size	_ZSt25__uninitialized_default_nIPSt4pairIddEmET_S3_T0_, .-_ZSt25__uninitialized_default_nIPSt4pairIddEmET_S3_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_:
.LFB11176:
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
.LFE11176:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt4pairIddEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE8max_sizeEv:
.LFB11261:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11261:
	.size	_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaISt4pairIddEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIddEEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIddEEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaISt4pairIddEEE8allocateERS2_m, @function
_ZNSt16allocator_traitsISaISt4pairIddEEE8allocateERS2_m:
.LFB11262:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIddEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11262:
	.size	_ZNSt16allocator_traitsISaISt4pairIddEEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaISt4pairIddEEE8allocateERS2_m
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIddEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIddEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIddEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIddEE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIddEE10deallocateEPS2_m:
.LFB11263:
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
	sal	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11263:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIddEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorISt4pairIddEE10deallocateEPS2_m
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_:
.LFB11264:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11264
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
	jmp	.L92
.L93:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt4pairIddEEPT_RS2_
	mov	rdi, rax
.LEHB9:
	call	_ZSt10_ConstructISt4pairIddEJEEvPT_DpOT0_
.LEHE9:
	sub	QWORD PTR -48[rbp], 1
	add	QWORD PTR -24[rbp], 16
.L92:
	cmp	QWORD PTR -48[rbp], 0
	jne	.L93
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L99
.L97:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIddEEvT_S3_
.LEHB10:
	call	__cxa_rethrow@PLT
.LEHE10:
.L98:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L99:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11264:
	.section	.gcc_except_table
	.align 4
.LLSDA11264:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11264-.LLSDATTD11264
.LLSDATTD11264:
	.byte	0x1
	.uleb128 .LLSDACSE11264-.LLSDACSB11264
.LLSDACSB11264:
	.uleb128 .LEHB9-.LFB11264
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L97-.LFB11264
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB11264
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L98-.LFB11264
	.uleb128 0
	.uleb128 .LEHB11-.LFB11264
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE11264:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11264:
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_,comdat
	.size	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_, .-_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIddEmEET_S5_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt4pairIddEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE11_M_max_sizeEv:
.LFB11370:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 576460752303423487
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11370:
	.size	_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIddEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIddEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIddEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIddEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIddEE8allocateEmPKv:
.LFB11371:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIddEE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L103
	movabs	rax, 1152921504606846975
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L104
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L104:
	call	_ZSt17__throw_bad_allocv@PLT
.L103:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11371:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIddEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt4pairIddEE8allocateEmPKv
	.section	.text._ZSt11__addressofISt4pairIddEEPT_RS2_,"axG",@progbits,_ZSt11__addressofISt4pairIddEEPT_RS2_,comdat
	.weak	_ZSt11__addressofISt4pairIddEEPT_RS2_
	.type	_ZSt11__addressofISt4pairIddEEPT_RS2_, @function
_ZSt11__addressofISt4pairIddEEPT_RS2_:
.LFB11372:
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
.LFE11372:
	.size	_ZSt11__addressofISt4pairIddEEPT_RS2_, .-_ZSt11__addressofISt4pairIddEEPT_RS2_
	.section	.text._ZSt10_ConstructISt4pairIddEJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt4pairIddEJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt4pairIddEJEEvPT_DpOT0_
	.type	_ZSt10_ConstructISt4pairIddEJEEvPT_DpOT0_, @function
_ZSt10_ConstructISt4pairIddEJEEvPT_DpOT0_:
.LFB11373:
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
	mov	edi, 16
	call	_ZnwmPv
	mov	rdi, rax
	call	_ZNSt4pairIddEC1IddLb1EEEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11373:
	.size	_ZSt10_ConstructISt4pairIddEJEEvPT_DpOT0_, .-_ZSt10_ConstructISt4pairIddEJEEvPT_DpOT0_
	.section	.text._ZNSt4pairIddEC2IddLb1EEEv,"axG",@progbits,_ZNSt4pairIddEC5IddLb1EEEv,comdat
	.align 2
	.weak	_ZNSt4pairIddEC2IddLb1EEEv
	.type	_ZNSt4pairIddEC2IddLb1EEEv, @function
_ZNSt4pairIddEC2IddLb1EEEv:
.LFB11442:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pxor	xmm0, xmm0
	movsd	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR -8[rbp]
	pxor	xmm0, xmm0
	movsd	QWORD PTR 8[rax], xmm0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11442:
	.size	_ZNSt4pairIddEC2IddLb1EEEv, .-_ZNSt4pairIddEC2IddLb1EEEv
	.weak	_ZNSt4pairIddEC1IddLb1EEEv
	.set	_ZNSt4pairIddEC1IddLb1EEEv,_ZNSt4pairIddEC2IddLb1EEEv
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11525:
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
	jne	.L112
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L112
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
.L112:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11525:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5setupv, @function
_GLOBAL__sub_I__Z5setupv:
.LFB11548:
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
.LFE11548:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5setupv
	.section	.rodata
	.align 8
.LC5:
	.long	0
	.long	1078525952
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
