	.text
	.globl	load_alphabet                   // -- Begin function load_alphabet
	.p2align	2
	.type	load_alphabet,@function
load_alphabet:                          // @load_alphabet
// %bb.0:
	sub	sp, sp, #320
	stp	x29, x30, [sp, #288]            // 16-byte Folded Spill
	str	x28, [sp, #304]                 // 8-byte Folded Spill
	add	x29, sp, #288
	mov	w0, #8
	stur	w0, [x29, #-12]
	mov	w1, #4
	bl	calloc
	stur	x0, [x29, #-24]
	stur	wzr, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-8]
	subs	w8, w8, #8
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #128
	mov	w1, #4
	bl	calloc
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-8]
	str	x0, [x8, x9, lsl #3]
	mov	w8, #32
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-4]
	subs	w8, w8, #127
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w2, [x29, #-4]
	ldur	w3, [x29, #-8]
	add	x0, sp, #8
	str	x0, [sp]                        // 8-byte Folded Spill
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	ldr	x0, [sp]                        // 8-byte Folded Reload
	mov	w2, wzr
	mov	w1, w2
	bl	load_image_color
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-8]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-4]
	str	w0, [x8, x9, lsl #2]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_1
.LBB0_8:
	ldur	x0, [x29, #-24]
	ldr	x28, [sp, #304]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #288]            // 16-byte Folded Reload
	add	sp, sp, #320
	ret
.Lfunc_end0:
	.size	load_alphabet, .Lfunc_end0-load_alphabet
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"data/labels/%d_%d.png"
	.size	.L.str, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym sprintf
	.addrsig_sym load_image_color