	.arch armv8-a
	.file	"Scuba_diver.cpp"
	.text
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.align	2
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, %function
_ZSt17__size_to_integerm:
.LFB531:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE531:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB999:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE999:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, %function
_ZSt3minImERKT_S2_S2_:
.LFB3247:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L6
	ldr	x0, [sp]
	b	.L7
.L6:
	ldr	x0, [sp, 8]
.L7:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3247:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
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
	.global	x
	.bss
	.align	3
	.type	x, %object
	.size	x, 8
x:
	.zero	8
	.global	y
	.align	3
	.type	y, %object
	.size	y, 8
y:
	.zero	8
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev:
.LFB9701:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaI2stED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9701:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev, %function
_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev:
.LFB9703:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9703:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EEC1Ev,_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI2stSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EEC2Ev
	.type	_ZNSt6vectorI2stSaIS0_EEC2Ev, %function
_ZNSt6vectorI2stSaIS0_EEC2Ev:
.LFB9705:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9705:
	.size	_ZNSt6vectorI2stSaIS0_EEC2Ev, .-_ZNSt6vectorI2stSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI2stSaIS0_EEC1Ev
	.set	_ZNSt6vectorI2stSaIS0_EEC1Ev,_ZNSt6vectorI2stSaIS0_EEC2Ev
	.global	arr
	.bss
	.align	3
	.type	arr, %object
	.size	arr, 24
arr:
	.zero	24
	.global	dp
	.align	3
	.type	dp, %object
	.size	dp, 17085000
dp:
	.zero	17085000
	.text
	.align	2
	.global	_Z3solxxx
	.type	_Z3solxxx, %function
_Z3solxxx:
.LFB9707:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	cmp	x1, x0
	bne	.L13
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	x0, [x0]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	blt	.L14
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	x0, [x0]
	ldr	x1, [sp, 40]
	cmp	x1, x0
	blt	.L14
	mov	x0, 0
	b	.L18
.L14:
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	b	.L18
.L13:
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	ldr	x2, [sp, 56]
	mov	x1, 2125
	mul	x1, x2, x1
	add	x1, x0, x1
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	lsl	x1, x0, 3
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	ldr	x0, [x0]
	cmn	x0, #1
	beq	.L17
	ldr	x0, [sp, 104]
	ldr	x0, [x0]
	b	.L18
.L17:
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	bl	_Z3solxxx
	str	x0, [sp, 80]
	ldr	x0, [sp, 56]
	add	x19, x0, 1
	ldr	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorI2stSaIS0_EEixEm
	ldr	x1, [x0]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 88]
	add	x2, sp, 88
	adrp	x0, x
	add	x1, x0, :lo12:x
	mov	x0, x2
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x20, [x0]
	ldr	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorI2stSaIS0_EEixEm
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 96]
	add	x2, sp, 96
	adrp	x0, y
	add	x1, x0, :lo12:y
	mov	x0, x2
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_Z3solxxx
	mov	x19, x0
	ldr	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorI2stSaIS0_EEixEm
	ldr	x0, [x0, 16]
	add	x0, x19, x0
	str	x0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 80
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x1, [x0]
	ldr	x0, [sp, 104]
	str	x1, [x0]
	ldr	x0, [sp, 104]
	ldr	x0, [x0]
.L18:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9707:
	.size	_Z3solxxx, .-_Z3solxxx
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9708:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	bl	_Z5setupv
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	b	.L20
.L23:
	adrp	x0, x
	add	x1, x0, :lo12:x
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, y
	add	x1, x0, :lo12:y
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, n
	add	x1, x0, :lo12:n
	mov	x0, x2
	bl	_ZNSirsERi
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorI2stSaIS0_EE6resizeEm
	str	wzr, [sp, 44]
	b	.L21
.L22:
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorI2stSaIS0_EEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERx
	mov	x19, x0
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorI2stSaIS0_EEixEm
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSirsERx
	mov	x19, x0
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorI2stSaIS0_EEixEm
	add	x0, x0, 16
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSirsERx
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L21:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L22
	mov	x2, 45640
	movk	x2, 0x104, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	mov	x2, 0
	mov	x1, 0
	mov	x0, 0
	bl	_Z3solxxx
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEx
	mov	w1, 10
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorI2stSaIS0_EE5clearEv
.L20:
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	str	w1, [sp, 40]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9708:
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, %function
_ZSt3maxImERKT_S2_S2_:
.LFB10020:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L26
	ldr	x0, [sp]
	b	.L27
.L26:
	ldr	x0, [sp, 8]
.L27:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10020:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev, %function
_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev:
.LFB10398:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaI2stEC2Ev
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10398:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaI2stED2Ev,"axG",@progbits,_ZNSaI2stED5Ev,comdat
	.align	2
	.weak	_ZNSaI2stED2Ev
	.type	_ZNSaI2stED2Ev, %function
_ZNSaI2stED2Ev:
.LFB10401:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorI2stED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10401:
	.size	_ZNSaI2stED2Ev, .-_ZNSaI2stED2Ev
	.weak	_ZNSaI2stED1Ev
	.set	_ZNSaI2stED1Ev,_ZNSaI2stED2Ev
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EED2Ev, %function
_ZNSt12_Vector_baseI2stSaIS0_EED2Ev:
.LFB10404:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10404
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10404:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt12_Vector_baseI2stSaIS0_EED2Ev,"aG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EED5Ev,comdat
.LLSDA10404:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10404-.LLSDACSB10404
.LLSDACSB10404:
.LLSDACSE10404:
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI2stSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EED1Ev,_ZNSt12_Vector_baseI2stSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI2stSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EEixEm
	.type	_ZNSt6vectorI2stSaIS0_EEixEm, %function
_ZNSt6vectorI2stSaIS0_EEixEm:
.LFB10406:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x2, [x0]
	ldr	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10406:
	.size	_ZNSt6vectorI2stSaIS0_EEixEm, .-_ZNSt6vectorI2stSaIS0_EEixEm
	.section	.text._ZSt3minIxERKT_S2_S2_,"axG",@progbits,_ZSt3minIxERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIxERKT_S2_S2_
	.type	_ZSt3minIxERKT_S2_S2_, %function
_ZSt3minIxERKT_S2_S2_:
.LFB10407:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L34
	ldr	x0, [sp]
	b	.L35
.L34:
	ldr	x0, [sp, 8]
.L35:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10407:
	.size	_ZSt3minIxERKT_S2_S2_, .-_ZSt3minIxERKT_S2_S2_
	.section	.text._ZNSt6vectorI2stSaIS0_EE6resizeEm,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE6resizeEm,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EE6resizeEm
	.type	_ZNSt6vectorI2stSaIS0_EE6resizeEm, %function
_ZNSt6vectorI2stSaIS0_EE6resizeEm:
.LFB10409:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 16]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L37
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 16]
	sub	x0, x0, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm
	b	.L39
.L37:
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 16]
	cmp	x0, x1
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L39
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x1, [sp, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_
.L39:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10409:
	.size	_ZNSt6vectorI2stSaIS0_EE6resizeEm, .-_ZNSt6vectorI2stSaIS0_EE6resizeEm
	.section	.text._ZNSt6vectorI2stSaIS0_EE5clearEv,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE5clearEv,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EE5clearEv
	.type	_ZNSt6vectorI2stSaIS0_EE5clearEv, %function
_ZNSt6vectorI2stSaIS0_EE5clearEv:
.LFB10412:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10412:
	.size	_ZNSt6vectorI2stSaIS0_EE5clearEv, .-_ZNSt6vectorI2stSaIS0_EE5clearEv
	.section	.text._ZNSaI2stEC2Ev,"axG",@progbits,_ZNSaI2stEC5Ev,comdat
	.align	2
	.weak	_ZNSaI2stEC2Ev
	.type	_ZNSaI2stEC2Ev, %function
_ZNSaI2stEC2Ev:
.LFB10805:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorI2stEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10805:
	.size	_ZNSaI2stEC2Ev, .-_ZNSaI2stEC2Ev
	.weak	_ZNSaI2stEC1Ev
	.set	_ZNSaI2stEC1Ev,_ZNSaI2stEC2Ev
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB10808:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10808:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI2stED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI2stED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorI2stED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI2stED2Ev, %function
_ZN9__gnu_cxx13new_allocatorI2stED2Ev:
.LFB10811:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10811:
	.size	_ZN9__gnu_cxx13new_allocatorI2stED2Ev, .-_ZN9__gnu_cxx13new_allocatorI2stED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI2stED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI2stED1Ev,_ZN9__gnu_cxx13new_allocatorI2stED2Ev
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m, %function
_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m:
.LFB10813:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L46
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m
.L46:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10813:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZNKSt6vectorI2stSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI2stSaIS0_EE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI2stSaIS0_EE4sizeEv, %function
_ZNKSt6vectorI2stSaIS0_EE4sizeEv:
.LFB10814:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10814:
	.size	_ZNKSt6vectorI2stSaIS0_EE4sizeEv, .-_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	.section	.rodata
	.align	3
.LC4:
	.string	"vector::_M_default_append"
	.section	.text._ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm
	.type	_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm, %function
_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm:
.LFB10815:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10815
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L60
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bhi	.L51
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	ldr	x1, [sp, 64]
	cmp	x1, x0
	bls	.L52
.L51:
	mov	w0, 1
	b	.L53
.L52:
	mov	w0, 0
.L53:
	cmp	w0, 0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L55
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
.LEHB0:
	bl	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	b	.L60
.L55:
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 56]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm
.LEHE0:
	str	x0, [sp, 48]
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x19, x0, x1
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
.LEHB1:
	bl	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E
.LEHE1:
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 48]
	mov	x1, x20
	mov	x0, x19
	bl	_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	ldr	x3, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x4, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
.LEHB2:
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
.LEHE2:
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 48]
	str	x1, [x0]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 32]
	add	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x1, x0, x1
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x1, x0, x1
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	b	.L60
.L58:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 48]
.LEHB3:
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
	bl	__cxa_rethrow
.LEHE3:
.L59:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB4:
	bl	_Unwind_Resume
.LEHE4:
.L60:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10815:
	.section	.gcc_except_table._ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,"aG",@progbits,_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,comdat
	.align	2
.LLSDA10815:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10815-.LLSDATTD10815
.LLSDATTD10815:
	.byte	0x1
	.uleb128 .LLSDACSE10815-.LLSDACSB10815
.LLSDACSB10815:
	.uleb128 .LEHB0-.LFB10815
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB10815
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L58-.LFB10815
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB10815
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB10815
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L59-.LFB10815
	.uleb128 0
	.uleb128 .LEHB4-.LFB10815
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE10815:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10815:
	.section	.text._ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,comdat
	.size	_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm, .-_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm
	.section	.text._ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_
	.type	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_, %function
_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_:
.LFB10820:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10820
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L63
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 32]
	bl	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
.L63:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10820:
	.section	.gcc_except_table._ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,"aG",@progbits,_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,comdat
.LLSDA10820:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10820-.LLSDACSB10820
.LLSDACSB10820:
.LLSDACSE10820:
	.section	.text._ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,comdat
	.size	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_, .-_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorI2stEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI2stEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorI2stEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI2stEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorI2stEC2Ev:
.LFB11018:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11018:
	.size	_ZN9__gnu_cxx13new_allocatorI2stEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI2stEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI2stEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI2stEC1Ev,_ZN9__gnu_cxx13new_allocatorI2stEC2Ev
	.section	.text._ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m, %function
_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m:
.LFB11020:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11020:
	.size	_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m
	.section	.text._ZNKSt6vectorI2stSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv, %function
_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv:
.LFB11021:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	bl	_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11021:
	.size	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB11022:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11022:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E, %function
_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E:
.LFB11023:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt25__uninitialized_default_nIP2stmET_S2_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11023:
	.size	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E
	.section	.text._ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc,comdat
	.align	2
	.weak	_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc, %function
_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc:
.LFB11024:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	sub	x1, x19, x0
	ldr	x0, [sp, 48]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L73
	ldr	x0, [sp, 40]
	bl	_ZSt20__throw_length_errorPKc
.L73:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	str	x0, [sp, 64]
	add	x1, sp, 48
	add	x0, sp, 64
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bcc	.L74
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L75
.L74:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	b	.L76
.L75:
	ldr	x0, [sp, 72]
.L76:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11024:
	.size	_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm, %function
_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm:
.LFB11025:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L79
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m
	b	.L81
.L79:
	mov	x0, 0
.L81:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11025:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.type	_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, %function
_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB11026:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11026:
	.size	_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .-_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.section	.text._ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E, %function
_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E:
.LFB11027:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8_DestroyIP2stEvT_S2_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11027:
	.size	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m, %function
_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m:
.LFB11164:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11164:
	.size	_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m
	.section	.text._ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_, %function
_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_:
.LFB11165:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 6148914691236517205
	movk	x0, 0x555, lsl 48
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11165:
	.size	_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB11166:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11166:
	.size	_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt25__uninitialized_default_nIP2stmET_S2_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIP2stmET_S2_T0_,comdat
	.align	2
	.weak	_ZSt25__uninitialized_default_nIP2stmET_S2_T0_
	.type	_ZSt25__uninitialized_default_nIP2stmET_S2_T0_, %function
_ZSt25__uninitialized_default_nIP2stmET_S2_T0_:
.LFB11167:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 1
	strb	w0, [sp, 47]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11167:
	.size	_ZSt25__uninitialized_default_nIP2stmET_S2_T0_, .-_ZSt25__uninitialized_default_nIP2stmET_S2_T0_
	.section	.text._ZNSt16allocator_traitsISaI2stEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m, %function
_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m:
.LFB11168:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11168:
	.size	_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m
	.section	.text._ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, %function
_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE:
.LFB11169:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11169:
	.size	_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.section	.text._ZSt8_DestroyIP2stEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP2stEvT_S2_,comdat
	.align	2
	.weak	_ZSt8_DestroyIP2stEvT_S2_
	.type	_ZSt8_DestroyIP2stEvT_S2_, %function
_ZSt8_DestroyIP2stEvT_S2_:
.LFB11170:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11170:
	.size	_ZSt8_DestroyIP2stEvT_S2_, .-_ZSt8_DestroyIP2stEvT_S2_
	.section	.text._ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_, %function
_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_:
.LFB11255:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11255:
	.size	_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_
	.section	.text._ZSt11__addressofI2stEPT_RS1_,"axG",@progbits,_ZSt11__addressofI2stEPT_RS1_,comdat
	.align	2
	.weak	_ZSt11__addressofI2stEPT_RS1_
	.type	_ZSt11__addressofI2stEPT_RS1_, %function
_ZSt11__addressofI2stEPT_RS1_:
.LFB11257:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11257:
	.size	_ZSt11__addressofI2stEPT_RS1_, .-_ZSt11__addressofI2stEPT_RS1_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_,comdat
	.align	2
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_, %function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_:
.LFB11256:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L103
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofI2stEPT_RS1_
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZSt10_ConstructI2stJEEvPT_DpOT0_
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_
	str	x0, [sp, 24]
.L103:
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11256:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv:
.LFB11259:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 6148914691236517205
	movk	x0, 0x555, lsl 48
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11259:
	.size	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv:
.LFB11258:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L108
	ldr	x1, [sp, 32]
	mov	x0, -6148914691236517206
	movk	x0, 0xaaa, lsl 48
	cmp	x1, x0
	bls	.L109
	bl	_ZSt28__throw_bad_array_new_lengthv
.L109:
	bl	_ZSt17__throw_bad_allocv
.L108:
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11258:
	.size	_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.align	2
	.weak	_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_, %function
_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB11260:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIP2stET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIP2stET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIP2stET_S2_
	ldr	x3, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11260:
	.size	_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_:
.LFB11261:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11261:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv:
.LFB11367:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11367:
	.size	_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv
	.section	.text._ZSt10_ConstructI2stJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI2stJEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructI2stJEEvPT_DpOT0_
	.type	_ZSt10_ConstructI2stJEEvPT_DpOT0_, %function
_ZSt10_ConstructI2stJEEvPT_DpOT0_:
.LFB11368:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 24
	bl	_ZnwmPv
	str	xzr, [x0]
	str	xzr, [x0, 8]
	str	xzr, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11368:
	.size	_ZSt10_ConstructI2stJEEvPT_DpOT0_, .-_ZSt10_ConstructI2stJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_,comdat
	.align	2
	.weak	_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_
	.type	_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_, %function
_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_:
.LFB11369:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	ldr	x19, [sp, 72]
	ldr	x0, [sp, 64]
	bl	_ZSt17__size_to_integerm
	mov	x20, x0
	add	x0, sp, 72
	bl	_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	mov	w3, w21
	ldr	x2, [sp, 56]
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11369:
	.size	_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_, .-_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_
	.section	.text._ZSt12__niter_baseIP2stET_S2_,"axG",@progbits,_ZSt12__niter_baseIP2stET_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIP2stET_S2_
	.type	_ZSt12__niter_baseIP2stET_S2_, %function
_ZSt12__niter_baseIP2stET_S2_:
.LFB11370:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11370:
	.size	_ZSt12__niter_baseIP2stET_S2_, .-_ZSt12__niter_baseIP2stET_S2_
	.section	.text._ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.type	_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, %function
_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E:
.LFB11371:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L122
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L122:
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x0, x1
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11371:
	.size	_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, .-_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.section	.text._ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.align	2
	.weak	_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_, %function
_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB11439:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11439:
	.size	_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag, %function
_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag:
.LFB11440:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L127
	ldr	x0, [sp, 40]
	b	.L128
.L127:
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
.L128:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11440:
	.size	_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt8__fill_aIP2stS0_EvT_S2_RKT0_,"axG",@progbits,_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_,comdat
	.align	2
	.weak	_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_
	.type	_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_, %function
_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_:
.LFB11470:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11470:
	.size	_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_, .-_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_
	.section	.text._ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_,"axG",@progbits,_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_,comdat
	.align	2
	.weak	_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_
	.type	_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_, %function
_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_:
.LFB11474:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	b	.L131
.L132:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	mov	x2, x1
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	str	x0, [sp, 24]
.L131:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L132
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11474:
	.size	_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_, .-_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11524:
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
	bne	.L135
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L135
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
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorI2stSaIS0_EEC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, arr
	add	x1, x0, :lo12:arr
	adrp	x0, _ZNSt6vectorI2stSaIS0_EED1Ev
	add	x0, x0, :lo12:_ZNSt6vectorI2stSaIS0_EED1Ev
	bl	__cxa_atexit
.L135:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11524:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6vectorI2stSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorI2stSaIS0_EED2Ev
	.type	_ZNSt6vectorI2stSaIS0_EED2Ev, %function
_ZNSt6vectorI2stSaIS0_EED2Ev:
.LFB11540:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11540
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI2stSaIS0_EED2Ev
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11540:
	.section	.gcc_except_table._ZNSt6vectorI2stSaIS0_EED2Ev,"aG",@progbits,_ZNSt6vectorI2stSaIS0_EED5Ev,comdat
.LLSDA11540:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11540-.LLSDACSB11540
.LLSDACSB11540:
.LLSDACSE11540:
	.section	.text._ZNSt6vectorI2stSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI2stSaIS0_EED2Ev, .-_ZNSt6vectorI2stSaIS0_EED2Ev
	.weak	_ZNSt6vectorI2stSaIS0_EED1Ev
	.set	_ZNSt6vectorI2stSaIS0_EED1Ev,_ZNSt6vectorI2stSaIS0_EED2Ev
	.text
	.align	2
	.type	_GLOBAL__sub_I__Z5setupv, %function
_GLOBAL__sub_I__Z5setupv:
.LFB11550:
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
.LFE11550:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I__Z5setupv
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
