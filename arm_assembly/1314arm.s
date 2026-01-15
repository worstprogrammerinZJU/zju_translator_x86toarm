	.text
	.p2align	2                               // -- Begin function tsd_dec_ctx_get
	.type	tsd_dec_ctx_get,@function
tsd_dec_ctx_get:                        // @tsd_dec_ctx_get
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	adrp	x8, tsd_dec_ctx_init
	ldr	w1, [x8, :lo12:tsd_dec_ctx_init]
	adrp	x0, dec_ctx_once
	add	x0, x0, :lo12:dec_ctx_once
	bl	pthread_once
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	bl	pthread_getspecific
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_12
.LBB0_2:
	str	wzr, [sp, #8]
	adrp	x8, DEC_MAX_EMAX
	ldr	w8, [x8, :lo12:DEC_MAX_EMAX]
	str	w8, [sp, #12]
	adrp	x8, DEC_MIN_EMAX
	ldr	w8, [x8, :lo12:DEC_MIN_EMAX]
	str	w8, [sp, #16]
	adrp	x8, DEC_ROUND_HALF_UP
	ldr	w8, [x8, :lo12:DEC_ROUND_HALF_UP]
	str	w8, [sp, #20]
	str	wzr, [sp, #24]
	str	wzr, [sp, #28]
	str	wzr, [sp, #32]
	str	wzr, [sp, #36]
	ldur	x8, [x29, #-16]
	adrp	x9, dec_ctx_key
	add	x9, x9, :lo12:dec_ctx_key
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, DEC_MAX_DIGITS
	ldr	w8, [x8, :lo12:DEC_MAX_DIGITS]
	str	w8, [sp, #8]
	b	.LBB0_7
.LBB0_4:
	ldur	x8, [x29, #-16]
	adrp	x9, dec_ctx_dbl_key
	add	x9, x9, :lo12:dec_ctx_dbl_key
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, BIN64_DEC_PRECISION
	ldr	w8, [x8, :lo12:BIN64_DEC_PRECISION]
	str	w8, [sp, #8]
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	mov	w0, #32
	bl	malloc
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_11
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-24]
	ldur	q0, [sp, #8]
	str	q0, [x8]
	ldur	q0, [sp, #24]
	str	q0, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	ldur	x1, [x29, #-24]
	bl	pthread_setspecific
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	bl	abort
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	tsd_dec_ctx_get, .Lfunc_end0-tsd_dec_ctx_get
                                        // -- End function
	.type	dec_ctx_once,@object            // @dec_ctx_once
	.bss
	.globl	dec_ctx_once
	.p2align	2
dec_ctx_once:
	.word	0                               // 0x0
	.size	dec_ctx_once, 4
	.type	tsd_dec_ctx_init,@object        // @tsd_dec_ctx_init
	.globl	tsd_dec_ctx_init
	.p2align	2
tsd_dec_ctx_init:
	.word	0                               // 0x0
	.size	tsd_dec_ctx_init, 4
	.type	DEC_MAX_EMAX,@object            // @DEC_MAX_EMAX
	.globl	DEC_MAX_EMAX
	.p2align	2
DEC_MAX_EMAX:
	.word	0                               // 0x0
	.size	DEC_MAX_EMAX, 4
	.type	DEC_MIN_EMAX,@object            // @DEC_MIN_EMAX
	.globl	DEC_MIN_EMAX
	.p2align	2
DEC_MIN_EMAX:
	.word	0                               // 0x0
	.size	DEC_MIN_EMAX, 4
	.type	DEC_ROUND_HALF_UP,@object       // @DEC_ROUND_HALF_UP
	.globl	DEC_ROUND_HALF_UP
	.p2align	2
DEC_ROUND_HALF_UP:
	.word	0                               // 0x0
	.size	DEC_ROUND_HALF_UP, 4
	.type	dec_ctx_key,@object             // @dec_ctx_key
	.globl	dec_ctx_key
	.p2align	2
dec_ctx_key:
	.word	0                               // 0x0
	.size	dec_ctx_key, 4
	.type	DEC_MAX_DIGITS,@object          // @DEC_MAX_DIGITS
	.globl	DEC_MAX_DIGITS
	.p2align	2
DEC_MAX_DIGITS:
	.word	0                               // 0x0
	.size	DEC_MAX_DIGITS, 4
	.type	dec_ctx_dbl_key,@object         // @dec_ctx_dbl_key
	.globl	dec_ctx_dbl_key
	.p2align	2
dec_ctx_dbl_key:
	.word	0                               // 0x0
	.size	dec_ctx_dbl_key, 4
	.type	BIN64_DEC_PRECISION,@object     // @BIN64_DEC_PRECISION
	.globl	BIN64_DEC_PRECISION
	.p2align	2
BIN64_DEC_PRECISION:
	.word	0                               // 0x0
	.size	BIN64_DEC_PRECISION, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error: cannot store thread specific data"
	.size	.L.str, 41
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tsd_dec_ctx_get
	.addrsig_sym pthread_once
	.addrsig_sym pthread_getspecific
	.addrsig_sym malloc
	.addrsig_sym pthread_setspecific
	.addrsig_sym fprintf
	.addrsig_sym abort
	.addrsig_sym dec_ctx_once
	.addrsig_sym tsd_dec_ctx_init
	.addrsig_sym DEC_MAX_EMAX
	.addrsig_sym DEC_MIN_EMAX
	.addrsig_sym DEC_ROUND_HALF_UP
	.addrsig_sym dec_ctx_key
	.addrsig_sym DEC_MAX_DIGITS
	.addrsig_sym dec_ctx_dbl_key
	.addrsig_sym BIN64_DEC_PRECISION
	.addrsig_sym stderr