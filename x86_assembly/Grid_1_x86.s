	.file	"Grid_1.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB538:
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
.LFE538:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
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
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB1009:
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
.LFE1009:
	.size	_ZdlPvS_, .-_ZdlPvS_
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
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv, @function
_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv:
.LFB9163:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, 1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9163:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv, .-_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv
	.section	.rodata
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
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev:
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
	call	_ZNSaISt6vectorIcSaIcEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9709:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2Ev, @function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2Ev:
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
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9711:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2Ev, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC1Ev,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2Ev
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2Ev
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2Ev, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2Ev:
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
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9713:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2Ev, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2Ev
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC1Ev
	.set	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC1Ev,_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2Ev
	.globl	arr
	.bss
	.align 16
	.type	arr, @object
	.size	arr, 24
arr:
	.zero	24
	.globl	dp
	.align 32
	.type	dp, @object
	.size	dp, 8080200
dp:
	.zero	8080200
	.text
	.globl	_Z3solii
	.type	_Z3solii, @function
_Z3solii:
.LFB9715:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 1005
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
	cmp	rax, -1
	je	.L16
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 1005
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
	jmp	.L17
.L16:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -20[rbp], eax
	jge	.L18
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -24[rbp], eax
	jge	.L18
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm
	mov	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIcSaIcEEixEm
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	jne	.L19
.L18:
	mov	eax, 1
	jmp	.L20
.L19:
	mov	eax, 0
.L20:
	test	al, al
	je	.L21
	mov	eax, 0
	jmp	.L17
.L21:
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jne	.L22
	mov	eax, DWORD PTR m[rip]
	sub	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jne	.L22
	mov	eax, 1
	jmp	.L17
.L22:
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3solii
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, [rdx+rax]
	movabs	rdx, -8543223828751151131
	mov	rax, rcx
	imul	rdx
	lea	rax, [rdx+rcx]
	sar	rax, 29
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 1000000007
	mov	rax, rcx
	sub	rax, rdx
	mov	edx, DWORD PTR -24[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 1005
	add	rdx, rcx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, dp[rip]
	mov	QWORD PTR [rcx+rdx], rax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 1005
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9715:
	.size	_Z3solii, .-_Z3solii
	.globl	main
	.type	main, @function
main:
.LFB9716:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9716
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
.LEHB0:
	call	_Z5setupv
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, m[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
.LEHE0:
	lea	rax, -57[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	mov	eax, DWORD PTR m[rip]
	movsx	rcx, eax
	lea	rdx, -57[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB1:
	call	_ZNSt6vectorIcSaIcEEC1EmRKS0_
.LEHE1:
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, -48[rbp]
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
.LEHB2:
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEmRKS1_
.LEHE2:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEED1Ev
	lea	rax, -57[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	DWORD PTR -56[rbp], 0
	jmp	.L24
.L27:
	mov	DWORD PTR -52[rbp], 0
	jmp	.L25
.L26:
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm
	mov	rdx, rax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIcSaIcEEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB3:
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	add	DWORD PTR -52[rbp], 1
.L25:
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L26
	add	DWORD PTR -56[rbp], 1
.L24:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L27
	mov	edx, 8080200
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	esi, 0
	mov	edi, 0
	call	_Z3solii
	mov	rcx, rax
	movabs	rdx, -8543223828751151131
	mov	rax, rcx
	imul	rdx
	lea	rax, [rdx+rcx]
	sar	rax, 29
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 1000000007
	mov	rax, rcx
	sub	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L31
	jmp	.L34
.L33:
	endbr64
	mov	rbx, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEED1Ev
	jmp	.L30
.L32:
	endbr64
	mov	rbx, rax
.L30:
	lea	rax, -57[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE3:
.L34:
	call	__stack_chk_fail@PLT
.L31:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9716:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9716:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9716-.LLSDACSB9716
.LLSDACSB9716:
	.uleb128 .LEHB0-.LFB9716
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9716
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L32-.LFB9716
	.uleb128 0
	.uleb128 .LEHB2-.LFB9716
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L33-.LFB9716
	.uleb128 0
	.uleb128 .LEHB3-.LFB9716
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE9716:
	.text
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB10028:
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
	jnb	.L36
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L37
.L36:
	mov	rax, QWORD PTR -8[rbp]
.L37:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10028:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2Ev:
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
	call	_ZNSaISt6vectorIcSaIcEEEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10406:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2Ev
	.section	.text._ZNSaISt6vectorIcSaIcEEED2Ev,"axG",@progbits,_ZNSaISt6vectorIcSaIcEEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt6vectorIcSaIcEEED2Ev
	.type	_ZNSaISt6vectorIcSaIcEEED2Ev, @function
_ZNSaISt6vectorIcSaIcEEED2Ev:
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
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10409:
	.size	_ZNSaISt6vectorIcSaIcEEED2Ev, .-_ZNSaISt6vectorIcSaIcEEED2Ev
	.weak	_ZNSaISt6vectorIcSaIcEEED1Ev
	.set	_ZNSaISt6vectorIcSaIcEEED1Ev,_ZNSaISt6vectorIcSaIcEEED2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev, @function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev:
.LFB10412:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10412
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
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10412:
	.section	.gcc_except_table
.LLSDA10412:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10412-.LLSDACSB10412
.LLSDACSB10412:
.LLSDACSE10412:
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED1Ev,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm:
.LFB10414:
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
.LFE10414:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm
	.section	.text._ZNSt6vectorIcSaIcEEixEm,"axG",@progbits,_ZNSt6vectorIcSaIcEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEEixEm
	.type	_ZNSt6vectorIcSaIcEEixEm, @function
_ZNSt6vectorIcSaIcEEixEm:
.LFB10415:
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
	add	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10415:
	.size	_ZNSt6vectorIcSaIcEEixEm, .-_ZNSt6vectorIcSaIcEEixEm
	.section	.text._ZNSt6vectorIcSaIcEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEEC2EmRKS0_
	.type	_ZNSt6vectorIcSaIcEEC2EmRKS0_, @function
_ZNSt6vectorIcSaIcEEC2EmRKS0_:
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
	call	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
.LEHE4:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB5:
	call	_ZNSt6vectorIcSaIcEE21_M_default_initializeEm
.LEHE5:
	jmp	.L48
.L47:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L48:
	mov	rbx, QWORD PTR -8[rbp]
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
	.uleb128 .LEHB4-.LFB10417
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB10417
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L47-.LFB10417
	.uleb128 0
	.uleb128 .LEHB6-.LFB10417
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE10417:
	.section	.text._ZNSt6vectorIcSaIcEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIcSaIcEEC2EmRKS0_, .-_ZNSt6vectorIcSaIcEEC2EmRKS0_
	.weak	_ZNSt6vectorIcSaIcEEC1EmRKS0_
	.set	_ZNSt6vectorIcSaIcEEC1EmRKS0_,_ZNSt6vectorIcSaIcEEC2EmRKS0_
	.section	.text._ZNSt6vectorIcSaIcEED2Ev,"axG",@progbits,_ZNSt6vectorIcSaIcEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEED2Ev
	.type	_ZNSt6vectorIcSaIcEED2Ev, @function
_ZNSt6vectorIcSaIcEED2Ev:
.LFB10420:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10420
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
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10420:
	.section	.gcc_except_table
.LLSDA10420:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10420-.LLSDACSB10420
.LLSDACSB10420:
.LLSDACSE10420:
	.section	.text._ZNSt6vectorIcSaIcEED2Ev,"axG",@progbits,_ZNSt6vectorIcSaIcEED5Ev,comdat
	.size	_ZNSt6vectorIcSaIcEED2Ev, .-_ZNSt6vectorIcSaIcEED2Ev
	.weak	_ZNSt6vectorIcSaIcEED1Ev
	.set	_ZNSt6vectorIcSaIcEED1Ev,_ZNSt6vectorIcSaIcEED2Ev
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEmRKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEmRKS1_
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEmRKS1_, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEmRKS1_:
.LFB10422:
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	cmp	QWORD PTR -32[rbp], rax
	seta	al
	test	al, al
	je	.L51
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, rdx
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE3endEv
	mov	rsi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rdx
	mov	rdx, rbx
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	jmp	.L53
.L51:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	cmp	QWORD PTR -32[rbp], rax
	setb	al
	test	al, al
	je	.L53
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_
.L53:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10422:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEmRKS1_, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEmRKS1_
	.section	.text._ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_:
.LFB10488:
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
.LFE10488:
	.size	_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_:
.LFB10751:
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
	call	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L58
	call	__stack_chk_fail@PLT
.L58:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10751:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_
	.section	.text._ZStneRKSaIcES1_,"axG",@progbits,_ZStneRKSaIcES1_,comdat
	.weak	_ZStneRKSaIcES1_
	.type	_ZStneRKSaIcES1_, @function
_ZStneRKSaIcES1_:
.LFB10758:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10758:
	.size	_ZStneRKSaIcES1_, .-_ZStneRKSaIcES1_
	.section	.text._ZSt15__alloc_on_moveISaIcEEvRT_S2_,"axG",@progbits,_ZSt15__alloc_on_moveISaIcEEvRT_S2_,comdat
	.weak	_ZSt15__alloc_on_moveISaIcEEvRT_S2_
	.type	_ZSt15__alloc_on_moveISaIcEEvRT_S2_, @function
_ZSt15__alloc_on_moveISaIcEEvRT_S2_:
.LFB10760:
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
	call	_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10760:
	.size	_ZSt15__alloc_on_moveISaIcEEvRT_S2_, .-_ZSt15__alloc_on_moveISaIcEEvRT_S2_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv, @function
_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv:
.LFB10764:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10764:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv, .-_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv
	.section	.text._ZNSaISt6vectorIcSaIcEEEC2Ev,"axG",@progbits,_ZNSaISt6vectorIcSaIcEEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt6vectorIcSaIcEEEC2Ev
	.type	_ZNSaISt6vectorIcSaIcEEEC2Ev, @function
_ZNSaISt6vectorIcSaIcEEEC2Ev:
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
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10817:
	.size	_ZNSaISt6vectorIcSaIcEEEC2Ev, .-_ZNSaISt6vectorIcSaIcEEEC2Ev
	.weak	_ZNSaISt6vectorIcSaIcEEEC1Ev
	.set	_ZNSaISt6vectorIcSaIcEEEC1Ev,_ZNSaISt6vectorIcSaIcEEEC2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev:
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
.LFE10820:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev:
.LFB10823:
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
.LFE10823:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m, @function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m:
.LFB10825:
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
	call	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m
.L69:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10825:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m
	.section	.rodata
	.align 8
.LC4:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_:
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIcEC1ERKS_@PLT
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_
	cmp	QWORD PTR -40[rbp], rax
	seta	bl
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	test	bl, bl
	je	.L71
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L71:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L73
	call	__stack_chk_fail@PLT
.L73:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10826:
	.size	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev:
.LFB10829:
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
.LFE10829:
	.size	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_:
.LFB10831:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10831
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
	call	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB7:
	call	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm
.LEHE7:
	jmp	.L78
.L77:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L78:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10831:
	.section	.gcc_except_table
.LLSDA10831:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10831-.LLSDACSB10831
.LLSDACSB10831:
	.uleb128 .LEHB7-.LFB10831
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L77-.LFB10831
	.uleb128 0
	.uleb128 .LEHB8-.LFB10831
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10831:
	.section	.text._ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_, .-_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIcSaIcEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIcSaIcEEC1EmRKS0_,_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEED2Ev
	.type	_ZNSt12_Vector_baseIcSaIcEED2Ev, @function
_ZNSt12_Vector_baseIcSaIcEED2Ev:
.LFB10834:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10834
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
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10834:
	.section	.gcc_except_table
.LLSDA10834:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10834-.LLSDACSB10834
.LLSDACSB10834:
.LLSDACSE10834:
	.section	.text._ZNSt12_Vector_baseIcSaIcEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIcSaIcEED2Ev, .-_ZNSt12_Vector_baseIcSaIcEED2Ev
	.weak	_ZNSt12_Vector_baseIcSaIcEED1Ev
	.set	_ZNSt12_Vector_baseIcSaIcEED1Ev,_ZNSt12_Vector_baseIcSaIcEED2Ev
	.section	.text._ZNSt6vectorIcSaIcEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIcSaIcEE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEE21_M_default_initializeEm
	.type	_ZNSt6vectorIcSaIcEE21_M_default_initializeEm, @function
_ZNSt6vectorIcSaIcEE21_M_default_initializeEm:
.LFB10836:
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
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10836:
	.size	_ZNSt6vectorIcSaIcEE21_M_default_initializeEm, .-_ZNSt6vectorIcSaIcEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB10837:
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
.LFE10837:
	.size	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPccEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPccEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPccEvT_S1_RSaIT0_E:
.LFB10838:
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
	call	_ZSt8_DestroyIPcEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10838:
	.size	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	.section	.text._ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv, @function
_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv:
.LFB10839:
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
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10839:
	.size	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv, .-_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	.section	.rodata
.LC5:
	.string	"vector::_M_fill_insert"
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:
.LFB10840:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10840
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 144
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -136[rbp], rdi
	mov	QWORD PTR -144[rbp], rsi
	mov	QWORD PTR -152[rbp], rdx
	mov	QWORD PTR -160[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	cmp	QWORD PTR -152[rbp], 0
	je	.L100
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	cmp	QWORD PTR -152[rbp], rax
	ja	.L88
	mov	rdx, QWORD PTR -160[rbp]
	mov	rcx, QWORD PTR -136[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB9:
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC1IJRKS1_EEEPS3_DpOT_
.LEHE9:
	lea	rax, -64[rbp]
	mov	rdi, rax
.LEHB10:
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_valEv
	mov	QWORD PTR -88[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE3endEv
	mov	QWORD PTR -128[rbp], rax
	lea	rdx, -144[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	mov	QWORD PTR -80[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	cmp	rax, QWORD PTR -152[rbp]
	jbe	.L89
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	r8, QWORD PTR 8[rax]
	mov	rcx, QWORD PTR -152[rbp]
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 3
	neg	rax
	add	rax, r8
	mov	rcx, rdi
	mov	rdi, rax
	call	_ZSt22__uninitialized_move_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -152[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rdx, QWORD PTR -152[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rbx, [rdx+rax]
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt13move_backwardIPSt6vectorIcSaIcEES3_ET0_T_S5_S4_
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -152[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rbx, [rcx+rax]
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt4fillIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_
	jmp	.L90
.L89:
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR -152[rbp]
	sub	rax, QWORD PTR -80[rbp]
	mov	rsi, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	mov	rdx, QWORD PTR -136[rbp]
	mov	QWORD PTR 8[rdx], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	r12, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rbx, QWORD PTR 8[rax]
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR -72[rbp]
	mov	rcx, r12
	mov	rdx, rbx
	mov	rdi, rax
	call	_ZSt22__uninitialized_move_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	QWORD PTR 8[rax], rdx
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt4fillIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_
.LEHE10:
.L90:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD1Ev
	jmp	.L100
.L88:
	mov	rcx, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR -136[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB11:
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc
	mov	QWORD PTR -112[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE5beginEv
	mov	QWORD PTR -128[rbp], rax
	lea	rdx, -128[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	mov	QWORD PTR -104[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm
.LEHE11:
	mov	QWORD PTR -96[rbp], rax
	mov	rax, QWORD PTR -96[rbp]
	mov	QWORD PTR -120[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -96[rbp]
	lea	rdi, [rdx+rax]
	mov	rdx, QWORD PTR -160[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	rsi, rax
.LEHB12:
	call	_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	mov	QWORD PTR -120[rbp], 0
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -96[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_
	mov	QWORD PTR -120[rbp], rax
	mov	rdx, QWORD PTR -152[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	add	QWORD PTR -120[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	r12, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rbx, QWORD PTR 8[rax]
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -120[rbp]
	mov	rcx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_
.LEHE12:
	mov	QWORD PTR -120[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB13:
	call	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -136[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	mov	rcx, rdx
	sar	rcx, 3
	movabs	rdx, -6148914691236517205
	imul	rdx, rcx
	mov	rsi, rdx
	mov	rdx, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR -96[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR -120[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rdx, QWORD PTR -112[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -96[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L100
.L97:
	endbr64
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD1Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE13:
.L98:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	cmp	QWORD PTR -120[rbp], 0
	jne	.L93
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rsi, rax
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -152[rbp]
	add	rdx, rax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -96[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -96[rbp]
	add	rax, rdx
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
.LEHB14:
	call	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	jmp	.L94
.L93:
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rcx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -96[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
.L94:
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR -112[rbp]
	mov	rcx, QWORD PTR -96[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m
	call	__cxa_rethrow@PLT
.LEHE14:
.L99:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L100:
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L96
	call	__stack_chk_fail@PLT
.L96:
	add	rsp, 144
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10840:
	.section	.gcc_except_table
	.align 4
.LLSDA10840:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10840-.LLSDATTD10840
.LLSDATTD10840:
	.byte	0x1
	.uleb128 .LLSDACSE10840-.LLSDACSB10840
.LLSDACSB10840:
	.uleb128 .LEHB9-.LFB10840
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB10840
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L97-.LFB10840
	.uleb128 0
	.uleb128 .LEHB11-.LFB10840
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB10840
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L98-.LFB10840
	.uleb128 0x1
	.uleb128 .LEHB13-.LFB10840
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB10840
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L99-.LFB10840
	.uleb128 0
	.uleb128 .LEHB15-.LFB10840
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE10840:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10840:
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,comdat
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE3endEv
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE3endEv, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE3endEv:
.LFB10841:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC1ERKS4_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10841:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE3endEv, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE3endEv
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_:
.LFB10842:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10842
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -32[rbp]
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L106
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
.L106:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10842:
	.section	.gcc_except_table
.LLSDA10842:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10842-.LLSDACSB10842
.LLSDACSB10842:
.LLSDACSE10842:
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE15_M_erase_at_endEPS1_
	.section	.text._ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_:
.LFB11004:
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
	call	_ZNSaIcEC1ERKS_@PLT
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11004:
	.size	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.type	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, @function
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm:
.LFB11010:
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
.LFE11010:
	.size	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, .-_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.section	.text._ZNSt16allocator_traitsISaIcEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIcEE8allocateERS0_m:
.LFB11011:
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
.LFE11011:
	.size	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.section	.text._ZSt15__alloc_on_copyISaIcEEvRT_RKS1_,"axG",@progbits,_ZSt15__alloc_on_copyISaIcEEvRT_RKS1_,comdat
	.weak	_ZSt15__alloc_on_copyISaIcEEvRT_RKS1_
	.type	_ZSt15__alloc_on_copyISaIcEEvRT_RKS1_, @function
_ZSt15__alloc_on_copyISaIcEEvRT_RKS1_:
.LFB11012:
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
.LFE11012:
	.size	_ZSt15__alloc_on_copyISaIcEEvRT_RKS1_, .-_ZSt15__alloc_on_copyISaIcEEvRT_RKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev:
.LFB11040:
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
.LFE11040:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m, @function
_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m:
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
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11042:
	.size	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m, .-_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m
	.section	.text._ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_:
.LFB11043:
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
	je	.L117
	call	__stack_chk_fail@PLT
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11043:
	.size	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_:
.LFB11045:
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
	call	_ZNSaIcEC2ERKS_@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11045:
	.size	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm:
.LFB11047:
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
	call	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11047:
	.size	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm
	.type	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm, @function
_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm:
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
	cmp	QWORD PTR -16[rbp], 0
	je	.L122
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
.L122:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11048:
	.size	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm, .-_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm
	.section	.text._ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E:
.LFB11049:
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
	call	_ZSt25__uninitialized_default_nIPcmET_S1_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11049:
	.size	_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPcEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPcEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPcEvT_S1_
	.type	_ZSt8_DestroyIPcEvT_S1_, @function
_ZSt8_DestroyIPcEvT_S1_:
.LFB11050:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11050:
	.size	_ZSt8_DestroyIPcEvT_S1_, .-_ZSt8_DestroyIPcEvT_S1_
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC5IJRKS1_EEEPS3_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_:
.LFB11053:
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11053:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC1IJRKS1_EEEPS3_DpOT_
	.set	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC1IJRKS1_EEEPS3_DpOT_,_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD2Ev,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD2Ev
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD2Ev, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD2Ev:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE7destroyIS2_EEvRS3_PT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11056:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD2Ev, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD2Ev
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD1Ev
	.set	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD1Ev,_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_valueD2Ev
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_valEv,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_valEv,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_valEv
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_valEv, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_valEv:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11058:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_valEv, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_valEv
	.section	.text._ZN9__gnu_cxxmiIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.weak	_ZN9__gnu_cxxmiIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.type	_ZN9__gnu_cxxmiIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, @function
_ZN9__gnu_cxxmiIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB11059:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11059:
	.size	_ZN9__gnu_cxxmiIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .-_ZN9__gnu_cxxmiIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB11060:
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
.LFE11060:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt22__uninitialized_move_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt22__uninitialized_move_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.weak	_ZSt22__uninitialized_move_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt22__uninitialized_move_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_, @function
_ZSt22__uninitialized_move_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB11061:
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
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt18make_move_iteratorIPSt6vectorIcSaIcEEESt13move_iteratorIT_ES5_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt18make_move_iteratorIPSt6vectorIcSaIcEEESt13move_iteratorIT_ES5_
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rdx
	mov	rdx, rax
	mov	rsi, rbx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIcSaIcEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11061:
	.size	_ZSt22__uninitialized_move_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt22__uninitialized_move_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv:
.LFB11062:
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
.LFE11062:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEE4baseEv
	.section	.text._ZSt13move_backwardIPSt6vectorIcSaIcEES3_ET0_T_S5_S4_,"axG",@progbits,_ZSt13move_backwardIPSt6vectorIcSaIcEES3_ET0_T_S5_S4_,comdat
	.weak	_ZSt13move_backwardIPSt6vectorIcSaIcEES3_ET0_T_S5_S4_
	.type	_ZSt13move_backwardIPSt6vectorIcSaIcEES3_ET0_T_S5_S4_, @function
_ZSt13move_backwardIPSt6vectorIcSaIcEES3_ET0_T_S5_S4_:
.LFB11063:
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
	call	_ZSt12__miter_baseIPSt6vectorIcSaIcEEET_S4_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIPSt6vectorIcSaIcEEET_S4_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt22__copy_move_backward_aILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11063:
	.size	_ZSt13move_backwardIPSt6vectorIcSaIcEES3_ET0_T_S5_S4_, .-_ZSt13move_backwardIPSt6vectorIcSaIcEES3_ET0_T_S5_S4_
	.section	.text._ZSt4fillIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_,"axG",@progbits,_ZSt4fillIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_,comdat
	.weak	_ZSt4fillIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_
	.type	_ZSt4fillIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_, @function
_ZSt4fillIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_:
.LFB11064:
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
	call	_ZSt8__fill_aIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11064:
	.size	_ZSt4fillIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_, .-_ZSt4fillIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_
	.section	.text._ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, @function
_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E:
.LFB11065:
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
	call	_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11065:
	.size	_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.section	.text._ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc:
.LFB11066:
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
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -64[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L144
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L144:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	mov	QWORD PTR -40[rbp], rax
	lea	rdx, -64[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jb	.L145
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jbe	.L146
.L145:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv
	jmp	.L147
.L146:
	mov	rax, QWORD PTR -32[rbp]
.L147:
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L149
	call	__stack_chk_fail@PLT
.L149:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11066:
	.size	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE5beginEv
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE5beginEv, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE5beginEv:
.LFB11067:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC1ERKS4_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L152
	call	__stack_chk_fail@PLT
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11067:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE5beginEv, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE5beginEv
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm:
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
	cmp	QWORD PTR -16[rbp], 0
	je	.L154
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m
	jmp	.L156
.L154:
	mov	eax, 0
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11068:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB11069:
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
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIcSaIcEESt13move_iteratorIPS2_EET0_PT_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIcSaIcEESt13move_iteratorIPS2_EET0_PT_
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rdx
	mov	rdx, rax
	mov	rsi, rbx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIcSaIcEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11069:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIcSaIcEES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	.type	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E, @function
_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11070:
	.size	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E, .-_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC2ERKS4_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC2ERKS4_, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC2ERKS4_:
.LFB11072:
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
.LFE11072:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC2ERKS4_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC2ERKS4_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC1ERKS4_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC1ERKS4_,_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIcSaIcEES1_IS3_SaIS3_EEEC2ERKS4_
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.type	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, @function
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm:
.LFB11178:
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
.LFE11178:
	.size	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, .-_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv:
.LFB11180:
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
.LFE11180:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv:
.LFB11179:
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
	je	.L166
	call	_ZSt17__throw_bad_allocv@PLT
.L166:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11179:
	.size	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m:
.LFB11210:
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
.LFE11210:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m
	.section	.text._ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_:
.LFB11211:
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
.LFE11211:
	.size	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev:
.LFB11213:
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
.LFE11213:
	.size	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm:
.LFB11215:
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
	je	.L174
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	jmp	.L176
.L174:
	mov	eax, 0
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11215:
	.size	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm, .-_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm
	.section	.text._ZSt25__uninitialized_default_nIPcmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPcmET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPcmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPcmET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPcmET_S1_T0_:
.LFB11216:
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
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11216:
	.size	_ZSt25__uninitialized_default_nIPcmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPcmET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_:
.LFB11217:
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
.LFE11217:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv:
.LFB11218:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11218:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE16_Temporary_value6_M_ptrEv
	.section	.text._ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE
	.type	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE, @function
_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE:
.LFB11219:
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
.LFE11219:
	.size	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE, .-_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_:
.LFB11220:
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
	call	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11220:
	.size	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE7destroyIS2_EEvRS3_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE7destroyIS2_EEvRS3_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE7destroyIS2_EEvRS3_PT_
	.type	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE7destroyIS2_EEvRS3_PT_, @function
_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE7destroyIS2_EEvRS3_PT_:
.LFB11221:
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
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE7destroyIS3_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11221:
	.size	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE7destroyIS2_EEvRS3_PT_, .-_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE7destroyIS2_EEvRS3_PT_
	.section	.text._ZSt18make_move_iteratorIPSt6vectorIcSaIcEEESt13move_iteratorIT_ES5_,"axG",@progbits,_ZSt18make_move_iteratorIPSt6vectorIcSaIcEEESt13move_iteratorIT_ES5_,comdat
	.weak	_ZSt18make_move_iteratorIPSt6vectorIcSaIcEEESt13move_iteratorIT_ES5_
	.type	_ZSt18make_move_iteratorIPSt6vectorIcSaIcEEESt13move_iteratorIT_ES5_, @function
_ZSt18make_move_iteratorIPSt6vectorIcSaIcEEESt13move_iteratorIT_ES5_:
.LFB11222:
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
	lea	rax, -24[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRPSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS6_
	mov	rdx, QWORD PTR [rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC1ES3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L188
	call	__stack_chk_fail@PLT
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11222:
	.size	_ZSt18make_move_iteratorIPSt6vectorIcSaIcEEESt13move_iteratorIT_ES5_, .-_ZSt18make_move_iteratorIPSt6vectorIcSaIcEEESt13move_iteratorIT_ES5_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIcSaIcEEES4_S3_ET0_T_S7_S6_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIcSaIcEEES4_S3_ET0_T_S7_S6_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIcSaIcEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIcSaIcEEES4_S3_ET0_T_S7_S6_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIcSaIcEEES4_S3_ET0_T_S7_S6_RSaIT1_E:
.LFB11223:
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
	call	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIcSaIcEEES4_ET0_T_S7_S6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11223:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIcSaIcEEES4_S3_ET0_T_S7_S6_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIcSaIcEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	.section	.text._ZSt12__miter_baseIPSt6vectorIcSaIcEEET_S4_,"axG",@progbits,_ZSt12__miter_baseIPSt6vectorIcSaIcEEET_S4_,comdat
	.weak	_ZSt12__miter_baseIPSt6vectorIcSaIcEEET_S4_
	.type	_ZSt12__miter_baseIPSt6vectorIcSaIcEEET_S4_, @function
_ZSt12__miter_baseIPSt6vectorIcSaIcEEET_S4_:
.LFB11224:
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
.LFE11224:
	.size	_ZSt12__miter_baseIPSt6vectorIcSaIcEEET_S4_, .-_ZSt12__miter_baseIPSt6vectorIcSaIcEEET_S4_
	.section	.text._ZSt22__copy_move_backward_aILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_,comdat
	.weak	_ZSt22__copy_move_backward_aILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_
	.type	_ZSt22__copy_move_backward_aILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_, @function
_ZSt22__copy_move_backward_aILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_:
.LFB11225:
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
	call	_ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIPSt6vectorIcSaIcEEET_RKS4_S4_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11225:
	.size	_ZSt22__copy_move_backward_aILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_, .-_ZSt22__copy_move_backward_aILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_
	.section	.text._ZSt8__fill_aIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_,"axG",@progbits,_ZSt8__fill_aIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_,comdat
	.weak	_ZSt8__fill_aIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_
	.type	_ZSt8__fill_aIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_, @function
_ZSt8__fill_aIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_:
.LFB11227:
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
	call	_ZSt9__fill_a1IPSt6vectorIcSaIcEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11227:
	.size	_ZSt8__fill_aIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_, .-_ZSt8__fill_aIPSt6vectorIcSaIcEES2_EvT_S4_RKT0_
	.section	.text._ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_, @function
_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_:
.LFB11228:
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
	call	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11228:
	.size	_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_
	.section	.text._ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv
	.type	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv, @function
_ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv:
.LFB11229:
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
	call	_ZNKSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11229:
	.size	_ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv, .-_ZNKSt6vectorIS_IcSaIcEESaIS1_EE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m, @function
_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m:
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
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11230:
	.size	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m, .-_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m
	.section	.text._ZSt32__make_move_if_noexcept_iteratorISt6vectorIcSaIcEESt13move_iteratorIPS2_EET0_PT_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorISt6vectorIcSaIcEESt13move_iteratorIPS2_EET0_PT_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIcSaIcEESt13move_iteratorIPS2_EET0_PT_
	.type	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIcSaIcEESt13move_iteratorIPS2_EET0_PT_, @function
_ZSt32__make_move_if_noexcept_iteratorISt6vectorIcSaIcEESt13move_iteratorIPS2_EET0_PT_:
.LFB11231:
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
	call	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC1ES3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L204
	call	__stack_chk_fail@PLT
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11231:
	.size	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIcSaIcEESt13move_iteratorIPS2_EET0_PT_, .-_ZSt32__make_move_if_noexcept_iteratorISt6vectorIcSaIcEESt13move_iteratorIPS2_EET0_PT_
	.section	.text._ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_,comdat
	.weak	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	.type	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_, @function
_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_:
.LFB11232:
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
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11232:
	.size	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_, .-_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	.section	.text._ZSt11__addressofIcEPT_RS0_,"axG",@progbits,_ZSt11__addressofIcEPT_RS0_,comdat
	.weak	_ZSt11__addressofIcEPT_RS0_
	.type	_ZSt11__addressofIcEPT_RS0_, @function
_ZSt11__addressofIcEPT_RS0_:
.LFB11237:
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
.LFE11237:
	.size	_ZSt11__addressofIcEPT_RS0_, .-_ZSt11__addressofIcEPT_RS0_
	.section	.text._ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.weak	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_, @function
_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB11304:
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
.LFE11304:
	.size	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11316:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_:
.LFB11317:
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
	je	.L213
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofIcEPT_RS0_
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt10_ConstructIcJEEvPT_DpOT0_
	add	QWORD PTR -24[rbp], 1
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, -1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt6fill_nIPcmcET_S1_T0_RKT1_
	mov	QWORD PTR -24[rbp], rax
.L213:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11317:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_:
.LFB11318:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11318
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
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	r13, rax
	mov	rbx, QWORD PTR -48[rbp]
	mov	rsi, rbx
	mov	edi, 24
	call	_ZnwmPv
	mov	r12, rax
	mov	rsi, r13
	mov	rdi, r12
.LEHB16:
	call	_ZNSt6vectorIcSaIcEEC1ERKS1_
.LEHE16:
	jmp	.L218
.L217:
	endbr64
	mov	r13, rax
	mov	rsi, rbx
	mov	rdi, r12
	call	_ZdlPvS_
	mov	rax, r13
	mov	rdi, rax
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L218:
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11318:
	.section	.gcc_except_table
.LLSDA11318:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11318-.LLSDACSB11318
.LLSDACSB11318:
	.uleb128 .LEHB16-.LFB11318
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L217-.LFB11318
	.uleb128 0
	.uleb128 .LEHB17-.LFB11318
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE11318:
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE7destroyIS3_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE7destroyIS3_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE7destroyIS3_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE7destroyIS3_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE7destroyIS3_EEvPT_:
.LFB11319:
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
	call	_ZNSt6vectorIcSaIcEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11319:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE7destroyIS3_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE7destroyIS3_EEvPT_
	.section	.text._ZSt4moveIRPSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRPSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRPSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRPSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRPSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB11320:
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
.LFE11320:
	.size	_ZSt4moveIRPSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRPSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC2ES3_,"axG",@progbits,_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC5ES3_,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC2ES3_
	.type	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC2ES3_, @function
_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC2ES3_:
.LFB11322:
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
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRPSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS6_
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11322:
	.size	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC2ES3_, .-_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC2ES3_
	.weak	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC1ES3_
	.set	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC1ES3_,_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEC2ES3_
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIcSaIcEEES4_ET0_T_S7_S6_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIcSaIcEEES4_ET0_T_S7_S6_,comdat
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIcSaIcEEES4_ET0_T_S7_S6_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIcSaIcEEES4_ET0_T_S7_S6_, @function
_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIcSaIcEEES4_ET0_T_S7_S6_:
.LFB11324:
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
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11324:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIcSaIcEEES4_ET0_T_S7_S6_, .-_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIcSaIcEEES4_ET0_T_S7_S6_
	.section	.text._ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_,"axG",@progbits,_ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_,comdat
	.weak	_ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_
	.type	_ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_, @function
_ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_:
.LFB11326:
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
.LFE11326:
	.size	_ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_, .-_ZSt12__niter_baseIPSt6vectorIcSaIcEEET_S4_
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_
	.type	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_, @function
_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_:
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
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11327:
	.size	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_, .-_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_
	.section	.text._ZSt12__niter_wrapIPSt6vectorIcSaIcEEET_RKS4_S4_,"axG",@progbits,_ZSt12__niter_wrapIPSt6vectorIcSaIcEEET_RKS4_S4_,comdat
	.weak	_ZSt12__niter_wrapIPSt6vectorIcSaIcEEET_RKS4_S4_
	.type	_ZSt12__niter_wrapIPSt6vectorIcSaIcEEET_RKS4_S4_, @function
_ZSt12__niter_wrapIPSt6vectorIcSaIcEEET_RKS4_S4_:
.LFB11328:
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
.LFE11328:
	.size	_ZSt12__niter_wrapIPSt6vectorIcSaIcEEET_RKS4_S4_, .-_ZSt12__niter_wrapIPSt6vectorIcSaIcEEET_RKS4_S4_
	.section	.text._ZSt9__fill_a1IPSt6vectorIcSaIcEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_,"axG",@progbits,_ZSt9__fill_a1IPSt6vectorIcSaIcEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_,comdat
	.weak	_ZSt9__fill_a1IPSt6vectorIcSaIcEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_
	.type	_ZSt9__fill_a1IPSt6vectorIcSaIcEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_, @function
_ZSt9__fill_a1IPSt6vectorIcSaIcEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_:
.LFB11329:
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
	jmp	.L232
.L233:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEEaSERKS1_
	add	QWORD PTR -8[rbp], 24
.L232:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L233
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11329:
	.size	_ZSt9__fill_a1IPSt6vectorIcSaIcEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_, .-_ZSt9__fill_a1IPSt6vectorIcSaIcEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_, @function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_:
.LFB11330:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11330
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
	jmp	.L235
.L236:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
.LEHB18:
	call	_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_
.LEHE18:
	sub	QWORD PTR -48[rbp], 1
	add	QWORD PTR -24[rbp], 24
.L235:
	cmp	QWORD PTR -48[rbp], 0
	jne	.L236
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L242
.L240:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB19:
	call	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	call	__cxa_rethrow@PLT
.LEHE19:
.L241:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB20:
	call	_Unwind_Resume@PLT
.LEHE20:
.L242:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11330:
	.section	.gcc_except_table
	.align 4
.LLSDA11330:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11330-.LLSDATTD11330
.LLSDATTD11330:
	.byte	0x1
	.uleb128 .LLSDACSE11330-.LLSDACSB11330
.LLSDACSB11330:
	.uleb128 .LEHB18-.LFB11330
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L240-.LFB11330
	.uleb128 0x1
	.uleb128 .LEHB19-.LFB11330
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L241-.LFB11330
	.uleb128 0
	.uleb128 .LEHB20-.LFB11330
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE11330:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11330:
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_,comdat
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_:
.LFB11331:
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
	call	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L245
	call	__stack_chk_fail@PLT
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11331:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNKSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB11332:
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
.LFE11332:
	.size	_ZNKSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv:
.LFB11334:
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
.LFE11334:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv:
.LFB11333:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L251
	movabs	rax, 768614336404564650
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L252
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L252:
	call	_ZSt17__throw_bad_allocv@PLT
.L251:
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
.LFE11333:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_:
.LFB11335:
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
	jmp	.L255
.L256:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	mov	rdi, rax
	call	_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_
	add	QWORD PTR -8[rbp], 24
.L255:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L256
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11335:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_
	.section	.text._ZSt10_ConstructIcJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIcJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIcJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIcJEEvPT_DpOT0_, @function
_ZSt10_ConstructIcJEEvPT_DpOT0_:
.LFB11440:
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
	mov	edi, 1
	call	_ZnwmPv
	mov	BYTE PTR [rax], 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11440:
	.size	_ZSt10_ConstructIcJEEvPT_DpOT0_, .-_ZSt10_ConstructIcJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPcmcET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPcmcET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPcmcET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPcmcET_S1_T0_RKT1_, @function
_ZSt6fill_nIPcmcET_S1_T0_RKT1_:
.LFB11441:
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
	call	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt17__size_to_integerm
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11441:
	.size	_ZSt6fill_nIPcmcET_S1_T0_RKT1_, .-_ZSt6fill_nIPcmcET_S1_T0_RKT1_
	.section	.text._ZNSt6vectorIcSaIcEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEEC2ERKS1_
	.type	_ZNSt6vectorIcSaIcEEC2ERKS1_, @function
_ZNSt6vectorIcSaIcEEC2ERKS1_:
.LFB11443:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11443
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
	call	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	lea	rax, -41[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE4sizeEv
	mov	rcx, rax
	lea	rax, -41[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
.LEHB21:
	call	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
.LEHE21:
	lea	rax, -41[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	r13, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE3endEv
	mov	r12, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE5beginEv
	mov	rcx, r13
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, rax
.LEHB22:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E
.LEHE22:
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L263
	jmp	.L266
.L264:
	endbr64
	mov	rbx, rax
	lea	rax, -41[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB23:
	call	_Unwind_Resume@PLT
.L265:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEED2Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE23:
.L266:
	call	__stack_chk_fail@PLT
.L263:
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11443:
	.section	.gcc_except_table
.LLSDA11443:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11443-.LLSDACSB11443
.LLSDACSB11443:
	.uleb128 .LEHB21-.LFB11443
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L264-.LFB11443
	.uleb128 0
	.uleb128 .LEHB22-.LFB11443
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L265-.LFB11443
	.uleb128 0
	.uleb128 .LEHB23-.LFB11443
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE11443:
	.section	.text._ZNSt6vectorIcSaIcEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIcSaIcEEC2ERKS1_, .-_ZNSt6vectorIcSaIcEEC2ERKS1_
	.weak	_ZNSt6vectorIcSaIcEEC1ERKS1_
	.set	_ZNSt6vectorIcSaIcEEC1ERKS1_,_ZNSt6vectorIcSaIcEEC2ERKS1_
	.section	.text._ZNSt13move_iteratorIPSt6vectorIcSaIcEEEppEv,"axG",@progbits,_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEppEv,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEppEv
	.type	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEppEv, @function
_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEppEv:
.LFB11446:
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
	lea	rdx, 24[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11446:
	.size	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEppEv, .-_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEppEv
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_:
.LFB11445:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11445
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
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L270
.L271:
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEEdeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt10_ConstructISt6vectorIcSaIcEEJS2_EEvPT_DpOT0_
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZNSt13move_iteratorIPSt6vectorIcSaIcEEEppEv
	add	QWORD PTR -24[rbp], 24
.L270:
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB24:
	call	_ZStneIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_
.LEHE24:
	test	al, al
	jne	.L271
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L277
.L275:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB25:
	call	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	call	__cxa_rethrow@PLT
.LEHE25:
.L276:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L277:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11445:
	.section	.gcc_except_table
	.align 4
.LLSDA11445:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11445-.LLSDATTD11445
.LLSDATTD11445:
	.byte	0x1
	.uleb128 .LLSDACSE11445-.LLSDACSB11445
.LLSDACSB11445:
	.uleb128 .LEHB24-.LFB11445
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L275-.LFB11445
	.uleb128 0x1
	.uleb128 .LEHB25-.LFB11445
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L276-.LFB11445
	.uleb128 0
	.uleb128 .LEHB26-.LFB11445
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE11445:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11445:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIcSaIcEEES6_EET0_T_S9_S8_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_
	.type	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_, @function
_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_:
.LFB11447:
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
	call	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIcSaIcEES6_EET0_T_S8_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11447:
	.size	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_, .-_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIcSaIcEES3_ET1_T0_S5_S4_
	.section	.text._ZNSt6vectorIcSaIcEEaSERKS1_,"axG",@progbits,_ZNSt6vectorIcSaIcEEaSERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEEaSERKS1_
	.type	_ZNSt6vectorIcSaIcEEaSERKS1_, @function
_ZNSt6vectorIcSaIcEEaSERKS1_:
.LFB11448:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 32
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR -64[rbp]
	cmp	rax, QWORD PTR -56[rbp]
	je	.L281
	call	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv
	test	al, al
	je	.L282
	call	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv
	xor	eax, 1
	test	al, al
	je	.L283
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZStneRKSaIcES1_
	test	al, al
	je	.L283
	mov	eax, 1
	jmp	.L284
.L283:
	mov	eax, 0
.L284:
	test	al, al
	je	.L285
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEE5clearEv
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	mov	rsi, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], 0
.L285:
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt15__alloc_on_copyISaIcEEvRT_RKS1_
.L282:
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE4sizeEv
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE8capacityEv
	cmp	QWORD PTR -48[rbp], rax
	seta	al
	test	al, al
	je	.L286
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE3endEv
	mov	rbx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE5beginEv
	mov	rdx, rax
	mov	rsi, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	mov	rsi, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L287
.L286:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE4sizeEv
	cmp	QWORD PTR -48[rbp], rax
	setbe	al
	test	al, al
	je	.L288
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	r12, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEE3endEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEE5beginEv
	mov	r14, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE3endEv
	mov	r13, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE5beginEv
	mov	rdx, r14
	mov	rsi, r13
	mov	rdi, rax
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RSaIT0_E
	jmp	.L287
.L288:
	mov	rax, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	r12, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE4sizeEv
	lea	rcx, [r12+rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt4copyIPcS0_ET0_T_S2_S1_
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	r13, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	r12, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rbx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	r14, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIcSaIcEE4sizeEv
	add	rax, r14
	mov	rcx, r13
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt22__uninitialized_copy_aIPcS0_cET0_T_S2_S1_RSaIT1_E
.L287:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], rdx
.L281:
	mov	rax, QWORD PTR -56[rbp]
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11448:
	.size	_ZNSt6vectorIcSaIcEEaSERKS1_, .-_ZNSt6vectorIcSaIcEEaSERKS1_
	.section	.text._ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_,"axG",@progbits,_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_,comdat
	.weak	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	.type	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_, @function
_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_:
.LFB11449:
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
.LFE11449:
	.size	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_, .-_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	.section	.text._ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_, @function
_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_:
.LFB11450:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11450
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
	call	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	r13, rax
	mov	rbx, QWORD PTR -40[rbp]
	mov	rsi, rbx
	mov	edi, 24
	call	_ZnwmPv
	mov	r12, rax
	mov	rsi, r13
	mov	rdi, r12
.LEHB27:
	call	_ZNSt6vectorIcSaIcEEC1ERKS1_
.LEHE27:
	jmp	.L295
.L294:
	endbr64
	mov	r13, rax
	mov	rsi, rbx
	mov	rdi, r12
	call	_ZdlPvS_
	mov	rax, r13
	mov	rdi, rax
.LEHB28:
	call	_Unwind_Resume@PLT
.LEHE28:
.L295:
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11450:
	.section	.gcc_except_table
.LLSDA11450:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11450-.LLSDACSB11450
.LLSDACSB11450:
	.uleb128 .LEHB27-.LFB11450
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L294-.LFB11450
	.uleb128 0
	.uleb128 .LEHB28-.LFB11450
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE11450:
	.section	.text._ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_,comdat
	.size	_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_, .-_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_
	.type	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_, @function
_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11451:
	.size	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_, .-_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_
	.section	.text._ZSt8_DestroyISt6vectorIcSaIcEEEvPT_,"axG",@progbits,_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_,comdat
	.weak	_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_
	.type	_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_, @function
_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_:
.LFB11452:
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
	call	_ZNSt6vectorIcSaIcEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11452:
	.size	_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_, .-_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_
	.section	.text._ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB11520:
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
	jne	.L300
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L301
.L300:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8__fill_aIPccEvT_S1_RKT0_
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
.L301:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11520:
	.size	_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZNKSt6vectorIcSaIcEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIcSaIcEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIcSaIcEE4sizeEv
	.type	_ZNKSt6vectorIcSaIcEE4sizeEv, @function
_ZNKSt6vectorIcSaIcEE4sizeEv:
.LFB11521:
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
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11521:
	.size	_ZNKSt6vectorIcSaIcEE4sizeEv, .-_ZNKSt6vectorIcSaIcEE4sizeEv
	.section	.text._ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB11522:
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
.LFE11522:
	.size	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIcSaIcEE5beginEv,"axG",@progbits,_ZNKSt6vectorIcSaIcEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIcSaIcEE5beginEv
	.type	_ZNKSt6vectorIcSaIcEE5beginEv, @function
_ZNKSt6vectorIcSaIcEE5beginEv:
.LFB11523:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L308
	call	__stack_chk_fail@PLT
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11523:
	.size	_ZNKSt6vectorIcSaIcEE5beginEv, .-_ZNKSt6vectorIcSaIcEE5beginEv
	.section	.text._ZNKSt6vectorIcSaIcEE3endEv,"axG",@progbits,_ZNKSt6vectorIcSaIcEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIcSaIcEE3endEv
	.type	_ZNKSt6vectorIcSaIcEE3endEv, @function
_ZNKSt6vectorIcSaIcEE3endEv:
.LFB11524:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC1ERKS2_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L311
	call	__stack_chk_fail@PLT
.L311:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11524:
	.size	_ZNKSt6vectorIcSaIcEE3endEv, .-_ZNKSt6vectorIcSaIcEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E:
.LFB11525:
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
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11525:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E
	.section	.text._ZStneIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_,"axG",@progbits,_ZStneIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_,comdat
	.weak	_ZStneIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_
	.type	_ZStneIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_, @function
_ZStneIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_:
.LFB11526:
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
	call	_ZSteqIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_
	xor	eax, 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11526:
	.size	_ZStneIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_, .-_ZStneIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_
	.section	.text._ZNKSt13move_iteratorIPSt6vectorIcSaIcEEEdeEv,"axG",@progbits,_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEEdeEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEEdeEv
	.type	_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEEdeEv, @function
_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEEdeEv:
.LFB11527:
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
.LFE11527:
	.size	_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEEdeEv, .-_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEEdeEv
	.section	.text._ZNSt12_Vector_baseIcSaIcEEC2EOS1_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEEC5EOS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEEC2EOS1_
	.type	_ZNSt12_Vector_baseIcSaIcEEC2EOS1_, @function
_ZNSt12_Vector_baseIcSaIcEEC2EOS1_:
.LFB11531:
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
	call	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1EOS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11531:
	.size	_ZNSt12_Vector_baseIcSaIcEEC2EOS1_, .-_ZNSt12_Vector_baseIcSaIcEEC2EOS1_
	.weak	_ZNSt12_Vector_baseIcSaIcEEC1EOS1_
	.set	_ZNSt12_Vector_baseIcSaIcEEC1EOS1_,_ZNSt12_Vector_baseIcSaIcEEC2EOS1_
	.section	.text._ZNSt6vectorIcSaIcEEC2EOS1_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5EOS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEEC2EOS1_
	.type	_ZNSt6vectorIcSaIcEEC2EOS1_, @function
_ZNSt6vectorIcSaIcEEC2EOS1_:
.LFB11533:
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
	call	_ZNSt12_Vector_baseIcSaIcEEC2EOS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11533:
	.size	_ZNSt6vectorIcSaIcEEC2EOS1_, .-_ZNSt6vectorIcSaIcEEC2EOS1_
	.weak	_ZNSt6vectorIcSaIcEEC1EOS1_
	.set	_ZNSt6vectorIcSaIcEEC1EOS1_,_ZNSt6vectorIcSaIcEEC2EOS1_
	.section	.text._ZSt10_ConstructISt6vectorIcSaIcEEJS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIcSaIcEEJS2_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt6vectorIcSaIcEEJS2_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt6vectorIcSaIcEEJS2_EEvPT_DpOT0_, @function
_ZSt10_ConstructISt6vectorIcSaIcEEJS2_EEvPT_DpOT0_:
.LFB11528:
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
	call	_ZSt7forwardISt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	edi, 24
	call	_ZnwmPv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEEC1EOS1_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11528:
	.size	_ZSt10_ConstructISt6vectorIcSaIcEEJS2_EEvPT_DpOT0_, .-_ZSt10_ConstructISt6vectorIcSaIcEEJS2_EEvPT_DpOT0_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIcSaIcEES6_EET0_T_S8_S7_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIcSaIcEES6_EET0_T_S8_S7_,comdat
	.weak	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIcSaIcEES6_EET0_T_S8_S7_
	.type	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIcSaIcEES6_EET0_T_S8_S7_, @function
_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIcSaIcEES6_EET0_T_S8_S7_:
.LFB11535:
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
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	jmp	.L322
.L323:
	sub	QWORD PTR -32[rbp], 24
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS5_
	mov	rdx, rax
	sub	QWORD PTR -40[rbp], 24
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEEaSEOS1_
	sub	QWORD PTR -8[rbp], 1
.L322:
	cmp	QWORD PTR -8[rbp], 0
	jg	.L323
	mov	rax, QWORD PTR -40[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11535:
	.size	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIcSaIcEES6_EET0_T_S8_S7_, .-_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIcSaIcEES6_EET0_T_S8_S7_
	.section	.text._ZNSt6vectorIcSaIcEE5clearEv,"axG",@progbits,_ZNSt6vectorIcSaIcEE5clearEv,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEE5clearEv
	.type	_ZNSt6vectorIcSaIcEE5clearEv, @function
_ZNSt6vectorIcSaIcEE5clearEv:
.LFB11536:
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
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11536:
	.size	_ZNSt6vectorIcSaIcEE5clearEv, .-_ZNSt6vectorIcSaIcEE5clearEv
	.section	.text._ZNKSt6vectorIcSaIcEE8capacityEv,"axG",@progbits,_ZNKSt6vectorIcSaIcEE8capacityEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIcSaIcEE8capacityEv
	.type	_ZNKSt6vectorIcSaIcEE8capacityEv, @function
_ZNKSt6vectorIcSaIcEE8capacityEv:
.LFB11537:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11537:
	.size	_ZNKSt6vectorIcSaIcEE8capacityEv, .-_ZNKSt6vectorIcSaIcEE8capacityEv
	.section	.text._ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_,"axG",@progbits,_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_
	.type	_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_, @function
_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_:
.LFB11538:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11538
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB29:
	call	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm
.LEHE29:
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
.LEHB30:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E
.LEHE30:
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L334
.L332:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm
.LEHB31:
	call	__cxa_rethrow@PLT
.LEHE31:
.L333:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB32:
	call	_Unwind_Resume@PLT
.LEHE32:
.L334:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11538:
	.section	.gcc_except_table
	.align 4
.LLSDA11538:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11538-.LLSDATTD11538
.LLSDATTD11538:
	.byte	0x1
	.uleb128 .LLSDACSE11538-.LLSDACSB11538
.LLSDACSB11538:
	.uleb128 .LEHB29-.LFB11538
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB11538
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L332-.LFB11538
	.uleb128 0x1
	.uleb128 .LEHB31-.LFB11538
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L333-.LFB11538
	.uleb128 0
	.uleb128 .LEHB32-.LFB11538
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE11538:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11538:
	.section	.text._ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_,"axG",@progbits,_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_,comdat
	.size	_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_, .-_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_
	.section	.text._ZNSt6vectorIcSaIcEE5beginEv,"axG",@progbits,_ZNSt6vectorIcSaIcEE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEE5beginEv
	.type	_ZNSt6vectorIcSaIcEE5beginEv, @function
_ZNSt6vectorIcSaIcEE5beginEv:
.LFB11539:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC1ERKS1_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L337
	call	__stack_chk_fail@PLT
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11539:
	.size	_ZNSt6vectorIcSaIcEE5beginEv, .-_ZNSt6vectorIcSaIcEE5beginEv
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_:
.LFB11540:
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
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET1_T0_SB_SA_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11540:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_
	.section	.text._ZNSt6vectorIcSaIcEE3endEv,"axG",@progbits,_ZNSt6vectorIcSaIcEE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEE3endEv
	.type	_ZNSt6vectorIcSaIcEE3endEv, @function
_ZNSt6vectorIcSaIcEE3endEv:
.LFB11541:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC1ERKS1_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L342
	call	__stack_chk_fail@PLT
.L342:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11541:
	.size	_ZNSt6vectorIcSaIcEE3endEv, .-_ZNSt6vectorIcSaIcEE3endEv
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RSaIT0_E
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RSaIT0_E, @function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RSaIT0_E:
.LFB11542:
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
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11542:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RSaIT0_E, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RSaIT0_E
	.section	.text._ZSt4copyIPcS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt4copyIPcS0_ET0_T_S2_S1_,comdat
	.weak	_ZSt4copyIPcS0_ET0_T_S2_S1_
	.type	_ZSt4copyIPcS0_ET0_T_S2_S1_, @function
_ZSt4copyIPcS0_ET0_T_S2_S1_:
.LFB11543:
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
	call	_ZSt12__miter_baseIPcET_S1_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIPcET_S1_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt13__copy_move_aILb0EPcS0_ET1_T0_S2_S1_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11543:
	.size	_ZSt4copyIPcS0_ET0_T_S2_S1_, .-_ZSt4copyIPcS0_ET0_T_S2_S1_
	.section	.text._ZSt22__uninitialized_copy_aIPcS0_cET0_T_S2_S1_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPcS0_cET0_T_S2_S1_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPcS0_cET0_T_S2_S1_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPcS0_cET0_T_S2_S1_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPcS0_cET0_T_S2_S1_RSaIT1_E:
.LFB11544:
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
	call	_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11544:
	.size	_ZSt22__uninitialized_copy_aIPcS0_cET0_T_S2_S1_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPcS0_cET0_T_S2_S1_RSaIT1_E
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv:
.LFB11545:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11545:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv
	.section	.text._ZSt8__fill_aIPccEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPccEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPccEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPccEvT_S1_RKT0_, @function
_ZSt8__fill_aIPccEvT_S1_RKT0_:
.LFB11575:
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
	call	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11575:
	.size	_ZSt8__fill_aIPccEvT_S1_RKT0_, .-_ZSt8__fill_aIPccEvT_S1_RKT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_:
.LFB11577:
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
.LFE11577:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_:
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
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11579:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	.section	.text._ZNKSt13move_iteratorIPSt6vectorIcSaIcEEE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEE4baseEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEE4baseEv
	.type	_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEE4baseEv, @function
_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEE4baseEv:
.LFB11582:
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
.LFE11582:
	.size	_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEE4baseEv, .-_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEE4baseEv
	.section	.text._ZSteqIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_,"axG",@progbits,_ZSteqIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_,comdat
	.weak	_ZSteqIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_
	.type	_ZSteqIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_, @function
_ZSteqIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_:
.LFB11581:
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
	call	_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEE4baseEv
	mov	rbx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNKSt13move_iteratorIPSt6vectorIcSaIcEEE4baseEv
	cmp	rbx, rax
	sete	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11581:
	.size	_ZSteqIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_, .-_ZSteqIPSt6vectorIcSaIcEEEbRKSt13move_iteratorIT_ES8_
	.section	.text._ZSt7forwardISt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardISt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardISt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardISt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardISt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB11583:
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
.LFE11583:
	.size	_ZSt7forwardISt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardISt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2EOS2_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC5EOS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2EOS2_
	.type	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2EOS2_, @function
_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2EOS2_:
.LFB11585:
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
	call	_ZSt4moveIRNSt12_Vector_baseIcSaIcEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIcEC2ERKS_@PLT
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRNSt12_Vector_baseIcSaIcEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2EOS2_
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11585:
	.size	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2EOS2_, .-_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2EOS2_
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1EOS2_
	.set	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1EOS2_,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2EOS2_
	.section	.text._ZSt4moveIRSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB11587:
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
.LFE11587:
	.size	_ZSt4moveIRSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt6vectorIcSaIcEEaSEOS1_,"axG",@progbits,_ZNSt6vectorIcSaIcEEaSEOS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEEaSEOS1_
	.type	_ZNSt6vectorIcSaIcEEaSEOS1_, @function
_ZNSt6vectorIcSaIcEEaSEOS1_:
.LFB11588:
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
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt6vectorIcSaIcEEEONSt16remove_referenceIT_E4typeEOS5_
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11588:
	.size	_ZNSt6vectorIcSaIcEEaSEOS1_, .-_ZNSt6vectorIcSaIcEEaSEOS1_
	.section	.text._ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc,"axG",@progbits,_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc
	.type	_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc, @function
_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc:
.LFB11589:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11589
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L367
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
.L367:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11589:
	.section	.gcc_except_table
.LLSDA11589:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11589-.LLSDACSB11589
.LLSDACSB11589:
.LLSDACSE11589:
	.section	.text._ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc,"axG",@progbits,_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc,comdat
	.size	_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc, .-_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_:
.LFB11591:
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
.LFE11591:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_:
.LFB11593:
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
.LFE11593:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET1_T0_SB_SA_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET1_T0_SB_SA_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET1_T0_SB_SA_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET1_T0_SB_SA_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET1_T0_SB_SA_:
.LFB11594:
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
	call	_ZSt12__niter_baseIPcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES2_ET_S7_T0_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11594:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET1_T0_SB_SA_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET1_T0_SB_SA_
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_, @function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_:
.LFB11595:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEEvT_S9_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11595:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_
	.section	.text._ZSt12__miter_baseIPcET_S1_,"axG",@progbits,_ZSt12__miter_baseIPcET_S1_,comdat
	.weak	_ZSt12__miter_baseIPcET_S1_
	.type	_ZSt12__miter_baseIPcET_S1_, @function
_ZSt12__miter_baseIPcET_S1_:
.LFB11596:
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
.LFE11596:
	.size	_ZSt12__miter_baseIPcET_S1_, .-_ZSt12__miter_baseIPcET_S1_
	.section	.text._ZSt13__copy_move_aILb0EPcS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb0EPcS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt13__copy_move_aILb0EPcS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb0EPcS0_ET1_T0_S2_S1_, @function
_ZSt13__copy_move_aILb0EPcS0_ET1_T0_S2_S1_:
.LFB11597:
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
	call	_ZSt12__niter_baseIPcET_S1_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPcET_S1_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPcET_S1_
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt14__copy_move_a1ILb0EPcS0_ET1_T0_S2_S1_
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIPcET_RKS1_S1_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11597:
	.size	_ZSt13__copy_move_aILb0EPcS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb0EPcS0_ET1_T0_S2_S1_
	.section	.text._ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_,comdat
	.weak	_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_
	.type	_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_, @function
_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_:
.LFB11598:
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
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPcS2_EET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11598:
	.size	_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_, .-_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_
	.section	.text._ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_,"axG",@progbits,_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_,comdat
	.weak	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_
	.type	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_, @function
_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_:
.LFB11602:
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
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -9[rbp], al
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L382
	movzx	eax, BYTE PTR -9[rbp]
	movzx	ecx, al
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	memset@PLT
.L382:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11602:
	.size	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_, .-_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_:
.LFB11603:
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
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11603:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_
	.section	.text._ZSt4moveIRNSt12_Vector_baseIcSaIcEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRNSt12_Vector_baseIcSaIcEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRNSt12_Vector_baseIcSaIcEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRNSt12_Vector_baseIcSaIcEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRNSt12_Vector_baseIcSaIcEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB11604:
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
.LFE11604:
	.size	_ZSt4moveIRNSt12_Vector_baseIcSaIcEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRNSt12_Vector_baseIcSaIcEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2EOS2_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC5EOS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2EOS2_
	.type	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2EOS2_, @function
_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2EOS2_:
.LFB11606:
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
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11606:
	.size	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2EOS2_, .-_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2EOS2_
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC1EOS2_
	.set	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC1EOS2_,_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2EOS2_
	.section	.text._ZNSt6vectorIcSaIcEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIcSaIcEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIcSaIcEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIcSaIcEE14_M_move_assignEOS1_St17integral_constantIbLb1EE:
.LFB11608:
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
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -49[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt12_Vector_baseIcSaIcEE13get_allocatorEv
	lea	rdx, -49[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEEC1ERKS0_
	lea	rax, -49[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_swap_dataERS2_
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_swap_dataERS2_
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt15__alloc_on_moveISaIcEEvRT_S2_
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEED1Ev
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L389
	call	__stack_chk_fail@PLT
.L389:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11608:
	.size	_ZNSt6vectorIcSaIcEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorIcSaIcEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.section	.text._ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB11609:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv
	mov	rax, QWORD PTR [rax]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11609:
	.size	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.type	_ZSt12__niter_baseIPcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, @function
_ZSt12__niter_baseIPcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE:
.LFB11610:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv
	mov	rax, QWORD PTR [rax]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11610:
	.size	_ZSt12__niter_baseIPcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, .-_ZSt12__niter_baseIPcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.section	.text._ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_:
.LFB11611:
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
	call	_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11611:
	.size	_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES2_ET_S7_T0_,"axG",@progbits,_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES2_ET_S7_T0_,comdat
	.weak	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES2_ET_S7_T0_
	.type	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES2_ET_S7_T0_, @function
_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES2_ET_S7_T0_:
.LFB11612:
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
	call	_ZSt12__niter_baseIPcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	mov	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, rcx
	mov	rdx, rax
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11612:
	.size	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES2_ET_S7_T0_, .-_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES2_ET_S7_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEEvT_S9_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEEvT_S9_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEEvT_S9_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEEvT_S9_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEEvT_S9_:
.LFB11613:
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
.LFE11613:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEEvT_S9_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEEvT_S9_
	.section	.text._ZSt12__niter_baseIPcET_S1_,"axG",@progbits,_ZSt12__niter_baseIPcET_S1_,comdat
	.weak	_ZSt12__niter_baseIPcET_S1_
	.type	_ZSt12__niter_baseIPcET_S1_, @function
_ZSt12__niter_baseIPcET_S1_:
.LFB11614:
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
.LFE11614:
	.size	_ZSt12__niter_baseIPcET_S1_, .-_ZSt12__niter_baseIPcET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPcS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPcS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPcS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a1ILb0EPcS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a1ILb0EPcS0_ET1_T0_S2_S1_:
.LFB11615:
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
	call	_ZSt14__copy_move_a2ILb0EPcS0_ET1_T0_S2_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11615:
	.size	_ZSt14__copy_move_a1ILb0EPcS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a1ILb0EPcS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_wrapIPcET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPcET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPcET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPcET_RKS1_S1_, @function
_ZSt12__niter_wrapIPcET_RKS1_S1_:
.LFB11616:
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
.LFE11616:
	.size	_ZSt12__niter_wrapIPcET_RKS1_S1_, .-_ZSt12__niter_wrapIPcET_RKS1_S1_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPcS2_EET0_T_S4_S3_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPcS2_EET0_T_S4_S3_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPcS2_EET0_T_S4_S3_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPcS2_EET0_T_S4_S3_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPcS2_EET0_T_S4_S3_:
.LFB11617:
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
	call	_ZSt4copyIPcS0_ET0_T_S2_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11617:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPcS2_EET0_T_S4_S3_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPcS2_EET0_T_S4_S3_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_:
.LFB11629:
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
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11629:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	.section	.text._ZNKSt12_Vector_baseIcSaIcEE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIcSaIcEE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIcSaIcEE13get_allocatorEv
	.type	_ZNKSt12_Vector_baseIcSaIcEE13get_allocatorEv, @function
_ZNKSt12_Vector_baseIcSaIcEE13get_allocatorEv:
.LFB11630:
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
	call	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIcEC1ERKS_@PLT
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11630:
	.size	_ZNKSt12_Vector_baseIcSaIcEE13get_allocatorEv, .-_ZNKSt12_Vector_baseIcSaIcEE13get_allocatorEv
	.section	.text._ZNSt6vectorIcSaIcEEC2ERKS0_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIcSaIcEEC2ERKS0_
	.type	_ZNSt6vectorIcSaIcEEC2ERKS0_, @function
_ZNSt6vectorIcSaIcEEC2ERKS0_:
.LFB11632:
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
	call	_ZNSt12_Vector_baseIcSaIcEEC2ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11632:
	.size	_ZNSt6vectorIcSaIcEEC2ERKS0_, .-_ZNSt6vectorIcSaIcEEC2ERKS0_
	.weak	_ZNSt6vectorIcSaIcEEC1ERKS0_
	.set	_ZNSt6vectorIcSaIcEEC1ERKS0_,_ZNSt6vectorIcSaIcEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_swap_dataERS2_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_swap_dataERS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_swap_dataERS2_
	.type	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_swap_dataERS2_, @function
_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_swap_dataERS2_:
.LFB11634:
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
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC1Ev
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_
	lea	rdx, -32[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L413
	call	__stack_chk_fail@PLT
.L413:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11634:
	.size	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_swap_dataERS2_, .-_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_swap_dataERS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv:
.LFB11635:
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
.LFE11635:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv:
.LFB11636:
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
.LFE11636:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_:
.LFB11637:
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
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11637:
	.size	_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl:
.LFB11638:
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
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC1ERKS1_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L422
	call	__stack_chk_fail@PLT
.L422:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11638:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl
	.section	.text._ZSt14__copy_move_a2ILb0EPcS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPcS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPcS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb0EPcS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb0EPcS0_ET1_T0_S2_S1_:
.LFB11639:
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
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11639:
	.size	_ZSt14__copy_move_a2ILb0EPcS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb0EPcS0_ET1_T0_S2_S1_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_:
.LFB11641:
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
	call	_ZSt12__niter_baseIPcET_S1_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt12__niter_wrapIPcET_RKS1_S1_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11641:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_
	.section	.text._ZNSt12_Vector_baseIcSaIcEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEEC2ERKS0_
	.type	_ZNSt12_Vector_baseIcSaIcEEC2ERKS0_, @function
_ZNSt12_Vector_baseIcSaIcEEC2ERKS0_:
.LFB11643:
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
	call	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11643:
	.size	_ZNSt12_Vector_baseIcSaIcEEC2ERKS0_, .-_ZNSt12_Vector_baseIcSaIcEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseIcSaIcEEC1ERKS0_
	.set	_ZNSt12_Vector_baseIcSaIcEEC1ERKS0_,_ZNSt12_Vector_baseIcSaIcEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_
	.type	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_, @function
_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_:
.LFB11645:
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
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11645:
	.size	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_, .-_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_data12_M_copy_dataERKS2_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_:
.LFB11646:
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
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L430
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
.L430:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11646:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11684:
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
	jne	.L434
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L434
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
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC1Ev
	lea	rax, __dso_handle[rip]
	mov	rdx, rax
	lea	rax, arr[rip]
	mov	rsi, rax
	lea	rax, _ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
.L434:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11684:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev, @function
_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev:
.LFB11700:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11700
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
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11700:
	.section	.gcc_except_table
.LLSDA11700:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11700-.LLSDACSB11700
.LLSDACSB11700:
.LLSDACSE11700:
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev
	.set	_ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev,_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev
	.text
	.type	_GLOBAL__sub_I__Z5setupv, @function
_GLOBAL__sub_I__Z5setupv:
.LFB11710:
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
.LFE11710:
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
