	.text
	.globl	cttest_heap_insert_and_remove_one // -- Begin function cttest_heap_insert_and_remove_one
	.p2align	2
	.type	cttest_heap_insert_and_remove_one,@function
cttest_heap_insert_and_remove_one:      // @cttest_heap_insert_and_remove_one
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	sub	x8, x29, #24
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	xzr, [x29, #-24]
	mov	w4, wzr
	str	w4, [sp, #4]                    // 4-byte Folded Spill
	stur	wzr, [x29, #-16]
	adrp	x8, job_setpos
	ldr	w8, [x8, :lo12:job_setpos]
	stur	w8, [x29, #-12]
	adrp	x8, job_pri_less
	ldr	w8, [x8, :lo12:job_pri_less]
	stur	w8, [x29, #-8]
	mov	w2, #1
	mov	w0, w2
	mov	w1, w4
	mov	w3, w4
	bl	make_job
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	mov	w0, w8
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	assertf
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x1, [sp, #32]
	bl	heapinsert
	str	w0, [sp, #28]
	ldr	w0, [sp, #28]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	assertf
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	heapremove
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	assertf
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	assertf
	ldur	w0, [x29, #-16]
	bl	free
	ldr	x0, [sp, #32]
	bl	job_free
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	cttest_heap_insert_and_remove_one, .Lfunc_end0-cttest_heap_insert_and_remove_one
                                        // -- End function
	.type	job_setpos,@object              // @job_setpos
	.bss
	.globl	job_setpos
	.p2align	2
job_setpos:
	.word	0                               // 0x0
	.size	job_setpos, 4
	.type	job_pri_less,@object            // @job_pri_less
	.globl	job_pri_less
	.p2align	2
job_pri_less:
	.word	0                               // 0x0
	.size	job_pri_less, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"allocate job"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"insert should succeed"
	.size	.L.str.1, 22
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"j1 should come back out"
	.size	.L.str.2, 24
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"h should be empty."
	.size	.L.str.3, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_job
	.addrsig_sym assertf
	.addrsig_sym heapinsert
	.addrsig_sym heapremove
	.addrsig_sym free
	.addrsig_sym job_free
	.addrsig_sym job_setpos
	.addrsig_sym job_pri_less