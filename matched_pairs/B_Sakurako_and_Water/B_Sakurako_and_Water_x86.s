	.file	"B_Sakurako_and_Water.cpp"
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
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB40:
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
.LFE40:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB371:
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
.LFE371:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
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
	jnb	.L7
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L8
.L7:
	mov	rax, QWORD PTR -8[rbp]
.L8:
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
	sub	rsp, 152
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
.LEHB0:
	call	_Z5setupv
	lea	rax, -148[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L11
.L26:
	mov	QWORD PTR -120[rbp], 0
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
.LEHE0:
	lea	rax, -149[rbp]
	mov	rdi, rax
	call	_ZNSaISt6vectorIxSaIxEEEC1Ev
	lea	rax, -150[rbp]
	mov	rdi, rax
	call	_ZNSaIxEC1Ev
	mov	rax, QWORD PTR -128[rbp]
	add	rax, 2
	mov	rcx, rax
	lea	rdx, -150[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB1:
	call	_ZNSt6vectorIxSaIxEEC1EmRKS0_
.LEHE1:
	mov	rax, QWORD PTR -128[rbp]
	add	rax, 2
	mov	rsi, rax
	lea	rcx, -149[rbp]
	lea	rdx, -48[rbp]
	lea	rax, -80[rbp]
	mov	rdi, rax
.LEHB2:
	call	_ZNSt6vectorIS_IxSaIxEESaIS1_EEC1EmRKS1_RKS2_
.LEHE2:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEED1Ev
	lea	rax, -150[rbp]
	mov	rdi, rax
	call	_ZNSaIxED1Ev
	lea	rax, -149[rbp]
	mov	rdi, rax
	call	_ZNSaISt6vectorIxSaIxEEED1Ev
	mov	DWORD PTR -144[rbp], 0
	jmp	.L12
.L15:
	mov	DWORD PTR -140[rbp], 0
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -144[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm
	mov	rdx, rax
	mov	eax, DWORD PTR -140[rbp]
	cdqe
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIxSaIxEEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB3:
	call	_ZNSirsERx@PLT
	add	DWORD PTR -140[rbp], 1
.L13:
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -128[rbp]
	cmp	rdx, rax
	jl	.L14
	add	DWORD PTR -144[rbp], 1
.L12:
	mov	eax, DWORD PTR -144[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -128[rbp]
	cmp	rdx, rax
	jl	.L15
	mov	rax, QWORD PTR -128[rbp]
	sub	eax, 1
	mov	DWORD PTR -136[rbp], eax
	jmp	.L16
.L20:
	mov	QWORD PTR -112[rbp], 0
	mov	eax, DWORD PTR -136[rbp]
	cdqe
	mov	QWORD PTR -104[rbp], rax
	mov	QWORD PTR -48[rbp], 0
	jmp	.L17
.L19:
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm
	mov	rdx, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIxSaIxEEixEm
	mov	rdx, rax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -48[rbp], rax
	add	QWORD PTR -112[rbp], 1
	add	QWORD PTR -104[rbp], 1
.L17:
	mov	rax, QWORD PTR -128[rbp]
	cmp	QWORD PTR -112[rbp], rax
	jge	.L18
	mov	rax, QWORD PTR -128[rbp]
	cmp	QWORD PTR -104[rbp], rax
	jl	.L19
.L18:
	mov	rax, QWORD PTR -48[rbp]
	add	QWORD PTR -120[rbp], rax
	sub	DWORD PTR -136[rbp], 1
.L16:
	cmp	DWORD PTR -136[rbp], 0
	jns	.L20
	mov	DWORD PTR -132[rbp], 1
	jmp	.L21
.L25:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	jmp	.L22
.L24:
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIxSaIxEEixEm
	mov	rdx, rax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -48[rbp], rax
	add	QWORD PTR -96[rbp], 1
	add	QWORD PTR -88[rbp], 1
.L22:
	mov	rax, QWORD PTR -128[rbp]
	cmp	QWORD PTR -96[rbp], rax
	jge	.L23
	mov	rax, QWORD PTR -128[rbp]
	cmp	QWORD PTR -88[rbp], rax
	jl	.L24
.L23:
	mov	rax, QWORD PTR -48[rbp]
	add	QWORD PTR -120[rbp], rax
	add	DWORD PTR -132[rbp], 1
.L21:
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -128[rbp]
	cmp	rdx, rax
	jl	.L25
	mov	rax, QWORD PTR -120[rbp]
	neg	rax
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.LEHE3:
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IxSaIxEESaIS1_EED1Ev
.L11:
	mov	eax, DWORD PTR -148[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -148[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L26
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L31
	jmp	.L35
.L33:
	endbr64
	mov	rbx, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEED1Ev
	jmp	.L29
.L32:
	endbr64
	mov	rbx, rax
.L29:
	lea	rax, -150[rbp]
	mov	rdi, rax
	call	_ZNSaIxED1Ev
	lea	rax, -149[rbp]
	mov	rdi, rax
	call	_ZNSaISt6vectorIxSaIxEEED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB4:
	call	_Unwind_Resume@PLT
.L34:
	endbr64
	mov	rbx, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IxSaIxEESaIS1_EED1Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE4:
.L35:
	call	__stack_chk_fail@PLT
.L31:
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
	.uleb128 .L32-.LFB9705
	.uleb128 0
	.uleb128 .LEHB2-.LFB9705
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L33-.LFB9705
	.uleb128 0
	.uleb128 .LEHB3-.LFB9705
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L34-.LFB9705
	.uleb128 0
	.uleb128 .LEHB4-.LFB9705
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE9705:
	.text
	.size	main, .-main
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC5Ev,comdat
	.align 2
	.weak	_ZNSaIxEC2Ev
	.type	_ZNSaIxEC2Ev, @function
_ZNSaIxEC2Ev:
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
	call	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10396:
	.size	_ZNSaIxEC2Ev, .-_ZNSaIxEC2Ev
	.weak	_ZNSaIxEC1Ev
	.set	_ZNSaIxEC1Ev,_ZNSaIxEC2Ev
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED5Ev,comdat
	.align 2
	.weak	_ZNSaIxED2Ev
	.type	_ZNSaIxED2Ev, @function
_ZNSaIxED2Ev:
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
	call	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10399:
	.size	_ZNSaIxED2Ev, .-_ZNSaIxED2Ev
	.weak	_ZNSaIxED1Ev
	.set	_ZNSaIxED1Ev,_ZNSaIxED2Ev
	.section	.text._ZNSt6vectorIxSaIxEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEEC2EmRKS0_
	.type	_ZNSt6vectorIxSaIxEEC2EmRKS0_, @function
_ZNSt6vectorIxSaIxEEC2EmRKS0_:
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
.LEHB5:
	call	_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_
.LEHE5:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB6:
	call	_ZNSt6vectorIxSaIxEE21_M_default_initializeEm
.LEHE6:
	jmp	.L41
.L40:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L41:
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
	.uleb128 .LEHB5-.LFB10402
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB10402
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L40-.LFB10402
	.uleb128 0
	.uleb128 .LEHB7-.LFB10402
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE10402:
	.section	.text._ZNSt6vectorIxSaIxEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIxSaIxEEC2EmRKS0_, .-_ZNSt6vectorIxSaIxEEC2EmRKS0_
	.weak	_ZNSt6vectorIxSaIxEEC1EmRKS0_
	.set	_ZNSt6vectorIxSaIxEEC1EmRKS0_,_ZNSt6vectorIxSaIxEEC2EmRKS0_
	.section	.text._ZNSt6vectorIxSaIxEED2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEED2Ev
	.type	_ZNSt6vectorIxSaIxEED2Ev, @function
_ZNSt6vectorIxSaIxEED2Ev:
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
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEED2Ev
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
	.section	.text._ZNSt6vectorIxSaIxEED2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEED5Ev,comdat
	.size	_ZNSt6vectorIxSaIxEED2Ev, .-_ZNSt6vectorIxSaIxEED2Ev
	.weak	_ZNSt6vectorIxSaIxEED1Ev
	.set	_ZNSt6vectorIxSaIxEED1Ev,_ZNSt6vectorIxSaIxEED2Ev
	.section	.text._ZNSaISt6vectorIxSaIxEEEC2Ev,"axG",@progbits,_ZNSaISt6vectorIxSaIxEEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt6vectorIxSaIxEEEC2Ev
	.type	_ZNSaISt6vectorIxSaIxEEEC2Ev, @function
_ZNSaISt6vectorIxSaIxEEEC2Ev:
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
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10408:
	.size	_ZNSaISt6vectorIxSaIxEEEC2Ev, .-_ZNSaISt6vectorIxSaIxEEEC2Ev
	.weak	_ZNSaISt6vectorIxSaIxEEEC1Ev
	.set	_ZNSaISt6vectorIxSaIxEEEC1Ev,_ZNSaISt6vectorIxSaIxEEEC2Ev
	.section	.text._ZNSaISt6vectorIxSaIxEEED2Ev,"axG",@progbits,_ZNSaISt6vectorIxSaIxEEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt6vectorIxSaIxEEED2Ev
	.type	_ZNSaISt6vectorIxSaIxEEED2Ev, @function
_ZNSaISt6vectorIxSaIxEEED2Ev:
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
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10411:
	.size	_ZNSaISt6vectorIxSaIxEEED2Ev, .-_ZNSaISt6vectorIxSaIxEEED2Ev
	.weak	_ZNSaISt6vectorIxSaIxEEED1Ev
	.set	_ZNSaISt6vectorIxSaIxEEED1Ev,_ZNSaISt6vectorIxSaIxEEED2Ev
	.section	.text._ZNSt6vectorIS_IxSaIxEESaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorIS_IxSaIxEESaIS1_EEC5EmRKS1_RKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IxSaIxEESaIS1_EEC2EmRKS1_RKS2_
	.type	_ZNSt6vectorIS_IxSaIxEESaIS1_EEC2EmRKS1_RKS2_, @function
_ZNSt6vectorIS_IxSaIxEESaIS1_EEC2EmRKS1_RKS2_:
.LFB10414:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10414
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
	mov	QWORD PTR -48[rbp], rcx
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB8:
	call	_ZNSt6vectorIS_IxSaIxEESaIS1_EE17_S_check_init_lenEmRKS2_
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC2EmRKS3_
.LEHE8:
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB9:
	call	_ZNSt6vectorIS_IxSaIxEESaIS1_EE18_M_fill_initializeEmRKS1_
.LEHE9:
	jmp	.L48
.L47:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L48:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10414:
	.section	.gcc_except_table
.LLSDA10414:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10414-.LLSDACSB10414
.LLSDACSB10414:
	.uleb128 .LEHB8-.LFB10414
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB10414
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L47-.LFB10414
	.uleb128 0
	.uleb128 .LEHB10-.LFB10414
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE10414:
	.section	.text._ZNSt6vectorIS_IxSaIxEESaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorIS_IxSaIxEESaIS1_EEC5EmRKS1_RKS2_,comdat
	.size	_ZNSt6vectorIS_IxSaIxEESaIS1_EEC2EmRKS1_RKS2_, .-_ZNSt6vectorIS_IxSaIxEESaIS1_EEC2EmRKS1_RKS2_
	.weak	_ZNSt6vectorIS_IxSaIxEESaIS1_EEC1EmRKS1_RKS2_
	.set	_ZNSt6vectorIS_IxSaIxEESaIS1_EEC1EmRKS1_RKS2_,_ZNSt6vectorIS_IxSaIxEESaIS1_EEC2EmRKS1_RKS2_
	.section	.text._ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IxSaIxEESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev
	.type	_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev, @function
_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev:
.LFB10417:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10417
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
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10417:
	.section	.gcc_except_table
.LLSDA10417:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10417-.LLSDACSB10417
.LLSDACSB10417:
.LLSDACSE10417:
	.section	.text._ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IxSaIxEESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev, .-_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev
	.weak	_ZNSt6vectorIS_IxSaIxEESaIS1_EED1Ev
	.set	_ZNSt6vectorIS_IxSaIxEESaIS1_EED1Ev,_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev
	.section	.text._ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm
	.type	_ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm, @function
_ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm:
.LFB10419:
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
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10419:
	.size	_ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm, .-_ZNSt6vectorIS_IxSaIxEESaIS1_EEixEm
	.section	.text._ZNSt6vectorIxSaIxEEixEm,"axG",@progbits,_ZNSt6vectorIxSaIxEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEEixEm
	.type	_ZNSt6vectorIxSaIxEEixEm, @function
_ZNSt6vectorIxSaIxEEixEm:
.LFB10420:
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
.LFE10420:
	.size	_ZNSt6vectorIxSaIxEEixEm, .-_ZNSt6vectorIxSaIxEEixEm
	.section	.text._ZSt3minIxERKT_S2_S2_,"axG",@progbits,_ZSt3minIxERKT_S2_S2_,comdat
	.weak	_ZSt3minIxERKT_S2_S2_
	.type	_ZSt3minIxERKT_S2_S2_, @function
_ZSt3minIxERKT_S2_S2_:
.LFB10421:
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
	jge	.L55
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L56
.L55:
	mov	rax, QWORD PTR -8[rbp]
.L56:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10421:
	.size	_ZSt3minIxERKT_S2_S2_, .-_ZSt3minIxERKT_S2_S2_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:
.LFB10816:
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
.LFE10816:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1Ev,_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:
.LFB10819:
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
.LFE10819:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxED1Ev,_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.section	.rodata
	.align 8
.LC4:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_:
.LFB10821:
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
	call	_ZNSaIxEC1ERKS_
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	cmp	QWORD PTR -40[rbp], rax
	seta	bl
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIxED1Ev
	test	bl, bl
	je	.L60
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L60:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L62
	call	__stack_chk_fail@PLT
.L62:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10821:
	.size	_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev:
.LFB10824:
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
.LFE10824:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_:
.LFB10826:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10826
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
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB11:
	call	_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEm
.LEHE11:
	jmp	.L67
.L66:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L67:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10826:
	.section	.gcc_except_table
.LLSDA10826:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10826-.LLSDACSB10826
.LLSDACSB10826:
	.uleb128 .LEHB11-.LFB10826
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L66-.LFB10826
	.uleb128 0
	.uleb128 .LEHB12-.LFB10826
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE10826:
	.section	.text._ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_, .-_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIxSaIxEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIxSaIxEEC1EmRKS0_,_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_
	.section	.text._ZNSt12_Vector_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEED2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEED2Ev, @function
_ZNSt12_Vector_baseIxSaIxEED2Ev:
.LFB10829:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10829
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
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10829:
	.section	.gcc_except_table
.LLSDA10829:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10829-.LLSDACSB10829
.LLSDACSB10829:
.LLSDACSE10829:
	.section	.text._ZNSt12_Vector_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIxSaIxEED2Ev, .-_ZNSt12_Vector_baseIxSaIxEED2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEED1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEED1Ev,_ZNSt12_Vector_baseIxSaIxEED2Ev
	.section	.text._ZNSt6vectorIxSaIxEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIxSaIxEE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE21_M_default_initializeEm
	.type	_ZNSt6vectorIxSaIxEE21_M_default_initializeEm, @function
_ZNSt6vectorIxSaIxEE21_M_default_initializeEm:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10831:
	.size	_ZNSt6vectorIxSaIxEE21_M_default_initializeEm, .-_ZNSt6vectorIxSaIxEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB10832:
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
.LFE10832:
	.size	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E:
.LFB10833:
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
	call	_ZSt8_DestroyIPxEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10833:
	.size	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2Ev:
.LFB10835:
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
.LFE10835:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED2Ev:
.LFB10838:
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
.LFE10838:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEED2Ev
	.section	.text._ZNSt6vectorIS_IxSaIxEESaIS1_EE17_S_check_init_lenEmRKS2_,"axG",@progbits,_ZNSt6vectorIS_IxSaIxEESaIS1_EE17_S_check_init_lenEmRKS2_,comdat
	.weak	_ZNSt6vectorIS_IxSaIxEESaIS1_EE17_S_check_init_lenEmRKS2_
	.type	_ZNSt6vectorIS_IxSaIxEESaIS1_EE17_S_check_init_lenEmRKS2_, @function
_ZNSt6vectorIS_IxSaIxEESaIS1_EE17_S_check_init_lenEmRKS2_:
.LFB10840:
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
	call	_ZNSaISt6vectorIxSaIxEEEC1ERKS2_
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IxSaIxEESaIS1_EE11_S_max_sizeERKS2_
	cmp	QWORD PTR -40[rbp], rax
	seta	bl
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaISt6vectorIxSaIxEEED1Ev
	test	bl, bl
	je	.L76
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L76:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L78
	call	__stack_chk_fail@PLT
.L78:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10840:
	.size	_ZNSt6vectorIS_IxSaIxEESaIS1_EE17_S_check_init_lenEmRKS2_, .-_ZNSt6vectorIS_IxSaIxEESaIS1_EE17_S_check_init_lenEmRKS2_
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD2Ev:
.LFB10843:
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
	call	_ZNSaISt6vectorIxSaIxEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10843:
	.size	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC2EmRKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC5EmRKS3_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC2EmRKS3_
	.type	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC2EmRKS3_, @function
_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC2EmRKS3_:
.LFB10845:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10845
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
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC1ERKS3_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB13:
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_M_create_storageEm
.LEHE13:
	jmp	.L83
.L82:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L83:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10845:
	.section	.gcc_except_table
.LLSDA10845:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10845-.LLSDACSB10845
.LLSDACSB10845:
	.uleb128 .LEHB13-.LFB10845
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L82-.LFB10845
	.uleb128 0
	.uleb128 .LEHB14-.LFB10845
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE10845:
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC2EmRKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC5EmRKS3_,comdat
	.size	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC2EmRKS3_, .-_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC2EmRKS3_
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC1EmRKS3_
	.set	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC1EmRKS3_,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EEC2EmRKS3_
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev, @function
_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev:
.LFB10848:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10848
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
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE13_M_deallocateEPS2_m
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10848:
	.section	.gcc_except_table
.LLSDA10848:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10848-.LLSDACSB10848
.LLSDACSB10848:
.LLSDACSE10848:
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev, .-_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED1Ev,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EED2Ev
	.section	.text._ZNSt6vectorIS_IxSaIxEESaIS1_EE18_M_fill_initializeEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IxSaIxEESaIS1_EE18_M_fill_initializeEmRKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IxSaIxEESaIS1_EE18_M_fill_initializeEmRKS1_
	.type	_ZNSt6vectorIS_IxSaIxEESaIS1_EE18_M_fill_initializeEmRKS1_, @function
_ZNSt6vectorIS_IxSaIxEESaIS1_EE18_M_fill_initializeEmRKS1_:
.LFB10850:
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
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt24__uninitialized_fill_n_aIPSt6vectorIxSaIxEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10850:
	.size	_ZNSt6vectorIS_IxSaIxEESaIS1_EE18_M_fill_initializeEmRKS1_, .-_ZNSt6vectorIS_IxSaIxEESaIS1_EE18_M_fill_initializeEmRKS1_
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB10851:
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
.LFE10851:
	.size	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E
	.type	_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E, @function
_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E:
.LFB10852:
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
	call	_ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10852:
	.size	_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E, .-_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E
	.section	.text._ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_:
.LFB11049:
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
	je	.L91
	call	__stack_chk_fail@PLT
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11049:
	.size	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.section	.text._ZNSaIxEC2ERKS_,"axG",@progbits,_ZNSaIxEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIxEC2ERKS_
	.type	_ZNSaIxEC2ERKS_, @function
_ZNSaIxEC2ERKS_:
.LFB11051:
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
	call	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11051:
	.size	_ZNSaIxEC2ERKS_, .-_ZNSaIxEC2ERKS_
	.weak	_ZNSaIxEC1ERKS_
	.set	_ZNSaIxEC1ERKS_,_ZNSaIxEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2ERKS0_:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIxEC2ERKS_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11054:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEm:
.LFB11056:
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
	call	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
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
.LFE11056:
	.size	_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIxSaIxEE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.type	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm, @function
_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm:
.LFB11057:
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
	je	.L97
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
.L97:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11057:
	.size	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm, .-_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.section	.text._ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E:
.LFB11058:
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
	call	_ZSt25__uninitialized_default_nIPxmET_S1_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11058:
	.size	_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPxEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPxEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPxEvT_S1_
	.type	_ZSt8_DestroyIPxEvT_S1_, @function
_ZSt8_DestroyIPxEvT_S1_:
.LFB11059:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11059:
	.size	_ZSt8_DestroyIPxEvT_S1_, .-_ZSt8_DestroyIPxEvT_S1_
	.section	.text._ZNSt6vectorIS_IxSaIxEESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorIS_IxSaIxEESaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorIS_IxSaIxEESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorIS_IxSaIxEESaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorIS_IxSaIxEESaIS1_EE11_S_max_sizeERKS2_:
.LFB11061:
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
	movabs	rax, 384307168202282325
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8max_sizeERKS3_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11061:
	.size	_ZNSt6vectorIS_IxSaIxEESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorIS_IxSaIxEESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNSaISt6vectorIxSaIxEEEC2ERKS2_,"axG",@progbits,_ZNSaISt6vectorIxSaIxEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSaISt6vectorIxSaIxEEEC2ERKS2_
	.type	_ZNSaISt6vectorIxSaIxEEEC2ERKS2_, @function
_ZNSaISt6vectorIxSaIxEEEC2ERKS2_:
.LFB11063:
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
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2ERKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11063:
	.size	_ZNSaISt6vectorIxSaIxEEEC2ERKS2_, .-_ZNSaISt6vectorIxSaIxEEEC2ERKS2_
	.weak	_ZNSaISt6vectorIxSaIxEEEC1ERKS2_
	.set	_ZNSaISt6vectorIxSaIxEEEC1ERKS2_,_ZNSaISt6vectorIxSaIxEEEC2ERKS2_
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC2ERKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC5ERKS3_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC2ERKS3_
	.type	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC2ERKS3_, @function
_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC2ERKS3_:
.LFB11066:
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
	call	_ZNSaISt6vectorIxSaIxEEEC2ERKS2_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11066:
	.size	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC2ERKS3_, .-_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC2ERKS3_
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC1ERKS3_
	.set	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC1ERKS3_,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE12_Vector_implC2ERKS3_
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_M_create_storageEm:
.LFB11068:
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
	call	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE11_M_allocateEm
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11068:
	.size	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE13_M_deallocateEPS2_m,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE13_M_deallocateEPS2_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE13_M_deallocateEPS2_m
	.type	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE13_M_deallocateEPS2_m, @function
_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE13_M_deallocateEPS2_m:
.LFB11069:
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
	je	.L109
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE10deallocateERS3_PS2_m
.L109:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11069:
	.size	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE13_M_deallocateEPS2_m, .-_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE13_M_deallocateEPS2_m
	.section	.text._ZSt24__uninitialized_fill_n_aIPSt6vectorIxSaIxEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPSt6vectorIxSaIxEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPSt6vectorIxSaIxEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPSt6vectorIxSaIxEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, @function
_ZSt24__uninitialized_fill_n_aIPSt6vectorIxSaIxEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E:
.LFB11070:
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
	mov	QWORD PTR -32[rbp], rcx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt20uninitialized_fill_nIPSt6vectorIxSaIxEEmS2_ET_S4_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11070:
	.size	_ZSt24__uninitialized_fill_n_aIPSt6vectorIxSaIxEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPSt6vectorIxSaIxEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.section	.text._ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_,comdat
	.weak	_ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_
	.type	_ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_, @function
_ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_:
.LFB11071:
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
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIxSaIxEEEEvT_S6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11071:
	.size	_ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_, .-_ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_:
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
	call	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11209:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_:
.LFB11211:
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
.LFE11211:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev:
.LFB11214:
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
.LFE11214:
	.size	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm:
.LFB11216:
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
	je	.L118
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	jmp	.L120
.L118:
	mov	eax, 0
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11216:
	.size	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm, .-_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, @function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm:
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
	call	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11217:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.section	.text._ZSt25__uninitialized_default_nIPxmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPxmET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPxmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPxmET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPxmET_S1_T0_:
.LFB11218:
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
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPxmEET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11218:
	.size	_ZSt25__uninitialized_default_nIPxmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPxmET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_:
.LFB11219:
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
.LFE11219:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8max_sizeERKS3_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8max_sizeERKS3_,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8max_sizeERKS3_
	.type	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8max_sizeERKS3_, @function
_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8max_sizeERKS3_:
.LFB11220:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11220:
	.size	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8max_sizeERKS3_, .-_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8max_sizeERKS3_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2ERKS4_
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2ERKS4_, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2ERKS4_:
.LFB11222:
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
.LFE11222:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2ERKS4_, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2ERKS4_
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC1ERKS4_
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC1ERKS4_,_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEEC2ERKS4_
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC2Ev:
.LFB11225:
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
.LFE11225:
	.size	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE11_M_allocateEm:
.LFB11227:
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
	je	.L130
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8allocateERS3_m
	jmp	.L132
.L130:
	mov	eax, 0
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11227:
	.size	_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt6vectorIxSaIxEESaIS2_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE10deallocateERS3_PS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE10deallocateERS3_PS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE10deallocateERS3_PS2_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE10deallocateERS3_PS2_m, @function
_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE10deallocateERS3_PS2_m:
.LFB11228:
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
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE10deallocateEPS3_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11228:
	.size	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE10deallocateERS3_PS2_m, .-_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE10deallocateERS3_PS2_m
	.section	.text._ZSt20uninitialized_fill_nIPSt6vectorIxSaIxEEmS2_ET_S4_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPSt6vectorIxSaIxEEmS2_ET_S4_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPSt6vectorIxSaIxEEmS2_ET_S4_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPSt6vectorIxSaIxEEmS2_ET_S4_T0_RKT1_, @function
_ZSt20uninitialized_fill_nIPSt6vectorIxSaIxEEmS2_ET_S4_T0_RKT1_:
.LFB11229:
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
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11229:
	.size	_ZSt20uninitialized_fill_nIPSt6vectorIxSaIxEEmS2_ET_S4_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPSt6vectorIxSaIxEEmS2_ET_S4_T0_RKT1_
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIxSaIxEEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIxSaIxEEEEvT_S6_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIxSaIxEEEEvT_S6_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIxSaIxEEEEvT_S6_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIxSaIxEEEEvT_S6_:
.LFB11230:
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
	jmp	.L137
.L138:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt6vectorIxSaIxEEEPT_RS3_
	mov	rdi, rax
	call	_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_
	add	QWORD PTR -8[rbp], 24
.L137:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L138
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11230:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIxSaIxEEEEvT_S6_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIxSaIxEEEEvT_S6_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv:
.LFB11315:
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
.LFE11315:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m:
.LFB11316:
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
.LFE11316:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, @function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm:
.LFB11317:
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
.LFE11317:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.section	.text._ZSt11__addressofIxEPT_RS0_,"axG",@progbits,_ZSt11__addressofIxEPT_RS0_,comdat
	.weak	_ZSt11__addressofIxEPT_RS0_
	.type	_ZSt11__addressofIxEPT_RS0_, @function
_ZSt11__addressofIxEPT_RS0_:
.LFB11319:
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
.LFE11319:
	.size	_ZSt11__addressofIxEPT_RS0_, .-_ZSt11__addressofIxEPT_RS0_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPxmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPxmEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPxmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPxmEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPxmEET_S3_T0_:
.LFB11318:
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
	cmp	QWORD PTR -32[rbp], 0
	je	.L148
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofIxEPT_RS0_
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt10_ConstructIxJEEvPT_DpOT0_
	add	QWORD PTR -24[rbp], 8
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, -1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt6fill_nIPxmxET_S1_T0_RKT1_
	mov	QWORD PTR -24[rbp], rax
.L148:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11318:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPxmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPxmEET_S3_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8max_sizeEv:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11320:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8allocateERS3_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8allocateERS3_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8allocateERS3_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8allocateERS3_m, @function
_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8allocateERS3_m:
.LFB11321:
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
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11321:
	.size	_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8allocateERS3_m, .-_ZNSt16allocator_traitsISaISt6vectorIxSaIxEEEE8allocateERS3_m
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE10deallocateEPS3_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE10deallocateEPS3_m
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE10deallocateEPS3_m, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE10deallocateEPS3_m:
.LFB11322:
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
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11322:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE10deallocateEPS3_m, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE10deallocateEPS3_m
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_, @function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_:
.LFB11323:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11323
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
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L157
.L158:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt6vectorIxSaIxEEEPT_RS3_
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
.LEHB15:
	call	_ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_
.LEHE15:
	sub	QWORD PTR -48[rbp], 1
	add	QWORD PTR -24[rbp], 24
.L157:
	cmp	QWORD PTR -48[rbp], 0
	jne	.L158
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L164
.L162:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB16:
	call	_ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_
	call	__cxa_rethrow@PLT
.LEHE16:
.L163:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L164:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11323:
	.section	.gcc_except_table
	.align 4
.LLSDA11323:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11323-.LLSDATTD11323
.LLSDATTD11323:
	.byte	0x1
	.uleb128 .LLSDACSE11323-.LLSDACSB11323
.LLSDACSB11323:
	.uleb128 .LEHB15-.LFB11323
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L162-.LFB11323
	.uleb128 0x1
	.uleb128 .LEHB16-.LFB11323
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L163-.LFB11323
	.uleb128 0
	.uleb128 .LEHB17-.LFB11323
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE11323:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11323:
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_,comdat
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIxSaIxEEmS4_EET_S6_T0_RKT1_
	.section	.text._ZSt11__addressofISt6vectorIxSaIxEEEPT_RS3_,"axG",@progbits,_ZSt11__addressofISt6vectorIxSaIxEEEPT_RS3_,comdat
	.weak	_ZSt11__addressofISt6vectorIxSaIxEEEPT_RS3_
	.type	_ZSt11__addressofISt6vectorIxSaIxEEEPT_RS3_, @function
_ZSt11__addressofISt6vectorIxSaIxEEEPT_RS3_:
.LFB11324:
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
.LFE11324:
	.size	_ZSt11__addressofISt6vectorIxSaIxEEEPT_RS3_, .-_ZSt11__addressofISt6vectorIxSaIxEEEPT_RS3_
	.section	.text._ZSt8_DestroyISt6vectorIxSaIxEEEvPT_,"axG",@progbits,_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_,comdat
	.weak	_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_
	.type	_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_, @function
_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_:
.LFB11325:
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
	call	_ZNSt6vectorIxSaIxEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11325:
	.size	_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_, .-_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv:
.LFB11431:
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
.LFE11431:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L171
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L172
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L172:
	call	_ZSt17__throw_bad_allocv@PLT
.L171:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11432:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.section	.text._ZSt10_ConstructIxJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIxJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIxJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIxJEEvPT_DpOT0_, @function
_ZSt10_ConstructIxJEEvPT_DpOT0_:
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
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	QWORD PTR [rax], 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11433:
	.size	_ZSt10_ConstructIxJEEvPT_DpOT0_, .-_ZSt10_ConstructIxJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPxmxET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPxmxET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPxmxET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPxmxET_S1_T0_RKT1_, @function
_ZSt6fill_nIPxmxET_S1_T0_RKT1_:
.LFB11434:
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
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	_ZSt19__iterator_categoryIPxENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt17__size_to_integerm
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt10__fill_n_aIPxmxET_S1_T0_RKT1_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11434:
	.size	_ZSt6fill_nIPxmxET_S1_T0_RKT1_, .-_ZSt6fill_nIPxmxET_S1_T0_RKT1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE11_M_max_sizeEv:
.LFB11435:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 384307168202282325
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11435:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L180
	movabs	rax, 768614336404564650
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L181
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L181:
	call	_ZSt17__throw_bad_allocv@PLT
.L180:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11436:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv
	.section	.text._ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_, @function
_ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_:
.LFB11437:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11437
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKSt6vectorIxSaIxEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	r13, rax
	mov	rbx, QWORD PTR -40[rbp]
	mov	rsi, rbx
	mov	edi, 24
	call	_ZnwmPv
	mov	r12, rax
	mov	rsi, r13
	mov	rdi, r12
.LEHB18:
	call	_ZNSt6vectorIxSaIxEEC1ERKS1_
.LEHE18:
	jmp	.L186
.L185:
	endbr64
	mov	r13, rax
	mov	rsi, rbx
	mov	rdi, r12
	call	_ZdlPvS_
	mov	rax, r13
	mov	rdi, rax
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L186:
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11437:
	.section	.gcc_except_table
.LLSDA11437:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11437-.LLSDACSB11437
.LLSDACSB11437:
	.uleb128 .LEHB18-.LFB11437
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L185-.LFB11437
	.uleb128 0
	.uleb128 .LEHB19-.LFB11437
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE11437:
	.section	.text._ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_,comdat
	.size	_ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_, .-_ZSt10_ConstructISt6vectorIxSaIxEEJRKS2_EEvPT_DpOT0_
	.section	.text._ZSt19__iterator_categoryIPxENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPxENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.weak	_ZSt19__iterator_categoryIPxENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPxENSt15iterator_traitsIT_E17iterator_categoryERKS2_, @function
_ZSt19__iterator_categoryIPxENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB11505:
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
.LFE11505:
	.size	_ZSt19__iterator_categoryIPxENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPxENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZSt10__fill_n_aIPxmxET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPxmxET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIPxmxET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPxmxET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPxmxET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB11506:
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
	jne	.L190
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L191
.L190:
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8__fill_aIPxxEvT_S1_RKT0_
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11506:
	.size	_ZSt10__fill_n_aIPxmxET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPxmxET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt7forwardIRKSt6vectorIxSaIxEEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt6vectorIxSaIxEEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt6vectorIxSaIxEEEOT_RNSt16remove_referenceIS5_E4typeE
	.type	_ZSt7forwardIRKSt6vectorIxSaIxEEEOT_RNSt16remove_referenceIS5_E4typeE, @function
_ZSt7forwardIRKSt6vectorIxSaIxEEEOT_RNSt16remove_referenceIS5_E4typeE:
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
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11507:
	.size	_ZSt7forwardIRKSt6vectorIxSaIxEEEOT_RNSt16remove_referenceIS5_E4typeE, .-_ZSt7forwardIRKSt6vectorIxSaIxEEEOT_RNSt16remove_referenceIS5_E4typeE
	.section	.text._ZNSt6vectorIxSaIxEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIxSaIxEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEEC2ERKS1_
	.type	_ZNSt6vectorIxSaIxEEC2ERKS1_, @function
_ZNSt6vectorIxSaIxEEC2ERKS1_:
.LFB11509:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11509
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -40[rbp], rax
	xor	eax, eax
	mov	rbx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	lea	rax, -41[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB20:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIxExE17_S_select_on_copyERKS1_
.LEHE20:
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	mov	rcx, rax
	lea	rax, -41[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
.LEHB21:
	call	_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_
.LEHE21:
	lea	rax, -41[rbp]
	mov	rdi, rax
	call	_ZNSaIxED1Ev
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	r13, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE3endEv
	mov	r12, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE5beginEv
	mov	rcx, r13
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, rax
.LEHB22:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E
.LEHE22:
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L197
	jmp	.L200
.L198:
	endbr64
	mov	rbx, rax
	lea	rax, -41[rbp]
	mov	rdi, rax
	call	_ZNSaIxED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB23:
	call	_Unwind_Resume@PLT
.L199:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEED2Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE23:
.L200:
	call	__stack_chk_fail@PLT
.L197:
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11509:
	.section	.gcc_except_table
.LLSDA11509:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11509-.LLSDACSB11509
.LLSDACSB11509:
	.uleb128 .LEHB20-.LFB11509
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB11509
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L198-.LFB11509
	.uleb128 0
	.uleb128 .LEHB22-.LFB11509
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L199-.LFB11509
	.uleb128 0
	.uleb128 .LEHB23-.LFB11509
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE11509:
	.section	.text._ZNSt6vectorIxSaIxEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIxSaIxEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIxSaIxEEC2ERKS1_, .-_ZNSt6vectorIxSaIxEEC2ERKS1_
	.weak	_ZNSt6vectorIxSaIxEEC1ERKS1_
	.set	_ZNSt6vectorIxSaIxEEC1ERKS1_,_ZNSt6vectorIxSaIxEEC2ERKS1_
	.section	.text._ZSt8__fill_aIPxxEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPxxEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPxxEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPxxEvT_S1_RKT0_, @function
_ZSt8__fill_aIPxxEvT_S1_RKT0_:
.LFB11540:
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
	call	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11540:
	.size	_ZSt8__fill_aIPxxEvT_S1_RKT0_, .-_ZSt8__fill_aIPxxEvT_S1_RKT0_
	.section	.text._ZNKSt6vectorIxSaIxEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE4sizeEv
	.type	_ZNKSt6vectorIxSaIxEE4sizeEv, @function
_ZNKSt6vectorIxSaIxEE4sizeEv:
.LFB11541:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11541:
	.size	_ZNKSt6vectorIxSaIxEE4sizeEv, .-_ZNKSt6vectorIxSaIxEE4sizeEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIxExE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIxExE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIxExE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIxExE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIxExE17_S_select_on_copyERKS1_:
.LFB11542:
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
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE37select_on_container_copy_constructionERKS0_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L206
	call	__stack_chk_fail@PLT
.L206:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11542:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIxExE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIxExE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB11543:
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
.LFE11543:
	.size	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIxSaIxEE5beginEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE5beginEv
	.type	_ZNKSt6vectorIxSaIxEE5beginEv, @function
_ZNKSt6vectorIxSaIxEE5beginEv:
.LFB11544:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L211
	call	__stack_chk_fail@PLT
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11544:
	.size	_ZNKSt6vectorIxSaIxEE5beginEv, .-_ZNKSt6vectorIxSaIxEE5beginEv
	.section	.text._ZNKSt6vectorIxSaIxEE3endEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE3endEv
	.type	_ZNKSt6vectorIxSaIxEE3endEv, @function
_ZNKSt6vectorIxSaIxEE3endEv:
.LFB11545:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L214
	call	__stack_chk_fail@PLT
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11545:
	.size	_ZNKSt6vectorIxSaIxEE3endEv, .-_ZNKSt6vectorIxSaIxEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E:
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
	mov	QWORD PTR -32[rbp], rcx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11546:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E
	.section	.text._ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.weak	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB11550:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L218
.L219:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	add	QWORD PTR -24[rbp], 8
.L218:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L219
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11550:
	.size	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt16allocator_traitsISaIxEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaIxEE37select_on_container_copy_constructionERKS0_:
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
	call	_ZNSaIxEC1ERKS_
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11551:
	.size	_ZNSt16allocator_traitsISaIxEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIxEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_:
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
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_:
.LFB11555:
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
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11555:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_:
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
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11568:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_:
.LFB11570:
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
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11570:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_:
.LFB11572:
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
.LFE11572:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_:
.LFB11573:
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
	call	_ZSt12__niter_baseIPxET_S1_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt14__copy_move_a1ILb0EPKxPxET1_T0_S4_S3_
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIPxET_RKS1_S1_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11573:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_
	.section	.text._ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB11576:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv
	mov	rax, QWORD PTR [rax]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11576:
	.size	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPxET_S1_,"axG",@progbits,_ZSt12__niter_baseIPxET_S1_,comdat
	.weak	_ZSt12__niter_baseIPxET_S1_
	.type	_ZSt12__niter_baseIPxET_S1_, @function
_ZSt12__niter_baseIPxET_S1_:
.LFB11577:
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
.LFE11577:
	.size	_ZSt12__niter_baseIPxET_S1_, .-_ZSt12__niter_baseIPxET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKxPxET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKxPxET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKxPxET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKxPxET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKxPxET1_T0_S4_S3_:
.LFB11578:
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
	call	_ZSt14__copy_move_a2ILb0EPKxPxET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11578:
	.size	_ZSt14__copy_move_a1ILb0EPKxPxET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKxPxET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPxET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPxET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPxET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPxET_RKS1_S1_, @function
_ZSt12__niter_wrapIPxET_RKS1_S1_:
.LFB11579:
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
.LFE11579:
	.size	_ZSt12__niter_wrapIPxET_RKS1_S1_, .-_ZSt12__niter_wrapIPxET_RKS1_S1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv:
.LFB11580:
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
.LFE11580:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKxPxET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKxPxET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKxPxET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKxPxET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKxPxET1_T0_S4_S3_:
.LFB11581:
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
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11581:
	.size	_ZSt14__copy_move_a2ILb0EPKxPxET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKxPxET1_T0_S4_S3_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_:
.LFB11582:
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
	je	.L246
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
.L246:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11582:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
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
	jne	.L250
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L250
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
.L250:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11619:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5setupv, @function
_GLOBAL__sub_I__Z5setupv:
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
