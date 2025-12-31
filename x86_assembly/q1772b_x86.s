	.file	"q1772b.cpp"
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
	.text
	.globl	_Z5checkPA2_i
	.type	_Z5checkPA2_i, @function
_Z5checkPA2_i:
.LFB9704:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 1
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	cmp	edx, eax
	jle	.L2
	mov	DWORD PTR -4[rbp], 0
.L2:
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 8
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 8
	mov	eax, DWORD PTR 4[rax]
	cmp	edx, eax
	jle	.L3
	mov	DWORD PTR -4[rbp], 0
.L3:
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 8
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L4
	mov	DWORD PTR -4[rbp], 0
.L4:
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 8
	mov	eax, DWORD PTR 4[rax]
	cmp	edx, eax
	jle	.L5
	mov	DWORD PTR -4[rbp], 0
.L5:
	cmp	DWORD PTR -4[rbp], 0
	jne	.L6
	mov	eax, 0
	jmp	.L7
.L6:
	mov	eax, 1
.L7:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.size	_Z5checkPA2_i, .-_Z5checkPA2_i
	.section	.rodata
.LC0:
	.string	"YES"
.LC1:
	.string	"NO"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9705:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 96
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -84[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -76[rbp], 1
	jmp	.L9
.L24:
	mov	DWORD PTR -72[rbp], 0
	jmp	.L10
.L13:
	mov	DWORD PTR -68[rbp], 0
	jmp	.L11
.L12:
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -80[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -72[rbp]
	movsx	rdx, edx
	add	rdx, rdx
	add	rdx, rcx
	mov	DWORD PTR -48[rbp+rdx*4], eax
	add	DWORD PTR -68[rbp], 1
.L11:
	cmp	DWORD PTR -68[rbp], 1
	jle	.L12
	add	DWORD PTR -72[rbp], 1
.L10:
	cmp	DWORD PTR -72[rbp], 1
	jle	.L13
	mov	DWORD PTR -64[rbp], 0
	mov	DWORD PTR -60[rbp], 0
	jmp	.L14
.L21:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_Z5checkPA2_i
	test	al, al
	je	.L15
	mov	DWORD PTR -64[rbp], 1
	jmp	.L16
.L15:
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -56[rbp], 0
	jmp	.L17
.L20:
	mov	DWORD PTR -52[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	eax, DWORD PTR -32[rbp+rax*4]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	add	rdx, rdx
	add	rdx, rcx
	mov	DWORD PTR -48[rbp+rdx*4], eax
	add	DWORD PTR -52[rbp], 1
.L18:
	cmp	DWORD PTR -52[rbp], 1
	jle	.L19
	add	DWORD PTR -56[rbp], 1
.L17:
	cmp	DWORD PTR -56[rbp], 1
	jle	.L20
	add	DWORD PTR -60[rbp], 1
.L14:
	cmp	DWORD PTR -60[rbp], 3
	jle	.L21
.L16:
	cmp	DWORD PTR -64[rbp], 1
	jne	.L22
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L23
.L22:
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
.L23:
	add	DWORD PTR -76[rbp], 1
.L9:
	mov	eax, DWORD PTR -84[rbp]
	cmp	DWORD PTR -76[rbp], eax
	jle	.L24
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9705:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11461:
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
	jne	.L29
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L29
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
.L29:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11461:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5checkPA2_i, @function
_GLOBAL__sub_I__Z5checkPA2_i:
.LFB11484:
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
.LFE11484:
	.size	_GLOBAL__sub_I__Z5checkPA2_i, .-_GLOBAL__sub_I__Z5checkPA2_i
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5checkPA2_i
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
