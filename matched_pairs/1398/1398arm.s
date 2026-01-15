	.text
	.p2align	2                               // -- Begin function put_refcnt
	.type	put_refcnt,@function
put_refcnt:                             // @put_refcnt
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	w4, [x29, #-36]
	adrp	x8, JVP_DTOA_FMT_MAX_LEN
	ldr	w8, [x8, :lo12:JVP_DTOA_FMT_MAX_LEN]
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-48]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-64]                 // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-56]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	w3, [x29, #-36]
	mov	w0, #32
	bl	put_char
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	w3, [x29, #-36]
	mov	w0, #40
	bl	put_char
	ldur	x1, [x29, #-64]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	w2, [x29, #-12]
	bl	jvp_dtoa_fmt
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	w3, [x29, #-36]
	bl	put_str
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	w3, [x29, #-36]
	mov	w0, #41
	bl	put_char
	ldur	x8, [x29, #-48]
	mov	sp, x8
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	put_refcnt, .Lfunc_end0-put_refcnt
                                        // -- End function
	.type	JVP_DTOA_FMT_MAX_LEN,@object    // @JVP_DTOA_FMT_MAX_LEN
	.bss
	.globl	JVP_DTOA_FMT_MAX_LEN
	.p2align	2
JVP_DTOA_FMT_MAX_LEN:
	.word	0                               // 0x0
	.size	JVP_DTOA_FMT_MAX_LEN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym put_refcnt
	.addrsig_sym put_char
	.addrsig_sym put_str
	.addrsig_sym jvp_dtoa_fmt
	.addrsig_sym JVP_DTOA_FMT_MAX_LEN