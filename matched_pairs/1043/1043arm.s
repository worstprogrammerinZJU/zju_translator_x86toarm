	.text
	.p2align	2                               // -- Begin function read_source_file
	.type	read_source_file,@function
read_source_file:                       // @read_source_file
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fopen
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldr	x0, [sp, #24]
	bl	fileno
	add	x1, sp, #20
	bl	fstat
	ldr	w8, [sp, #20]
	mov	w9, #1
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	add	w0, w8, #1
	bl	malloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	w2, [sp, #20]
	ldr	x3, [sp, #24]
	bl	fread
	ldr	w8, [sp, #20]
	subs	w8, w0, w8
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #24]
	bl	fclose
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #24]
	bl	fclose
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9
	strb	wzr, [x8]
	ldr	x0, [sp, #8]
	bl	split
	stur	x0, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_source_file, .Lfunc_end0-read_source_file
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_source_file
	.addrsig_sym fopen
	.addrsig_sym fstat
	.addrsig_sym fileno
	.addrsig_sym malloc
	.addrsig_sym fread
	.addrsig_sym fclose
	.addrsig_sym split