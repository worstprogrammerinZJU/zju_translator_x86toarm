	.text
	.p2align	2                               // -- Begin function try_include
	.type	try_include,@function
try_include:                            // @try_include
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	bl	fullpath
	str	x0, [sp, #8]
	adrp	x8, once
	ldr	w0, [x8, :lo12:once]
	ldr	x1, [sp, #8]
	bl	map_get
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	guarded
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_4:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fopen
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_6:
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, once
	ldr	w0, [x8, :lo12:once]
	ldr	x1, [sp, #8]
	mov	x2, #1
	bl	map_put
	b	.LBB0_8
.LBB0_8:
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	make_file
	bl	stream_push
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	try_include, .Lfunc_end0-try_include
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/%s"
	.size	.L.str, 6
	.type	once,@object                    // @once
	.bss
	.globl	once
	.p2align	2
once:
	.word	0                               // 0x0
	.size	once, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym try_include
	.addrsig_sym fullpath
	.addrsig_sym format
	.addrsig_sym map_get
	.addrsig_sym guarded
	.addrsig_sym fopen
	.addrsig_sym map_put
	.addrsig_sym stream_push
	.addrsig_sym make_file
	.addrsig_sym once