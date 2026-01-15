	.text
	.globl	get_metadata                    // -- Begin function get_metadata
	.p2align	2
	.type	get_metadata,@function
get_metadata:                           // @get_metadata
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-24]
	stur	xzr, [x29, #-16]
	mov	w8, wzr
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	stur	wzr, [x29, #-8]
	ldur	x0, [x29, #-24]
	bl	read_data_cfg
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	option_find_str
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #32]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, wzr
	bl	option_find_str
	str	x0, [sp, #24]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #24]
	bl	get_labels
	stur	w0, [x29, #-12]
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #32]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, #2
	bl	option_find_int
	stur	w0, [x29, #-16]
	ldr	x0, [sp, #32]
	bl	free_list
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	get_metadata, .Lfunc_end0-get_metadata
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"names"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"labels"
	.size	.L.str.1, 7
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"No names or labels found\n"
	.size	.L.str.2, 26
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"classes"
	.size	.L.str.3, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_data_cfg
	.addrsig_sym option_find_str
	.addrsig_sym fprintf
	.addrsig_sym get_labels
	.addrsig_sym option_find_int
	.addrsig_sym free_list
	.addrsig_sym stderr