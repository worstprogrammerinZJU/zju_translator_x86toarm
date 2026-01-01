	.file	"381A.cpp"
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
	.section	.text._ZNSt8__detail17_List_node_headerC2Ev,"axG",@progbits,_ZNSt8__detail17_List_node_headerC5Ev,comdat
	.align 2
	.weak	_ZNSt8__detail17_List_node_headerC2Ev
	.type	_ZNSt8__detail17_List_node_headerC2Ev, @function
_ZNSt8__detail17_List_node_headerC2Ev:
.LFB4843:
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
	call	_ZNSt8__detail17_List_node_header7_M_initEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4843:
	.size	_ZNSt8__detail17_List_node_headerC2Ev, .-_ZNSt8__detail17_List_node_headerC2Ev
	.weak	_ZNSt8__detail17_List_node_headerC1Ev
	.set	_ZNSt8__detail17_List_node_headerC1Ev,_ZNSt8__detail17_List_node_headerC2Ev
	.section	.text._ZNSt8__detail17_List_node_header7_M_initEv,"axG",@progbits,_ZNSt8__detail17_List_node_header7_M_initEv,comdat
	.align 2
	.weak	_ZNSt8__detail17_List_node_header7_M_initEv
	.type	_ZNSt8__detail17_List_node_header7_M_initEv, @function
_ZNSt8__detail17_List_node_header7_M_initEv:
.LFB4849:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4849:
	.size	_ZNSt8__detail17_List_node_header7_M_initEv, .-_ZNSt8__detail17_List_node_header7_M_initEv
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
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev, @function
_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev:
.LFB9709:
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
	call	_ZNSaISt10_List_nodeIiEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9709:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev, .-_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD1Ev
	.set	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD1Ev,_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEEC5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev, @function
_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev:
.LFB9711:
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
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9711:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev, .-_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEEC1Ev
	.set	_ZNSt7__cxx1110_List_baseIiSaIiEEC1Ev,_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev
	.section	.text._ZNSt7__cxx114listIiSaIiEEC2Ev,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEEC5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEEC2Ev
	.type	_ZNSt7__cxx114listIiSaIiEEC2Ev, @function
_ZNSt7__cxx114listIiSaIiEEC2Ev:
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
	call	_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9713:
	.size	_ZNSt7__cxx114listIiSaIiEEC2Ev, .-_ZNSt7__cxx114listIiSaIiEEC2Ev
	.weak	_ZNSt7__cxx114listIiSaIiEEC1Ev
	.set	_ZNSt7__cxx114listIiSaIiEEC1Ev,_ZNSt7__cxx114listIiSaIiEEC2Ev
	.section	.text._ZNSt7__cxx114listIiSaIiEED2Ev,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEED5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEED2Ev
	.type	_ZNSt7__cxx114listIiSaIiEED2Ev, @function
_ZNSt7__cxx114listIiSaIiEED2Ev:
.LFB9716:
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
	call	_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9716:
	.size	_ZNSt7__cxx114listIiSaIiEED2Ev, .-_ZNSt7__cxx114listIiSaIiEED2Ev
	.weak	_ZNSt7__cxx114listIiSaIiEED1Ev
	.set	_ZNSt7__cxx114listIiSaIiEED1Ev,_ZNSt7__cxx114listIiSaIiEED2Ev
	.section	.rodata
.LC0:
	.string	" "
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
	sub	rsp, 72
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB0:
	call	_ZNSirsERi@PLT
.LEHE0:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEEC1Ev
	mov	DWORD PTR -60[rbp], 0
	jmp	.L10
.L11:
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB1:
	call	_ZNSirsERi@PLT
	lea	rdx, -64[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE9push_backERKi
	add	DWORD PTR -60[rbp], 1
.L10:
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L11
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -52[rbp], 0
	mov	BYTE PTR -69[rbp], 1
	jmp	.L12
.L16:
	xor	BYTE PTR -69[rbp], 1
	cmp	BYTE PTR -69[rbp], 0
	je	.L13
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE5frontEv
	mov	ebx, DWORD PTR [rax]
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE4backEv
	mov	eax, DWORD PTR [rax]
	cmp	ebx, eax
	setge	al
	test	al, al
	je	.L14
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE5frontEv
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -52[rbp], eax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE9pop_frontEv
	jmp	.L12
.L14:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE4backEv
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -52[rbp], eax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE8pop_backEv
	jmp	.L12
.L13:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE5frontEv
	mov	ebx, DWORD PTR [rax]
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE4backEv
	mov	eax, DWORD PTR [rax]
	cmp	ebx, eax
	setge	al
	test	al, al
	je	.L15
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE5frontEv
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -56[rbp], eax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE9pop_frontEv
	jmp	.L12
.L15:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE4backEv
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -56[rbp], eax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE8pop_backEv
	nop
.L12:
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -68[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L16
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR -52[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE1:
	mov	ebx, 0
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEED1Ev
	mov	eax, ebx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	jmp	.L21
.L20:
	endbr64
	mov	rbx, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L21:
	call	__stack_chk_fail@PLT
.L19:
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
	.uleb128 .L20-.LFB9704
	.uleb128 0
	.uleb128 .LEHB2-.LFB9704
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE9704:
	.text
	.size	main, .-main
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev, @function
_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev:
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
	call	_ZNSaISt10_List_nodeIiEEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt8__detail17_List_node_headerC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10406:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev, .-_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC1Ev
	.set	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC1Ev,_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev
	.section	.text._ZNSaISt10_List_nodeIiEED2Ev,"axG",@progbits,_ZNSaISt10_List_nodeIiEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt10_List_nodeIiEED2Ev
	.type	_ZNSaISt10_List_nodeIiEED2Ev, @function
_ZNSaISt10_List_nodeIiEED2Ev:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10409:
	.size	_ZNSaISt10_List_nodeIiEED2Ev, .-_ZNSaISt10_List_nodeIiEED2Ev
	.weak	_ZNSaISt10_List_nodeIiEED1Ev
	.set	_ZNSaISt10_List_nodeIiEED1Ev,_ZNSaISt10_List_nodeIiEED2Ev
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEED5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev, @function
_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev:
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
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10412:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev, .-_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEED1Ev
	.set	_ZNSt7__cxx1110_List_baseIiSaIiEED1Ev,_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev
	.section	.text._ZNSt7__cxx114listIiSaIiEE9push_backERKi,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE9push_backERKi,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE9push_backERKi
	.type	_ZNSt7__cxx114listIiSaIiEE9push_backERKi, @function
_ZNSt7__cxx114listIiSaIiEE9push_backERKi:
.LFB10414:
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
	call	_ZNSt7__cxx114listIiSaIiEE3endEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10414:
	.size	_ZNSt7__cxx114listIiSaIiEE9push_backERKi, .-_ZNSt7__cxx114listIiSaIiEE9push_backERKi
	.section	.text._ZNSt7__cxx114listIiSaIiEE5frontEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE5frontEv,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE5frontEv
	.type	_ZNSt7__cxx114listIiSaIiEE5frontEv, @function
_ZNSt7__cxx114listIiSaIiEE5frontEv:
.LFB10415:
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
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE5beginEv
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZNKSt14_List_iteratorIiEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10415:
	.size	_ZNSt7__cxx114listIiSaIiEE5frontEv, .-_ZNSt7__cxx114listIiSaIiEE5frontEv
	.section	.text._ZNSt7__cxx114listIiSaIiEE4backEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE4backEv,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE4backEv
	.type	_ZNSt7__cxx114listIiSaIiEE4backEv, @function
_ZNSt7__cxx114listIiSaIiEE4backEv:
.LFB10416:
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
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE3endEv
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZNSt14_List_iteratorIiEmmEv
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZNKSt14_List_iteratorIiEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10416:
	.size	_ZNSt7__cxx114listIiSaIiEE4backEv, .-_ZNSt7__cxx114listIiSaIiEE4backEv
	.section	.text._ZNSt7__cxx114listIiSaIiEE9pop_frontEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE9pop_frontEv,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE9pop_frontEv
	.type	_ZNSt7__cxx114listIiSaIiEE9pop_frontEv, @function
_ZNSt7__cxx114listIiSaIiEE9pop_frontEv:
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
	call	_ZNSt7__cxx114listIiSaIiEE5beginEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10417:
	.size	_ZNSt7__cxx114listIiSaIiEE9pop_frontEv, .-_ZNSt7__cxx114listIiSaIiEE9pop_frontEv
	.section	.text._ZNSt7__cxx114listIiSaIiEE8pop_backEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE8pop_backEv,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE8pop_backEv
	.type	_ZNSt7__cxx114listIiSaIiEE8pop_backEv, @function
_ZNSt7__cxx114listIiSaIiEE8pop_backEv:
.LFB10418:
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
	mov	rdx, QWORD PTR 8[rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt14_List_iteratorIiEC1EPNSt8__detail15_List_node_baseE
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10418:
	.size	_ZNSt7__cxx114listIiSaIiEE8pop_backEv, .-_ZNSt7__cxx114listIiSaIiEE8pop_backEv
	.section	.text._ZNSaISt10_List_nodeIiEEC2Ev,"axG",@progbits,_ZNSaISt10_List_nodeIiEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt10_List_nodeIiEEC2Ev
	.type	_ZNSaISt10_List_nodeIiEEC2Ev, @function
_ZNSaISt10_List_nodeIiEEC2Ev:
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
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10814:
	.size	_ZNSaISt10_List_nodeIiEEC2Ev, .-_ZNSaISt10_List_nodeIiEEC2Ev
	.weak	_ZNSaISt10_List_nodeIiEEC1Ev
	.set	_ZNSaISt10_List_nodeIiEEC1Ev,_ZNSaISt10_List_nodeIiEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev:
.LFB10817:
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
.LFE10817:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED1Ev,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv, @function
_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv:
.LFB10819:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L38
.L39:
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZNSt10_List_nodeIiE9_M_valptrEv
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE
.L38:
	mov	rax, QWORD PTR -40[rbp]
	cmp	QWORD PTR -24[rbp], rax
	jne	.L39
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10819:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv, .-_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv
	.section	.text._ZNSt7__cxx114listIiSaIiEE3endEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE3endEv,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE3endEv
	.type	_ZNSt7__cxx114listIiSaIiEE3endEv, @function
_ZNSt7__cxx114listIiSaIiEE3endEv:
.LFB10821:
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
	call	_ZNSt14_List_iteratorIiEC1EPNSt8__detail15_List_node_baseE
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10821:
	.size	_ZNSt7__cxx114listIiSaIiEE3endEv, .-_ZNSt7__cxx114listIiSaIiEE3endEv
	.section	.text._ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_
	.type	_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_, @function
_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_:
.LFB10822:
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt8__detail15_List_node_base7_M_hookEPS0_@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10822:
	.size	_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_, .-_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_
	.section	.text._ZNSt7__cxx114listIiSaIiEE5beginEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE5beginEv,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE5beginEv
	.type	_ZNSt7__cxx114listIiSaIiEE5beginEv, @function
_ZNSt7__cxx114listIiSaIiEE5beginEv:
.LFB10823:
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
	mov	rdx, QWORD PTR [rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt14_List_iteratorIiEC1EPNSt8__detail15_List_node_baseE
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10823:
	.size	_ZNSt7__cxx114listIiSaIiEE5beginEv, .-_ZNSt7__cxx114listIiSaIiEE5beginEv
	.section	.text._ZNKSt14_List_iteratorIiEdeEv,"axG",@progbits,_ZNKSt14_List_iteratorIiEdeEv,comdat
	.align 2
	.weak	_ZNKSt14_List_iteratorIiEdeEv
	.type	_ZNKSt14_List_iteratorIiEdeEv, @function
_ZNKSt14_List_iteratorIiEdeEv:
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
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	_ZNSt10_List_nodeIiE9_M_valptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10824:
	.size	_ZNKSt14_List_iteratorIiEdeEv, .-_ZNKSt14_List_iteratorIiEdeEv
	.section	.text._ZNSt14_List_iteratorIiEmmEv,"axG",@progbits,_ZNSt14_List_iteratorIiEmmEv,comdat
	.align 2
	.weak	_ZNSt14_List_iteratorIiEmmEv
	.type	_ZNSt14_List_iteratorIiEmmEv, @function
_ZNSt14_List_iteratorIiEmmEv:
.LFB10825:
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
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10825:
	.size	_ZNSt14_List_iteratorIiEmmEv, .-_ZNSt14_List_iteratorIiEmmEv
	.section	.text._ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE
	.type	_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE, @function
_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE:
.LFB10826:
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
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZNSt8__detail15_List_node_base9_M_unhookEv@PLT
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt10_List_nodeIiE9_M_valptrEv
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10826:
	.size	_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE, .-_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE
	.section	.text._ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE,"axG",@progbits,_ZNSt14_List_iteratorIiEC5EPNSt8__detail15_List_node_baseE,comdat
	.align 2
	.weak	_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE
	.type	_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE, @function
_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE:
.LFB10828:
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
.LFE10828:
	.size	_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE, .-_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE
	.weak	_ZNSt14_List_iteratorIiEC1EPNSt8__detail15_List_node_baseE
	.set	_ZNSt14_List_iteratorIiEC1EPNSt8__detail15_List_node_baseE,_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev:
.LFB11030:
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
.LFE11030:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev
	.section	.text._ZNSt10_List_nodeIiE9_M_valptrEv,"axG",@progbits,_ZNSt10_List_nodeIiE9_M_valptrEv,comdat
	.align 2
	.weak	_ZNSt10_List_nodeIiE9_M_valptrEv
	.type	_ZNSt10_List_nodeIiE9_M_valptrEv, @function
_ZNSt10_List_nodeIiE9_M_valptrEv:
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
	add	rax, 16
	mov	rdi, rax
	call	_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11032:
	.size	_ZNSt10_List_nodeIiE9_M_valptrEv, .-_ZNSt10_List_nodeIiE9_M_valptrEv
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv, @function
_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv:
.LFB11033:
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
.LFE11033:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv, .-_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_, @function
_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_:
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11034:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_, .-_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE, @function
_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE:
.LFB11035:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11035
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
	mov	rcx, QWORD PTR -16[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11035:
	.section	.gcc_except_table
.LLSDA11035:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11035-.LLSDACSB11035
.LLSDACSB11035:
.LLSDACSE11035:
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE,comdat
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE, .-_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE
	.section	.text._ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11036:
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
.LFE11036:
	.size	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_
	.type	_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_, @function
_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_:
.LFB11037:
	.cfi_startproc
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
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	mov	QWORD PTR -56[rbp], rax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC1ERS2_PS1_
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rbx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNSt10_List_nodeIiE9_M_valptrEv
	mov	rcx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_
	lea	rax, -48[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn
	mov	rbx, QWORD PTR -64[rbp]
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED1Ev
	mov	rax, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11037:
	.size	_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_, .-_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm, @function
_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm:
.LFB11038:
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
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11038:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm, .-_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm, @function
_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm:
.LFB11039:
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
	mov	rax, QWORD PTR 16[rax]
	sub	rax, QWORD PTR -16[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11039:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm, .-_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm
	.section	.text._ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv
	.type	_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv, @function
_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv:
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
	call	_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11178:
	.size	_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv, .-_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_:
.LFB11179:
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
.LFE11179:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m, @function
_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m:
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
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11180:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv, @function
_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv:
.LFB11181:
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
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11181:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv, .-_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC5ERS2_PS1_,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_, @function
_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_:
.LFB11183:
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
	mov	rdi, rax
	call	_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11183:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_, .-_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC1ERS2_PS1_
	.set	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC1ERS2_PS1_,_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev, @function
_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev:
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
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L76
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m
.L76:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11186:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev, .-_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED1Ev
	.set	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED1Ev,_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_:
.LFB11188:
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
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11188:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn, @function
_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11189:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn, .-_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn
	.section	.text._ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv
	.type	_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv, @function
_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv:
.LFB11274:
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
.LFE11274:
	.size	_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv, .-_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m:
.LFB11275:
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
.LFE11275:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m, @function
_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m:
.LFB11276:
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
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11276:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m
	.section	.text._ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_,"axG",@progbits,_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_,comdat
	.weak	_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_
	.type	_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_, @function
_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_:
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
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11277:
	.size	_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_, .-_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_:
.LFB11278:
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
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mov	ebx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 4
	call	_ZnwmPv
	mov	DWORD PTR [rax], ebx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11278:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv:
.LFB11385:
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
.LFE11385:
	.size	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv:
.LFB11384:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L92
	movabs	rax, 768614336404564650
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L93
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L93:
	call	_ZSt17__throw_bad_allocv@PLT
.L92:
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
.LFE11384:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11534:
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
	jne	.L97
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L97
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
.L97:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11534:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11557:
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
.LFE11557:
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
