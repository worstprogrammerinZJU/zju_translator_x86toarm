	.file	"B_Make_it_Divisible_by_25.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZNSt7__cxx119to_stringEx,"axG",@progbits,_ZNSt7__cxx119to_stringEx,comdat
	.weak	_ZNSt7__cxx119to_stringEx
	.type	_ZNSt7__cxx119to_stringEx, @function
_ZNSt7__cxx119to_stringEx:
.LFB1752:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1752
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
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -64[rbp]
	shr	rax, 63
	mov	BYTE PTR -37[rbp], al
	cmp	BYTE PTR -37[rbp], 0
	je	.L2
	mov	rax, QWORD PTR -64[rbp]
	neg	rax
	jmp	.L3
.L2:
	mov	rax, QWORD PTR -64[rbp]
.L3:
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, 10
	mov	rdi, rax
	call	_ZNSt8__detail14__to_chars_lenIyEEjT_i
	mov	DWORD PTR -36[rbp], eax
	lea	rax, -38[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	movzx	edx, BYTE PTR -37[rbp]
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rdx, -38[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rdx
	mov	edx, 45
	mov	rdi, rax
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_
.LEHE0:
	lea	rax, -38[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	movzx	edx, BYTE PTR -37[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
.LEHE1:
	mov	rcx, rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, eax
	mov	rdi, rcx
	call	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L7
	jmp	.L10
.L8:
	endbr64
	mov	rbx, rax
	lea	rax, -38[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB2:
	call	_Unwind_Resume@PLT
.L9:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE2:
.L10:
	call	__stack_chk_fail@PLT
.L7:
	mov	rax, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1752:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt7__cxx119to_stringEx,"aG",@progbits,_ZNSt7__cxx119to_stringEx,comdat
.LLSDA1752:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1752-.LLSDACSB1752
.LLSDACSB1752:
	.uleb128 .LEHB0-.LFB1752
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L8-.LFB1752
	.uleb128 0
	.uleb128 .LEHB1-.LFB1752
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L9-.LFB1752
	.uleb128 0
	.uleb128 .LEHB2-.LFB1752
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1752:
	.section	.text._ZNSt7__cxx119to_stringEx,"axG",@progbits,_ZNSt7__cxx119to_stringEx,comdat
	.size	_ZNSt7__cxx119to_stringEx, .-_ZNSt7__cxx119to_stringEx
	.section	.text._ZNSt8__detail14__to_chars_lenIyEEjT_i,"axG",@progbits,_ZNSt8__detail14__to_chars_lenIyEEjT_i,comdat
	.weak	_ZNSt8__detail14__to_chars_lenIyEEjT_i
	.type	_ZNSt8__detail14__to_chars_lenIyEEjT_i, @function
_ZNSt8__detail14__to_chars_lenIyEEjT_i:
.LFB1754:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	imul	eax, eax
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	edx, DWORD PTR -16[rbp]
	imul	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	imul	eax, DWORD PTR -12[rbp]
	mov	eax, eax
	mov	QWORD PTR -8[rbp], rax
.L17:
	mov	eax, DWORD PTR -44[rbp]
	mov	eax, eax
	cmp	QWORD PTR -40[rbp], rax
	jnb	.L12
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L13
.L12:
	mov	eax, DWORD PTR -16[rbp]
	cmp	QWORD PTR -40[rbp], rax
	jnb	.L14
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -12[rbp]
	cmp	QWORD PTR -40[rbp], rax
	jnb	.L15
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 2
	jmp	.L13
.L15:
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -8[rbp]
	jnb	.L16
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 3
	jmp	.L13
.L16:
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, 0
	div	QWORD PTR -8[rbp]
	mov	QWORD PTR -40[rbp], rax
	add	DWORD PTR -20[rbp], 4
	jmp	.L17
.L13:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1754:
	.size	_ZNSt8__detail14__to_chars_lenIyEEjT_i, .-_ZNSt8__detail14__to_chars_lenIyEEjT_i
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
	sub	rsp, 104
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB3:
	call	_ZNSirsERx@PLT
	jmp	.L19
.L42:
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx119to_stringEx
.LEHE3:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	mov	DWORD PTR -96[rbp], eax
	mov	BYTE PTR -97[rbp], 0
	mov	DWORD PTR -92[rbp], 0
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	sub	eax, 1
	mov	DWORD PTR -88[rbp], eax
	jmp	.L20
.L30:
	movzx	eax, BYTE PTR -97[rbp]
	xor	eax, 1
	test	al, al
	je	.L21
	mov	eax, DWORD PTR -88[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 53
	jne	.L21
	mov	eax, 1
	jmp	.L22
.L21:
	mov	eax, 0
.L22:
	test	al, al
	je	.L23
	mov	BYTE PTR -97[rbp], 1
	jmp	.L24
.L23:
	cmp	BYTE PTR -97[rbp], 0
	je	.L25
	mov	eax, DWORD PTR -88[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	je	.L26
	mov	eax, DWORD PTR -88[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 55
	jne	.L25
.L26:
	mov	eax, 1
	jmp	.L27
.L25:
	mov	eax, 0
.L27:
	test	al, al
	je	.L28
	lea	rdx, -92[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -96[rbp], eax
	jmp	.L29
.L28:
	mov	eax, DWORD PTR -92[rbp]
	add	eax, 1
	mov	DWORD PTR -92[rbp], eax
.L24:
	sub	DWORD PTR -88[rbp], 1
.L20:
	cmp	DWORD PTR -88[rbp], 0
	jns	.L30
.L29:
	mov	BYTE PTR -97[rbp], 0
	mov	DWORD PTR -92[rbp], 0
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	sub	eax, 1
	mov	DWORD PTR -84[rbp], eax
	jmp	.L31
.L41:
	movzx	eax, BYTE PTR -97[rbp]
	xor	eax, 1
	test	al, al
	je	.L32
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	jne	.L32
	mov	eax, 1
	jmp	.L33
.L32:
	mov	eax, 0
.L33:
	test	al, al
	je	.L34
	mov	BYTE PTR -97[rbp], 1
	jmp	.L35
.L34:
	cmp	BYTE PTR -97[rbp], 0
	je	.L36
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 53
	je	.L37
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	jne	.L36
.L37:
	mov	eax, 1
	jmp	.L38
.L36:
	mov	eax, 0
.L38:
	test	al, al
	je	.L39
	lea	rdx, -92[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -96[rbp], eax
	jmp	.L40
.L39:
	mov	eax, DWORD PTR -92[rbp]
	add	eax, 1
	mov	DWORD PTR -92[rbp], eax
.L35:
	sub	DWORD PTR -84[rbp], 1
.L31:
	cmp	DWORD PTR -84[rbp], 0
	jns	.L41
.L40:
	mov	eax, DWORD PTR -96[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE4:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L19:
	mov	rax, QWORD PTR -80[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -80[rbp], rdx
	test	rax, rax
	setne	al
	test	al, al
	jne	.L42
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L45
	jmp	.L47
.L46:
	endbr64
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L47:
	call	__stack_chk_fail@PLT
.L45:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.section	.gcc_except_table,"a",@progbits
.LLSDA9704:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9704-.LLSDACSB9704
.LLSDACSB9704:
	.uleb128 .LEHB3-.LFB9704
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB9704
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L46-.LFB9704
	.uleb128 0
	.uleb128 .LEHB5-.LFB9704
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE9704:
	.text
	.size	main, .-main
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB9864:
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
.LFE9864:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEmcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_:
.LFB9866:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9866
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
	mov	eax, edx
	mov	QWORD PTR -48[rbp], rcx
	mov	BYTE PTR -36[rbp], al
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
.LEHE6:
	movsx	edx, BYTE PTR -36[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
.LEHE7:
	jmp	.L52
.L51:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L52:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9866:
	.section	.gcc_except_table
.LLSDA9866:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9866-.LLSDACSB9866
.LLSDACSB9866:
	.uleb128 .LEHB6-.LFB9866
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB9866
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L51-.LFB9866
	.uleb128 0
	.uleb128 .LEHB8-.LFB9866
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE9866:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEmcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	.weak	_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	.section	.rodata._ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits,"aG",@progbits,_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits,comdat
	.align 32
	.type	_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits, @gnu_unique_object
	.size	_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits, 201
_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits:
	.string	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.section	.text._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_,"axG",@progbits,_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_,comdat
	.weak	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	.type	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_, @function
_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_:
.LFB9878:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	mov	DWORD PTR -20[rbp], eax
	jmp	.L54
.L55:
	mov	rcx, QWORD PTR -56[rbp]
	mov	rax, rcx
	shr	rax, 2
	movabs	rdx, 2951479051793528259
	mul	rdx
	shr	rdx, 2
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	sub	rcx, rax
	mov	rdx, rcx
	lea	rax, [rdx+rdx]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	shr	rax, 2
	movabs	rdx, 2951479051793528259
	mul	rdx
	mov	rax, rdx
	shr	rax, 2
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, 1[rax]
	mov	edx, DWORD PTR -20[rbp]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	lea	rax, _ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits[rip]
	movzx	eax, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	lea	rcx, _ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits[rip]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	sub	DWORD PTR -20[rbp], 2
.L54:
	cmp	QWORD PTR -56[rbp], 99
	ja	.L55
	cmp	QWORD PTR -56[rbp], 9
	jbe	.L56
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rax
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, 1[rax]
	lea	rax, _ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits[rip]
	movzx	eax, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx], al
	lea	rdx, _ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits[rip]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	BYTE PTR [rax], dl
	jmp	.L58
.L56:
	mov	rax, QWORD PTR -56[rbp]
	add	eax, 48
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	BYTE PTR [rax], dl
.L58:
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9878:
	.size	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_, .-_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, @function
_ZSt3minIiERKT_S2_S2_:
.LFB10393:
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
	jge	.L60
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L61
.L60:
	mov	rax, QWORD PTR -8[rbp]
.L61:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10393:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.text
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
	jne	.L64
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L64
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
.L64:
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
