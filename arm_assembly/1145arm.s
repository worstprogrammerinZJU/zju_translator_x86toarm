	.text
	.globl	show_image_layers               // -- Begin function show_image_layers
	.p2align	2
	.type	show_image_layers,@function
show_image_layers:                      // @show_image_layers
// %bb.0:
	sub	sp, sp, #320
	stp	x29, x30, [sp, #288]            // 16-byte Folded Spill
	str	x28, [sp, #304]                 // 8-byte Folded Spill
	add	x29, sp, #288
	mov	w8, w0
	stur	w8, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x2, [x29, #-16]
	ldur	w3, [x29, #-20]
	add	x0, sp, #12
	str	x0, [sp]                        // 8-byte Folded Spill
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	ldur	w1, [x29, #-20]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	get_image_layer
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	mov	w0, w8
	mov	w2, #1
	bl	show_image
	ldr	w8, [sp, #8]
	mov	w0, w8
	bl	free_image
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
	ldr	x28, [sp, #304]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #288]            // 16-byte Folded Reload
	add	sp, sp, #320
	ret
.Lfunc_end0:
	.size	show_image_layers, .Lfunc_end0-show_image_layers
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s - Layer %d"
	.size	.L.str, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym get_image_layer
	.addrsig_sym show_image
	.addrsig_sym free_image