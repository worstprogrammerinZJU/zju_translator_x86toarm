	.text
	.globl	fopen                           // -- Begin function fopen
	.p2align	2
	.type	fopen,@function
fopen:                                  // @fopen
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	adrp	x0, fopen
	add	x0, x0, :lo12:fopen
	bl	GET_REAL
	adrp	x8, fail_close
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, :lo12:fail_close]
	adrp	x8, fail_write
	str	xzr, [x8, :lo12:fail_write]
	adrp	x8, fail_read
	str	xzr, [x8, :lo12:fail_read]
	adrp	x8, fail
	str	xzr, [x8, :lo12:fail]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	real_fopen
	str	x0, [sp, #8]
	adrp	x8, EIO
	ldr	w8, [x8, :lo12:EIO]
	adrp	x9, error
	str	w8, [x9, :lo12:error]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	adrp	x9, fail_read
	str	x8, [x9, :lo12:fail_read]
	adrp	x9, fail
	str	x8, [x9, :lo12:fail]
	b	.LBB0_12
.LBB0_2:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #10
	bl	strncmp
	cbnz	x0, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	adrp	x9, fail_write
	str	x8, [x9, :lo12:fail_write]
	adrp	x9, fail
	str	x8, [x9, :lo12:fail]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, ENOSPC
	ldr	w8, [x8, :lo12:ENOSPC]
	adrp	x9, error
	str	w8, [x9, :lo12:error]
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_11
.LBB0_6:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w2, #10
	bl	strncmp
	cbnz	x0, .LBB0_10
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]
	adrp	x9, fail_close
	str	x8, [x9, :lo12:fail_close]
	adrp	x9, fail
	str	x8, [x9, :lo12:fail]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcmp
	cbnz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x8, ENOSPC
	ldr	w8, [x8, :lo12:ENOSPC]
	adrp	x9, error
	str	w8, [x9, :lo12:error]
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	fopen, .Lfunc_end0-fopen
                                        // -- End function
	.type	fail_close,@object              // @fail_close
	.bss
	.globl	fail_close
	.p2align	3
fail_close:
	.xword	0
	.size	fail_close, 8
	.type	fail_write,@object              // @fail_write
	.globl	fail_write
	.p2align	3
fail_write:
	.xword	0
	.size	fail_write, 8
	.type	fail_read,@object               // @fail_read
	.globl	fail_read
	.p2align	3
fail_read:
	.xword	0
	.size	fail_read, 8
	.type	fail,@object                    // @fail
	.globl	fail
	.p2align	3
fail:
	.xword	0
	.size	fail, 8
	.type	EIO,@object                     // @EIO
	.globl	EIO
	.p2align	2
EIO:
	.word	0                               // 0x0
	.size	EIO, 4
	.type	error,@object                   // @error
	.globl	error
	.p2align	2
error:
	.word	0                               // 0x0
	.size	error, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fail_read"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"fail_write"
	.size	.L.str.1, 11
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"fail_write_enospc"
	.size	.L.str.2, 18
	.type	ENOSPC,@object                  // @ENOSPC
	.bss
	.globl	ENOSPC
	.p2align	2
ENOSPC:
	.word	0                               // 0x0
	.size	ENOSPC, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"fail_close"
	.size	.L.str.3, 11
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"fail_close_enospc"
	.size	.L.str.4, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym GET_REAL
	.addrsig_sym real_fopen
	.addrsig_sym strcmp
	.addrsig_sym strncmp
	.addrsig_sym fail_close
	.addrsig_sym fail_write
	.addrsig_sym fail_read
	.addrsig_sym fail
	.addrsig_sym EIO
	.addrsig_sym error
	.addrsig_sym ENOSPC