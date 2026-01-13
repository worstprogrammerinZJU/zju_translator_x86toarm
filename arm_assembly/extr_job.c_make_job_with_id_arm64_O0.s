	.text
	.globl	make_job_with_id                // -- Begin function make_job_with_id
	.p2align	2
	.type	make_job_with_id,@function
make_job_with_id:                       // @make_job_with_id
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-12]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	w3, [sp, #28]
	str	x4, [sp, #16]
	str	x5, [sp, #8]
	ldr	w0, [sp, #28]
	bl	allocate_job
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_8
.LBB0_2:
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #32]
	ldr	x8, [sp, #8]
	adrp	x9, next_id
	ldr	x9, [x9, :lo12:next_id]
	subs	x8, x8, x9
	b.lt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	adrp	x9, next_id
	str	x8, [x9, :lo12:next_id]
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_7
.LBB0_6:
	adrp	x10, next_id
	ldr	x8, [x10, :lo12:next_id]
	add	x9, x8, #1
	str	x9, [x10, :lo12:next_id]
	ldr	x9, [sp]
	str	x8, [x9, #32]
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-12]
	ldr	x9, [sp]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	ldr	x8, [sp, #32]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x0, [sp]
	bl	store_job
	ldr	x8, [sp]
	ldr	w0, [x8]
	ldr	x1, [sp, #16]
	bl	TUBE_ASSIGN
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	make_job_with_id, .Lfunc_end0-make_job_with_id
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OOM"
	.size	.L.str, 4
	.type	next_id,@object                 // @next_id
	.bss
	.globl	next_id
	.p2align	3
next_id:
	.xword	0                               // 0x0
	.size	next_id, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym allocate_job
	.addrsig_sym twarnx
	.addrsig_sym store_job
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym next_id