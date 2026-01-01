	.arch armv8-a
	.file	"round_subset.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
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
	.global	dadsadasda
	.bss
	.align	2
	.type	dadsadasda, %object
	.size	dadsadasda, 4
dadsadasda:
	.zero	4
	.section	.rodata
	.align	2
	.type	_ZL3INF, %object
	.size	_ZL3INF, 4
_ZL3INF:
	.word	1061109567
	.align	3
	.type	_ZL5LLINF, %object
	.size	_ZL5LLINF, 8
_ZL5LLINF:
	.xword	1000000000000000000
	.align	2
	.type	_ZL4MAXN, %object
	.size	_ZL4MAXN, 4
_ZL4MAXN:
	.word	203
	.global	N
	.bss
	.align	2
	.type	N, %object
	.size	N, 4
N:
	.zero	4
	.global	K
	.align	2
	.type	K, %object
	.size	K, 4
K:
	.zero	4
	.global	CNT2
	.align	3
	.type	CNT2, %object
	.size	CNT2, 812
CNT2:
	.zero	812
	.global	CNT5
	.align	3
	.type	CNT5, %object
	.size	CNT5, 812
CNT5:
	.zero	812
	.global	DP
	.align	3
	.type	DP, %object
	.size	DP, 9890160
DP:
	.zero	9890160
	.section	.rodata
	.align	3
.LC0:
	.string	"%d %d"
	.align	3
.LC1:
	.string	"%lld"
	.align	3
.LC2:
	.string	"%lld\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5324:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	adrp	x0, K
	add	x2, x0, :lo12:K
	adrp	x0, N
	add	x1, x0, :lo12:N
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w1, w0
	adrp	x0, dadsadasda
	add	x0, x0, :lo12:dadsadasda
	str	w1, [x0]
	str	wzr, [sp, 76]
	b	.L2
.L7:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	w1, w0
	adrp	x0, dadsadasda
	add	x0, x0, :lo12:dadsadasda
	str	w1, [x0]
	b	.L3
.L4:
	ldr	x0, [sp, 16]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 16]
	adrp	x0, CNT2
	add	x0, x0, :lo12:CNT2
	ldrsw	x1, [sp, 76]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, CNT2
	add	x0, x0, :lo12:CNT2
	ldrsw	x1, [sp, 76]
	str	w2, [x0, x1, lsl 2]
.L3:
	ldr	x0, [sp, 16]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L4
	b	.L5
.L6:
	ldr	x0, [sp, 16]
	mov	x1, 7378697629483820646
	movk	x1, 0x6667, lsl 0
	smulh	x1, x0, x1
	asr	x1, x1, 1
	asr	x0, x0, 63
	sub	x0, x1, x0
	str	x0, [sp, 16]
	adrp	x0, CNT5
	add	x0, x0, :lo12:CNT5
	ldrsw	x1, [sp, 76]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, CNT5
	add	x0, x0, :lo12:CNT5
	ldrsw	x1, [sp, 76]
	str	w2, [x0, x1, lsl 2]
.L5:
	ldr	x2, [sp, 16]
	mov	x0, 7378697629483820646
	movk	x0, 0x6667, lsl 0
	smulh	x0, x2, x0
	asr	x1, x0, 1
	asr	x0, x2, 63
	sub	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	sub	x1, x2, x0
	cmp	x1, 0
	beq	.L6
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L2:
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L7
	str	wzr, [sp, 72]
	b	.L8
.L11:
	str	wzr, [sp, 68]
	b	.L9
.L10:
	adrp	x0, DP
	add	x0, x0, :lo12:DP
	ldrsw	x1, [sp, 68]
	ldrsw	x3, [sp, 72]
	mov	x2, 6090
	mul	x2, x3, x2
	add	x1, x2, x1
	mov	x2, 1486618624
	movk	x2, 0x494c, lsl 32
	movk	x2, 0xf21f, lsl 48
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L9:
	ldr	w1, [sp, 68]
	mov	w0, 6089
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L8:
	ldr	w0, [sp, 72]
	cmp	w0, 202
	ble	.L11
	adrp	x0, DP
	add	x0, x0, :lo12:DP
	str	xzr, [x0]
	str	wzr, [sp, 64]
	b	.L12
.L17:
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w0, [x0]
	str	w0, [sp, 60]
	b	.L13
.L16:
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w1, [x0]
	mov	w0, 27
	mul	w1, w1, w0
	adrp	x0, CNT5
	add	x0, x0, :lo12:CNT5
	ldrsw	x2, [sp, 64]
	ldr	w2, [x0, x2, lsl 2]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w0, [x0]
	add	w0, w2, w0
	sub	w0, w1, w0
	str	w0, [sp, 56]
	b	.L14
.L15:
	ldr	w0, [sp, 60]
	add	w2, w0, 1
	adrp	x0, CNT5
	add	x0, x0, :lo12:CNT5
	ldrsw	x1, [sp, 64]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 56]
	add	w0, w1, w0
	sxtw	x1, w0
	sxtw	x2, w2
	mov	x0, 6090
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 3
	adrp	x0, DP
	add	x0, x0, :lo12:DP
	add	x4, x1, x0
	adrp	x0, DP
	add	x0, x0, :lo12:DP
	ldrsw	x1, [sp, 56]
	ldrsw	x3, [sp, 60]
	mov	x2, 6090
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	x1, [x0, x1, lsl 3]
	adrp	x0, CNT2
	add	x0, x0, :lo12:CNT2
	ldrsw	x2, [sp, 64]
	ldr	w0, [x0, x2, lsl 2]
	sxtw	x0, w0
	add	x0, x1, x0
	str	x0, [sp, 32]
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x4
	bl	_ZSt3maxIxERKT_S2_S2_
	mov	x2, x0
	ldr	w0, [sp, 60]
	add	w3, w0, 1
	adrp	x0, CNT5
	add	x0, x0, :lo12:CNT5
	ldrsw	x1, [sp, 64]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 56]
	add	w1, w1, w0
	ldr	x2, [x2]
	adrp	x0, DP
	add	x0, x0, :lo12:DP
	sxtw	x1, w1
	sxtw	x4, w3
	mov	x3, 6090
	mul	x3, x4, x3
	add	x1, x3, x1
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L14:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bge	.L15
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
.L13:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bge	.L16
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L12:
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 64]
	cmp	w1, w0
	blt	.L17
	str	xzr, [sp, 24]
	str	wzr, [sp, 52]
	b	.L18
.L19:
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w0, [x0]
	ldrsw	x1, [sp, 52]
	sxtw	x2, w0
	mov	x0, 6090
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 3
	adrp	x0, DP
	add	x0, x0, :lo12:DP
	add	x2, x1, x0
	ldrsw	x0, [sp, 52]
	str	x0, [sp, 40]
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZSt3minIxERKT_S2_S2_
	mov	x1, x0
	add	x0, sp, 24
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 24]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L18:
	ldr	w1, [sp, 52]
	mov	w0, 6089
	cmp	w1, w0
	ble	.L19
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5324:
	.size	main, .-main
	.section	.text._ZSt3maxIxERKT_S2_S2_,"axG",@progbits,_ZSt3maxIxERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxIxERKT_S2_S2_
	.type	_ZSt3maxIxERKT_S2_S2_, %function
_ZSt3maxIxERKT_S2_S2_:
.LFB5687:
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
	bge	.L22
	ldr	x0, [sp]
	b	.L23
.L22:
	ldr	x0, [sp, 8]
.L23:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5687:
	.size	_ZSt3maxIxERKT_S2_S2_, .-_ZSt3maxIxERKT_S2_S2_
	.section	.text._ZSt3minIxERKT_S2_S2_,"axG",@progbits,_ZSt3minIxERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIxERKT_S2_S2_
	.type	_ZSt3minIxERKT_S2_S2_, %function
_ZSt3minIxERKT_S2_S2_:
.LFB5688:
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
	bge	.L25
	ldr	x0, [sp]
	b	.L26
.L25:
	ldr	x0, [sp, 8]
.L26:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5688:
	.size	_ZSt3minIxERKT_S2_S2_, .-_ZSt3minIxERKT_S2_S2_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB6060:
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
	bne	.L29
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L29
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
.L29:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6060:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_dadsadasda, %function
_GLOBAL__sub_I_dadsadasda:
.LFB6061:
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
.LFE6061:
	.size	_GLOBAL__sub_I_dadsadasda, .-_GLOBAL__sub_I_dadsadasda
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_dadsadasda
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
