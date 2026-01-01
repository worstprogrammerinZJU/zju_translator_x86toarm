	.arch armv8-a
	.file	"D_Caesar_s_Legions.cpp"
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
	.global	n1
	.bss
	.align	2
	.type	n1, %object
	.size	n1, 4
n1:
	.zero	4
	.global	n2
	.align	2
	.type	n2, %object
	.size	n2, 4
n2:
	.zero	4
	.global	k1
	.align	2
	.type	k1, %object
	.size	k1, 4
k1:
	.zero	4
	.global	k2
	.align	2
	.type	k2, %object
	.size	k2, 4
k2:
	.zero	4
	.section	.rodata
	.align	2
	.type	_ZL3mod, %object
	.size	_ZL3mod, 4
_ZL3mod:
	.word	100000000
	.global	dp
	.bss
	.align	3
	.type	dp, %object
	.size	dp, 9922500
dp:
	.zero	9922500
	.text
	.align	2
	.global	_Z3soliiii
	.type	_Z3soliiii, %function
_Z3soliiii:
.LFB9697:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	str	w3, [sp, 16]
	adrp	x0, n1
	add	x0, x0, :lo12:n1
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L3
	adrp	x0, n2
	add	x0, x0, :lo12:n2
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L3
	mov	w0, 1
	b	.L4
.L3:
	ldrsw	x3, [sp, 16]
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 5
	add	x0, x0, x1
	ldrsw	x2, [sp, 20]
	mov	x1, x2
	lsl	x1, x1, 4
	sub	x1, x1, x2
	add	x0, x0, x1
	add	x1, x3, x0
	ldrsw	x2, [sp, 28]
	mov	x0, 23625
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L5
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	b	.L4
.L5:
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	adrp	x0, k1
	add	x0, x0, :lo12:k1
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L6
	adrp	x0, n1
	add	x0, x0, :lo12:n1
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 28]
	add	w4, w0, 1
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	mov	w3, 0
	mov	w2, w0
	ldr	w1, [sp, 24]
	mov	w0, w4
	bl	_Z3soliiii
	str	w0, [sp, 44]
.L6:
	adrp	x0, k2
	add	x0, x0, :lo12:k2
	ldr	w0, [x0]
	ldr	w1, [sp, 16]
	cmp	w1, w0
	bge	.L7
	adrp	x0, n2
	add	x0, x0, :lo12:n2
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	mov	w3, w0
	mov	w2, 0
	ldr	w0, [sp, 28]
	bl	_Z3soliiii
	str	w0, [sp, 40]
.L7:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	mov	w0, 15241
	movk	w0, 0x55e6, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 25
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 57600
	movk	w2, 0x5f5, lsl 16
	mul	w0, w0, w2
	sub	w0, w1, w0
	ldr	x1, [sp, 32]
	str	w0, [x1]
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
.L4:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9697:
	.size	_Z3soliiii, .-_Z3soliiii
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
	adrp	x0, n1
	add	x1, x0, :lo12:n1
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, n2
	add	x1, x0, :lo12:n2
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, k1
	add	x1, x0, :lo12:k1
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, k2
	add	x1, x0, :lo12:k2
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, 26564
	movk	x2, 0x97, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	mov	w3, 0
	mov	w2, 0
	mov	w1, 0
	mov	w0, 0
	bl	_Z3soliiii
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
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11447:
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
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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
.L12:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11447:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__Z5setupv, %function
_GLOBAL__sub_I__Z5setupv:
.LFB11470:
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
.LFE11470:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I__Z5setupv
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
