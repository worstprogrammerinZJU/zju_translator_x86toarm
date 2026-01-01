	.arch armv8-a
	.file	"F_Two_Bracket_Sequences.cpp"
	.text
	.section	.rodata
	.align	3
	.type	_ZN6__pstl9execution2v1L3seqE, %object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.align	3
	.type	_ZN6__pstl9execution2v1L3parE, %object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.align	3
	.type	_ZN6__pstl9execution2v1L9par_unseqE, %object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.align	3
	.type	_ZN6__pstl9execution2v1L5unseqE, %object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	2
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, %object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.word	2
	.align	2
	.type	_ZNSt15regex_constantsL13error_collateE, %object
	.size	_ZNSt15regex_constantsL13error_collateE, 4
_ZNSt15regex_constantsL13error_collateE:
	.zero	4
	.align	2
	.type	_ZNSt15regex_constantsL11error_ctypeE, %object
	.size	_ZNSt15regex_constantsL11error_ctypeE, 4
_ZNSt15regex_constantsL11error_ctypeE:
	.word	1
	.align	2
	.type	_ZNSt15regex_constantsL12error_escapeE, %object
	.size	_ZNSt15regex_constantsL12error_escapeE, 4
_ZNSt15regex_constantsL12error_escapeE:
	.word	2
	.align	2
	.type	_ZNSt15regex_constantsL13error_backrefE, %object
	.size	_ZNSt15regex_constantsL13error_backrefE, 4
_ZNSt15regex_constantsL13error_backrefE:
	.word	3
	.align	2
	.type	_ZNSt15regex_constantsL11error_brackE, %object
	.size	_ZNSt15regex_constantsL11error_brackE, 4
_ZNSt15regex_constantsL11error_brackE:
	.word	4
	.align	2
	.type	_ZNSt15regex_constantsL11error_parenE, %object
	.size	_ZNSt15regex_constantsL11error_parenE, 4
_ZNSt15regex_constantsL11error_parenE:
	.word	5
	.align	2
	.type	_ZNSt15regex_constantsL11error_braceE, %object
	.size	_ZNSt15regex_constantsL11error_braceE, 4
_ZNSt15regex_constantsL11error_braceE:
	.word	6
	.align	2
	.type	_ZNSt15regex_constantsL14error_badbraceE, %object
	.size	_ZNSt15regex_constantsL14error_badbraceE, 4
_ZNSt15regex_constantsL14error_badbraceE:
	.word	7
	.align	2
	.type	_ZNSt15regex_constantsL11error_rangeE, %object
	.size	_ZNSt15regex_constantsL11error_rangeE, 4
_ZNSt15regex_constantsL11error_rangeE:
	.word	8
	.align	2
	.type	_ZNSt15regex_constantsL11error_spaceE, %object
	.size	_ZNSt15regex_constantsL11error_spaceE, 4
_ZNSt15regex_constantsL11error_spaceE:
	.word	9
	.align	2
	.type	_ZNSt15regex_constantsL15error_badrepeatE, %object
	.size	_ZNSt15regex_constantsL15error_badrepeatE, 4
_ZNSt15regex_constantsL15error_badrepeatE:
	.word	10
	.align	2
	.type	_ZNSt15regex_constantsL16error_complexityE, %object
	.size	_ZNSt15regex_constantsL16error_complexityE, 4
_ZNSt15regex_constantsL16error_complexityE:
	.word	11
	.align	2
	.type	_ZNSt15regex_constantsL11error_stackE, %object
	.size	_ZNSt15regex_constantsL11error_stackE, 4
_ZNSt15regex_constantsL11error_stackE:
	.word	12
	.align	3
	.type	_ZNSt8__detailL19_S_invalid_state_idE, %object
	.size	_ZNSt8__detailL19_S_invalid_state_idE, 8
_ZNSt8__detailL19_S_invalid_state_idE:
	.xword	-1
	.align	3
.LC0:
	.string	"r"
	.align	3
.LC1:
	.string	"input.txt"
	.align	3
.LC2:
	.string	"w"
	.align	3
.LC3:
	.string	"output.txt"
	.text
	.align	2
	.global	_Z5setupv
	.type	_Z5setupv, %function
_Z5setupv:
.LFB9696:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w0, 0
	bl	_ZNSt8ios_base15sync_with_stdioEb
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	add	x0, x0, 16
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	add	x0, x0, 8
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	adrp	x0, :got:stdin
	ldr	x0, [x0, #:got_lo12:stdin]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9696:
	.size	_Z5setupv, .-_Z5setupv
	.global	_Z1sB5cxx11
	.bss
	.align	3
	.type	_Z1sB5cxx11, %object
	.size	_Z1sB5cxx11, 32
_Z1sB5cxx11:
	.zero	32
	.global	_Z1tB5cxx11
	.align	3
	.type	_Z1tB5cxx11, %object
	.size	_Z1tB5cxx11, 32
_Z1tB5cxx11:
	.zero	32
	.global	dp
	.align	3
	.type	dp, %object
	.size	dp, 34460500
dp:
	.zero	34460500
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	m
	.align	2
	.type	m, %object
	.size	m, 4
m:
	.zero	4
	.text
	.align	2
	.global	_Z3soliii
	.type	_Z3soliii, %function
_Z3soliii:
.LFB9697:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bne	.L3
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L3
	ldr	w0, [sp, 36]
	b	.L14
.L3:
	ldrsw	x1, [sp, 36]
	ldrsw	x2, [sp, 44]
	mov	x0, 42025
	mul	x2, x2, x0
	ldrsw	x3, [sp, 40]
	mov	x0, 205
	mul	x0, x3, x0
	add	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L5
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	b	.L14
.L5:
	mov	w0, 2147483647
	str	w0, [sp, 60]
	mov	w0, 2147483647
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 40
	beq	.L6
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1tB5cxx11
	add	x0, x0, :lo12:_Z1tB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L7
.L6:
	mov	w0, 1
	b	.L8
.L7:
	mov	w0, 0
.L8:
	cmp	w0, 0
	beq	.L9
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 40
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w19, w1, w0
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 40
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w2, w0
	mov	w0, w19
	bl	_Z3soliii
	add	w0, w0, 1
	str	w0, [sp, 60]
.L9:
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 41
	beq	.L10
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1tB5cxx11
	add	x0, x0, :lo12:_Z1tB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L11
.L10:
	mov	w0, 1
	b	.L12
.L11:
	mov	w0, 0
.L12:
	cmp	w0, 0
	beq	.L13
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 41
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w19, w1, w0
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 41
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 40]
	add	w20, w1, w0
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 64]
	str	wzr, [sp, 68]
	add	x1, sp, 68
	add	x0, sp, 64
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	mov	w2, w0
	mov	w1, w20
	mov	w0, w19
	bl	_Z3soliii
	add	w0, w0, 1
	ldr	w1, [sp, 36]
	cmp	w1, 0
	cset	w1, eq
	and	w1, w1, 255
	add	w0, w0, w1
	str	w0, [sp, 56]
.L13:
	add	x1, sp, 56
	add	x0, sp, 60
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	x0, [sp, 72]
	str	w1, [x0]
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
.L14:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9697:
	.size	_Z3soliii, .-_Z3soliii
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9698:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	bl	_Z5setupv
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, _Z1tB5cxx11
	add	x1, x0, :lo12:_Z1tB5cxx11
	mov	x0, x2
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	adrp	x0, _Z1tB5cxx11
	add	x0, x0, :lo12:_Z1tB5cxx11
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	w1, w0
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	mov	x2, 54100
	movk	x2, 0x20d, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	mov	w2, 0
	mov	w1, 0
	mov	w0, 0
	bl	_Z3soliii
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9698:
	.size	main, .-main
	.section	.text._ZSt3maxIiERKT_S2_S2_,"axG",@progbits,_ZSt3maxIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxIiERKT_S2_S2_
	.type	_ZSt3maxIiERKT_S2_S2_, %function
_ZSt3maxIiERKT_S2_S2_:
.LFB10387:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L18
	ldr	x0, [sp]
	b	.L19
.L18:
	ldr	x0, [sp, 8]
.L19:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10387:
	.size	_ZSt3maxIiERKT_S2_S2_, .-_ZSt3maxIiERKT_S2_S2_
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, %function
_ZSt3minIiERKT_S2_S2_:
.LFB10388:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L21
	ldr	x0, [sp]
	b	.L22
.L21:
	ldr	x0, [sp, 8]
.L22:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10388:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11448:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L25
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L25
	adrp	x0, _ZStL8__ioinit
	add	x0, x0, :lo12:_ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, _ZStL8__ioinit
	add	x1, x0, :lo12:_ZStL8__ioinit
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]
	bl	__cxa_atexit
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	adrp	x0, :got:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	ldr	x0, [x0, #:got_lo12:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev]
	bl	__cxa_atexit
	adrp	x0, _Z1tB5cxx11
	add	x0, x0, :lo12:_Z1tB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, _Z1tB5cxx11
	add	x1, x0, :lo12:_Z1tB5cxx11
	adrp	x0, :got:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	ldr	x0, [x0, #:got_lo12:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev]
	bl	__cxa_atexit
.L25:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11448:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__Z5setupv, %function
_GLOBAL__sub_I__Z5setupv:
.LFB11471:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	bl	_Z41__static_initialization_and_destruction_0ii
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11471:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I__Z5setupv
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
