	.text
	.p2align	2                               // -- Begin function su
	.type	su,@function
su:                                     // @su
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x8, errno
	str	x8, [sp]                        // 8-byte Folded Spill
	str	xzr, [x8, :lo12:errno]
	ldur	x0, [x29, #-8]
	bl	getpwnam
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x8, [x8, :lo12:errno]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x1, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	mov	w0, #32
	bl	exit
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x1, [x29, #-8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarnx
	mov	w0, #33
	bl	exit
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	setgid
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #16]
	ldrsw	x1, [x8, #4]
	ldur	x2, [x29, #-8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	twarn
	mov	w0, #34
	bl	exit
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	setuid
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #16]
	ldrsw	x1, [x8]
	ldur	x2, [x29, #-8]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarn
	mov	w0, #34
	bl	exit
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	su, .Lfunc_end0-su
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	3
errno:
	.xword	0                               // 0x0
	.size	errno, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"getpwnam(\"%s\")"
	.size	.L.str, 15
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"getpwnam(\"%s\"): no such user"
	.size	.L.str.1, 29
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"setgid(%d \"%s\")"
	.size	.L.str.2, 16
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"setuid(%d \"%s\")"
	.size	.L.str.3, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym su
	.addrsig_sym getpwnam
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym twarnx
	.addrsig_sym setgid
	.addrsig_sym setuid
	.addrsig_sym errno