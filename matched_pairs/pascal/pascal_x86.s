	.file	"pascal.cpp"
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
	.globl	_Z6Pascalii
	.type	_Z6Pascalii, @function
_Z6Pascalii:
.LFB9704:
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
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	cmp	DWORD PTR -24[rbp], 0
	je	.L2
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L3
.L2:
	mov	eax, 1
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z6Pascalii
	mov	ebx, eax
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z6Pascalii
	add	eax, ebx
.L4:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.size	_Z6Pascalii, .-_Z6Pascalii
	.section	.rodata
.LC0:
	.string	" "
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
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 136
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
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
	mov	DWORD PTR -104[rbp], 1
	jmp	.L6
.L25:
	mov	rax, rsp
	mov	QWORD PTR -168[rbp], rax
	lea	rax, -108[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -108[rbp]
	lea	esi, 1[rax]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], 0
	movsx	rax, esi
	lea	rbx, 0[0+rax*4]
	mov	eax, DWORD PTR -108[rbp]
	lea	edi, 1[rax]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
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
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], 0
	mov	r9, QWORD PTR -144[rbp]
	mov	r10, QWORD PTR -136[rbp]
	mov	rdx, r10
	imul	rdx, QWORD PTR -128[rbp]
	mov	rax, QWORD PTR -120[rbp]
	imul	rax, r9
	lea	rcx, [rdx+rax]
	mov	rax, r9
	mul	QWORD PTR -128[rbp]
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ecx, 16
	mov	edx, 0
	div	rcx
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
.L7:
	cmp	rsp, rcx
	je	.L8
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L7
.L8:
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L9
	mov	rax, rdx
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L9:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	sal	rax, 2
	mov	rcx, QWORD PTR -64[rbp]
	mov	rdx, rax
	mov	esi, 0
	mov	rdi, rcx
	call	memset@PLT
	mov	DWORD PTR -100[rbp], 0
	jmp	.L10
.L16:
	mov	DWORD PTR -96[rbp], 0
	jmp	.L11
.L15:
	cmp	DWORD PTR -100[rbp], 0
	jne	.L12
	mov	rdx, rbx
	shr	rdx, 2
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -96[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	imul	rax, rdx
	add	rax, rsi
	mov	DWORD PTR [rcx+rax*4], 0
.L12:
	cmp	DWORD PTR -96[rbp], 0
	jne	.L13
	mov	rdx, rbx
	shr	rdx, 2
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -96[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	imul	rax, rdx
	add	rax, rsi
	mov	DWORD PTR [rcx+rax*4], 1
.L13:
	mov	eax, DWORD PTR -100[rbp]
	cmp	eax, DWORD PTR -96[rbp]
	jne	.L14
	mov	rdx, rbx
	shr	rdx, 2
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -96[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	imul	rax, rdx
	add	rax, rsi
	mov	DWORD PTR [rcx+rax*4], 1
.L14:
	add	DWORD PTR -96[rbp], 1
.L11:
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -96[rbp], eax
	jle	.L15
	add	DWORD PTR -100[rbp], 1
.L10:
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -100[rbp], eax
	jle	.L16
	mov	DWORD PTR -92[rbp], 2
	jmp	.L17
.L22:
	mov	DWORD PTR -88[rbp], 1
	jmp	.L18
.L21:
	mov	rdx, rbx
	shr	rdx, 2
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -88[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	imul	rax, rdx
	add	rax, rsi
	mov	eax, DWORD PTR [rcx+rax*4]
	cmp	eax, 1
	je	.L28
	mov	rdi, rbx
	shr	rdi, 2
	mov	eax, DWORD PTR -92[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -88[rbp]
	sub	eax, 1
	mov	rdx, QWORD PTR -64[rbp]
	movsx	rsi, eax
	movsx	rax, ecx
	imul	rax, rdi
	add	rax, rsi
	mov	r8d, DWORD PTR [rdx+rax*4]
	mov	rdi, rbx
	shr	rdi, 2
	mov	eax, DWORD PTR -92[rbp]
	lea	edx, -1[rax]
	mov	rsi, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -88[rbp]
	movsx	rcx, eax
	movsx	rax, edx
	imul	rax, rdi
	add	rax, rcx
	mov	eax, DWORD PTR [rsi+rax*4]
	mov	rsi, rbx
	shr	rsi, 2
	lea	edi, [r8+rax]
	mov	rcx, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -88[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	imul	rax, rsi
	add	rax, rdx
	mov	DWORD PTR [rcx+rax*4], edi
	add	DWORD PTR -88[rbp], 1
.L18:
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -88[rbp], eax
	jle	.L21
	jmp	.L20
.L28:
	nop
.L20:
	add	DWORD PTR -92[rbp], 1
.L17:
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -92[rbp], eax
	jle	.L22
	mov	DWORD PTR -84[rbp], 0
	jmp	.L23
.L24:
	mov	rcx, rbx
	shr	rcx, 2
	mov	edx, DWORD PTR -108[rbp]
	mov	rsi, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdi, eax
	movsx	rax, edx
	imul	rax, rcx
	add	rax, rdi
	mov	eax, DWORD PTR [rsi+rax*4]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	add	DWORD PTR -84[rbp], 1
.L23:
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -84[rbp], eax
	jle	.L24
	mov	rax, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rsp, QWORD PTR -168[rbp]
.L6:
	mov	eax, DWORD PTR -104[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -104[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L25
	mov	eax, 0
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
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
.LFE9705:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11462:
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
	jne	.L31
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L31
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
.L31:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11462:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z6Pascalii, @function
_GLOBAL__sub_I__Z6Pascalii:
.LFB11485:
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
.LFE11485:
	.size	_GLOBAL__sub_I__Z6Pascalii, .-_GLOBAL__sub_I__Z6Pascalii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z6Pascalii
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
