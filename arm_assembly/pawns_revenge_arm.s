	.arch armv8-a
	.file	"pawns_revenge.cpp"
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
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.text
	.align	2
	.global	_Z5validii
	.type	_Z5validii, %function
_Z5validii:
.LFB9696:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	blt	.L2
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bge	.L2
	ldr	w0, [sp, 8]
	cmp	w0, 0
	blt	.L2
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	bge	.L2
	mov	w0, 1
	b	.L3
.L2:
	mov	w0, 0
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9696:
	.size	_Z5validii, .-_Z5validii
	.section	.rodata
	.align	3
.LC0:
	.string	"-1\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9697:
	.cfi_startproc
	stp	x29, x30, [sp, -256]!
	.cfi_def_cfa_offset 256
	.cfi_offset 29, -256
	.cfi_offset 30, -248
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -240
	.cfi_offset 20, -232
	.cfi_offset 21, -224
	.cfi_offset 22, -216
	.cfi_offset 23, -208
	.cfi_offset 24, -200
	.cfi_offset 25, -192
	.cfi_offset 26, -184
	.cfi_offset 27, -176
	.cfi_offset 28, -168
	mov	x0, sp
	mov	x28, x0
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
	mov	w0, 0
	bl	_ZNSt8ios_base15sync_with_stdioEb
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 208]
	sxtw	x0, w1
	str	x0, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x2, x3, [x29, 128]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 184]
	ldr	x4, [x29, 184]
	orr	x0, x0, x4
	str	x0, [x29, 184]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 176]
	sxtw	x19, w1
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 200]
	sxtw	x0, w1
	mov	x26, x0
	mov	x27, 0
	sxtw	x0, w2
	mov	x24, x0
	mov	x25, 0
	mul	x3, x26, x24
	umulh	x0, x26, x24
	madd	x0, x27, x24, x0
	madd	x0, x26, x25, x0
	str	x3, [x29, 112]
	str	x0, [x29, 120]
	ldp	x4, x5, [x29, 112]
	mov	x0, x4
	lsr	x0, x0, 61
	mov	x3, x5
	lsl	x3, x3, 3
	str	x3, [x29, 168]
	ldr	x3, [x29, 168]
	orr	x0, x0, x3
	str	x0, [x29, 168]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 160]
	sxtw	x0, w1
	mov	x22, x0
	mov	x23, 0
	sxtw	x0, w2
	mov	x20, x0
	mov	x21, 0
	mul	x3, x22, x20
	umulh	x0, x22, x20
	madd	x0, x23, x20, x0
	madd	x0, x22, x21, x0
	str	x3, [x29, 96]
	str	x0, [x29, 104]
	ldp	x4, x5, [x29, 96]
	mov	x0, x4
	lsr	x0, x0, 61
	mov	x3, x5
	lsl	x3, x3, 3
	str	x3, [x29, 152]
	ldr	x3, [x29, 152]
	orr	x0, x0, x3
	str	x0, [x29, 152]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 144]
	sxtw	x1, w1
	sxtw	x0, w2
	mul	x0, x1, x0
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L6:
	cmp	sp, x1
	beq	.L7
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L6
.L7:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L8
	str	xzr, [sp, 1024]
.L8:
	add	x0, sp, 16
	add	x0, x0, 0
	str	x0, [x29, 192]
	mov	w0, -10
	str	w0, [x29, 252]
	mov	w0, -10
	str	w0, [x29, 248]
	str	wzr, [x29, 244]
	b	.L9
.L13:
	str	wzr, [x29, 240]
	b	.L10
.L12:
	ldrsw	x1, [x29, 240]
	ldrsw	x0, [x29, 244]
	mul	x0, x0, x19
	add	x0, x1, x0
	ldr	x1, [x29, 192]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_
	ldr	x2, [x29, 192]
	ldrsw	x1, [x29, 240]
	ldrsw	x0, [x29, 244]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 75
	bne	.L11
	ldr	w0, [x29, 244]
	str	w0, [x29, 252]
	ldr	w0, [x29, 240]
	str	w0, [x29, 248]
.L11:
	ldr	w0, [x29, 240]
	add	w0, w0, 1
	str	w0, [x29, 240]
.L10:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [x29, 240]
	cmp	w1, w0
	blt	.L12
	ldr	w0, [x29, 244]
	add	w0, w0, 1
	str	w0, [x29, 244]
.L9:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [x29, 244]
	cmp	w1, w0
	blt	.L13
	str	xzr, [x29, 232]
	strb	wzr, [x29, 231]
	str	wzr, [x29, 224]
	b	.L14
.L31:
	ldrb	w0, [x29, 231]
	cmp	w0, 0
	bne	.L35
	str	wzr, [x29, 220]
	b	.L17
.L30:
	ldr	x2, [x29, 192]
	ldrsw	x1, [x29, 220]
	ldrsw	x0, [x29, 224]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L18
	ldr	w1, [x29, 252]
	ldr	w0, [x29, 224]
	sub	w0, w1, w0
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bgt	.L19
	ldr	w1, [x29, 248]
	ldr	w0, [x29, 220]
	sub	w0, w1, w0
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bgt	.L19
	ldr	x2, [x29, 192]
	ldrsw	x1, [x29, 220]
	ldrsw	x0, [x29, 224]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 45
	strb	w1, [x0]
	b	.L18
.L19:
	ldr	w0, [x29, 220]
	add	w0, w0, 2
	mov	w1, w0
	ldr	w0, [x29, 224]
	bl	_Z5validii
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	ldr	w0, [x29, 220]
	add	w0, w0, 2
	ldr	x2, [x29, 192]
	sxtw	x1, w0
	ldrsw	x0, [x29, 224]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L20
	ldr	w0, [x29, 224]
	add	w3, w0, 1
	ldr	w0, [x29, 220]
	add	w0, w0, 1
	ldr	x2, [x29, 192]
	sxtw	x1, w0
	sxtw	x0, w3
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L20
	mov	w0, 1
	b	.L21
.L20:
	mov	w0, 0
.L21:
	cmp	w0, 0
	beq	.L22
	ldr	x0, [x29, 232]
	add	x0, x0, 1
	str	x0, [x29, 232]
	ldr	x2, [x29, 192]
	ldrsw	x1, [x29, 220]
	ldrsw	x0, [x29, 224]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 45
	strb	w1, [x0]
	ldr	w0, [x29, 220]
	add	w0, w0, 2
	ldr	x2, [x29, 192]
	sxtw	x1, w0
	ldrsw	x0, [x29, 224]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 45
	strb	w1, [x0]
	b	.L18
.L22:
	ldr	w0, [x29, 224]
	add	w2, w0, 1
	ldr	w0, [x29, 220]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	_Z5validii
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	ldr	w0, [x29, 224]
	add	w3, w0, 1
	ldr	w0, [x29, 220]
	sub	w0, w0, #1
	ldr	x2, [x29, 192]
	sxtw	x1, w0
	sxtw	x0, w3
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L23
	mov	w0, 1
	b	.L24
.L23:
	mov	w0, 0
.L24:
	cmp	w0, 0
	beq	.L25
	ldr	x0, [x29, 232]
	add	x0, x0, 1
	str	x0, [x29, 232]
	b	.L18
.L25:
	ldr	w0, [x29, 224]
	add	w2, w0, 1
	ldr	w0, [x29, 220]
	add	w0, w0, 1
	mov	w1, w0
	mov	w0, w2
	bl	_Z5validii
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L26
	ldr	w0, [x29, 224]
	add	w3, w0, 1
	ldr	w0, [x29, 220]
	add	w0, w0, 1
	ldr	x2, [x29, 192]
	sxtw	x1, w0
	sxtw	x0, w3
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L26
	mov	w0, 1
	b	.L27
.L26:
	mov	w0, 0
.L27:
	cmp	w0, 0
	beq	.L28
	ldr	x0, [x29, 232]
	add	x0, x0, 1
	str	x0, [x29, 232]
	b	.L18
.L28:
	mov	w0, 1
	strb	w0, [x29, 231]
	b	.L29
.L18:
	ldr	w0, [x29, 220]
	add	w0, w0, 1
	str	w0, [x29, 220]
.L17:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [x29, 220]
	cmp	w1, w0
	blt	.L30
.L29:
	ldr	w0, [x29, 224]
	add	w0, w0, 1
	str	w0, [x29, 224]
.L14:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [x29, 224]
	cmp	w1, w0
	blt	.L31
	b	.L16
.L35:
	nop
.L16:
	ldrb	w0, [x29, 231]
	cmp	w0, 0
	beq	.L32
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L33
.L32:
	ldr	x1, [x29, 232]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEl
	mov	w1, 10
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.L33:
	mov	w0, 0
	mov	sp, x28
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 256
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE9697:
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11451:
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
	bne	.L38
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L38
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
.L38:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11451:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_n, %function
_GLOBAL__sub_I_n:
.LFB11474:
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
.LFE11474:
	.size	_GLOBAL__sub_I_n, .-_GLOBAL__sub_I_n
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_n
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
