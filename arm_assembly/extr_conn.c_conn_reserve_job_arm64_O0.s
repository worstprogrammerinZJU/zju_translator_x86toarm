	.text
	.globl	conn_reserve_job                // -- Begin function conn_reserve_job
	.p2align	2
	.type	conn_reserve_job,@function
conn_reserve_job:                       // @conn_reserve_job
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	x9, [x8, #40]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	ldr	x9, [sp]
	ldr	w8, [x9, #32]
	add	w8, w8, #1
	str	w8, [x9, #32]
	bl	nanoseconds
	ldr	x8, [sp]
	ldr	x8, [x8, #16]
	add	x8, x0, x8
	ldr	x9, [sp]
	str	x8, [x9, #24]
	adrp	x8, Reserved
	ldr	w8, [x8, :lo12:Reserved]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #4
	ldr	x1, [sp]
	bl	job_list_insert
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x9, [sp, #8]
	mov	w8, #-1
	str	w8, [x9]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	conn_set_soonestjob
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	conn_reserve_job, .Lfunc_end0-conn_reserve_job
                                        // -- End function
	.type	Reserved,@object                // @Reserved
	.bss
	.globl	Reserved
	.p2align	2
Reserved:
	.word	0                               // 0x0
	.size	Reserved, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nanoseconds
	.addrsig_sym job_list_insert
	.addrsig_sym conn_set_soonestjob
	.addrsig_sym Reserved