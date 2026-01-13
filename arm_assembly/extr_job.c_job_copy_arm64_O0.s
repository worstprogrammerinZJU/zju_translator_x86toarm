	.text
	.globl	job_copy                        // -- Begin function job_copy
	.p2align	2
	.type	job_copy,@function
job_copy:                               // @job_copy
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	add	x0, x8, #32
	bl	malloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	add	x2, x8, #32
	bl	memcpy
	ldr	x0, [sp, #8]
	bl	job_list_reset
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #24]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #16]
	bl	TUBE_ASSIGN
	adrp	x8, Copy
	ldr	w8, [x8, :lo12:Copy]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	job_copy, .Lfunc_end0-job_copy
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OOM"
	.size	.L.str, 4
	.type	Copy,@object                    // @Copy
	.bss
	.globl	Copy
	.p2align	2
Copy:
	.word	0                               // 0x0
	.size	Copy, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym twarnx
	.addrsig_sym memcpy
	.addrsig_sym job_list_reset
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym Copy