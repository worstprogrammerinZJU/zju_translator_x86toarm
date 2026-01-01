	.arch armv8-a
	.file	"C_Hamburgers.cpp"
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
	.global	b
	.align	3
	.type	b, %object
	.size	b, 8
b:
	.zero	8
	.global	ss
	.align	3
	.type	ss, %object
	.size	ss, 8
ss:
	.zero	8
	.global	c
	.align	3
	.type	c, %object
	.size	c, 8
c:
	.zero	8
	.global	pb
	.align	3
	.type	pb, %object
	.size	pb, 8
pb:
	.zero	8
	.global	ps
	.align	3
	.type	ps, %object
	.size	ps, 8
ps:
	.zero	8
	.global	pc
	.align	3
	.type	pc, %object
	.size	pc, 8
pc:
	.zero	8
	.global	cb
	.align	3
	.type	cb, %object
	.size	cb, 8
cb:
	.zero	8
	.global	cs
	.align	3
	.type	cs, %object
	.size	cs, 8
cs:
	.zero	8
	.global	cc
	.align	3
	.type	cc, %object
	.size	cc, 8
cc:
	.zero	8
	.global	k
	.align	3
	.type	k, %object
	.size	k, 8
k:
	.zero	8
	.text
	.align	2
	.global	_Z3canx
	.type	_Z3canx, %function
_Z3canx:
.LFB9697:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 32]
	adrp	x0, cb
	add	x0, x0, :lo12:cb
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	mul	x1, x1, x0
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	x0, [x0]
	sub	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 104]
	str	xzr, [sp, 48]
	adrp	x0, cs
	add	x0, x0, :lo12:cs
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	mul	x1, x1, x0
	adrp	x0, ss
	add	x0, x0, :lo12:ss
	ldr	x0, [x0]
	sub	x0, x1, x0
	str	x0, [sp, 56]
	add	x1, sp, 56
	add	x0, sp, 48
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 96]
	str	xzr, [sp, 64]
	adrp	x0, cc
	add	x0, x0, :lo12:cc
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	mul	x1, x1, x0
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	x0, [x0]
	sub	x0, x1, x0
	str	x0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 64
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 88]
	adrp	x0, pb
	add	x0, x0, :lo12:pb
	ldr	x1, [x0]
	ldr	x0, [sp, 104]
	mul	x1, x1, x0
	adrp	x0, ps
	add	x0, x0, :lo12:ps
	ldr	x2, [x0]
	ldr	x0, [sp, 96]
	mul	x0, x2, x0
	add	x1, x1, x0
	adrp	x0, pc
	add	x0, x0, :lo12:pc
	ldr	x2, [x0]
	ldr	x0, [sp, 88]
	mul	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 80]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	x0, [x0]
	ldr	x1, [sp, 80]
	cmp	x1, x0
	cset	w0, le
	and	w0, w0, 255
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9697:
	.size	_Z3canx, .-_Z3canx
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9698:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	bl	_Z5setupv
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, b
	add	x1, x0, :lo12:b
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, ss
	add	x1, x0, :lo12:ss
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, c
	add	x1, x0, :lo12:c
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, pb
	add	x1, x0, :lo12:pb
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, ps
	add	x1, x0, :lo12:ps
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, pc
	add	x1, x0, :lo12:pc
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, k
	add	x1, x0, :lo12:k
	mov	x0, x2
	bl	_ZNSirsERx
	str	wzr, [sp, 76]
	b	.L5
.L9:
	ldrsw	x0, [sp, 76]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 66
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	adrp	x0, cb
	add	x0, x0, :lo12:cb
	ldr	x0, [x0]
	add	x1, x0, 1
	adrp	x0, cb
	add	x0, x0, :lo12:cb
	str	x1, [x0]
	b	.L7
.L6:
	ldrsw	x0, [sp, 76]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 83
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	adrp	x0, cs
	add	x0, x0, :lo12:cs
	ldr	x0, [x0]
	add	x1, x0, 1
	adrp	x0, cs
	add	x0, x0, :lo12:cs
	str	x1, [x0]
	b	.L7
.L8:
	adrp	x0, cc
	add	x0, x0, :lo12:cc
	ldr	x0, [x0]
	add	x1, x0, 1
	adrp	x0, cc
	add	x0, x0, :lo12:cc
	str	x1, [x0]
.L7:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L5:
	ldrsw	x19, [sp, 76]
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	str	xzr, [sp, 64]
	mov	x0, 40960
	movk	x0, 0x4e72, lsl 16
	movk	x0, 0x918, lsl 32
	str	x0, [sp, 56]
	str	xzr, [sp, 48]
	b	.L10
.L12:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_Z3canx
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 64]
	b	.L10
.L11:
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 56]
.L10:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L12
	ldr	x1, [sp, 48]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEx
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9698:
	.size	main, .-main
	.section	.text._ZSt3maxIxERKT_S2_S2_,"axG",@progbits,_ZSt3maxIxERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxIxERKT_S2_S2_
	.type	_ZSt3maxIxERKT_S2_S2_, %function
_ZSt3maxIxERKT_S2_S2_:
.LFB10387:
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
	bge	.L15
	ldr	x0, [sp]
	b	.L16
.L15:
	ldr	x0, [sp, 8]
.L16:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10387:
	.size	_ZSt3maxIxERKT_S2_S2_, .-_ZSt3maxIxERKT_S2_S2_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11450:
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
	bne	.L19
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L19
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
.L19:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11450:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__Z5setupv, %function
_GLOBAL__sub_I__Z5setupv:
.LFB11473:
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
.LFE11473:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I__Z5setupv
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
