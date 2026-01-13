	.text
	.p2align	2                               // -- Begin function bench_put_delete_size
	.type	bench_put_delete_size,@function
bench_put_delete_size:                  // @bench_put_delete_size
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #176
	adrp	x8, srv
	add	x8, x8, :lo12:srv
	stur	x8, [x29, #-160]                // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	ctdir
	ldur	x9, [x29, #-160]                // 8-byte Folded Reload
	str	w0, [x9, #16]
	mov	w8, #1
	adrp	x10, srv
	str	w8, [x10, :lo12:srv]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-20]
	mov	w10, #16960
	movk	w10, #15, lsl #16
	mul	w8, w8, w10
	str	w8, [x9, #8]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #12]
	b	.LBB0_2
.LBB0_2:
	adrp	x8, JOB_DATA_SIZE_LIMIT_MAX
	ldr	w8, [x8, :lo12:JOB_DATA_SIZE_LIMIT_MAX]
	adrp	x9, job_data_size_limit
	str	w8, [x9, :lo12:job_data_size_limit]
	bl	SERVER
	stur	w0, [x29, #-24]
	ldur	w0, [x29, #-24]
	bl	mustdiallocal
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-136]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	mov	sp, x0
	stur	x0, [x29, #-168]                // 8-byte Folded Spill
	stur	x8, [x29, #-144]
	ldur	w2, [x29, #-8]
	mov	w1, #97
	bl	memset
	ldur	x8, [x29, #-168]                // 8-byte Folded Reload
	ldursw	x9, [x29, #-8]
	add	x8, x8, x9
	strb	wzr, [x8]
	ldur	w0, [x29, #-8]
	bl	ctsetbytes
	ldur	w2, [x29, #-8]
	sub	x0, x29, #128
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	bl	ctresettimer
	stur	wzr, [x29, #-148]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-148]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w0, [x29, #-28]
	sub	x1, x29, #128
	bl	mustsend
	ldur	x1, [x29, #-168]                // 8-byte Folded Reload
	ldur	w0, [x29, #-28]
	bl	mustsend
	ldur	w0, [x29, #-28]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	mustsend
	ldur	w0, [x29, #-28]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	ckrespsub
	ldur	w8, [x29, #-148]
	add	w2, w8, #1
	sub	x0, x29, #78
	stur	x0, [x29, #-176]                // 8-byte Folded Spill
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	sprintf
	ldur	x1, [x29, #-176]                // 8-byte Folded Reload
	ldur	w0, [x29, #-28]
	bl	mustsend
	ldur	w0, [x29, #-28]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-148]
	add	w8, w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_3
.LBB0_6:
	bl	ctstoptimer
	ldur	x8, [x29, #-136]
	mov	sp, x8
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	bench_put_delete_size, .Lfunc_end0-bench_put_delete_size
                                        // -- End function
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	20
	.size	srv, 20
	.type	JOB_DATA_SIZE_LIMIT_MAX,@object // @JOB_DATA_SIZE_LIMIT_MAX
	.globl	JOB_DATA_SIZE_LIMIT_MAX
	.p2align	2
JOB_DATA_SIZE_LIMIT_MAX:
	.word	0                               // 0x0
	.size	JOB_DATA_SIZE_LIMIT_MAX, 4
	.type	job_data_size_limit,@object     // @job_data_size_limit
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.word	0                               // 0x0
	.size	job_data_size_limit, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 0 %d\r\n"
	.size	.L.str, 15
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\r\n"
	.size	.L.str.1, 3
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"INSERTED "
	.size	.L.str.2, 10
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"delete %d\r\n"
	.size	.L.str.3, 12
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"DELETED\r\n"
	.size	.L.str.4, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bench_put_delete_size
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym memset
	.addrsig_sym ctsetbytes
	.addrsig_sym sprintf
	.addrsig_sym ctresettimer
	.addrsig_sym mustsend
	.addrsig_sym ckrespsub
	.addrsig_sym ckresp
	.addrsig_sym ctstoptimer
	.addrsig_sym srv
	.addrsig_sym JOB_DATA_SIZE_LIMIT_MAX
	.addrsig_sym job_data_size_limit