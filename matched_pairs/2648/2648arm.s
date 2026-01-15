	.text
	.globl	waldirlock                      // -- Begin function waldirlock
	.p2align	2
	.type	waldirlock,@function
waldirlock:                             // @waldirlock
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	strlen
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	strlen
	mov	w8, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	add	w8, w0, w8
	add	w9, w8, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	bl	malloc
	str	x0, [sp, #24]
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarn
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_2:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	x3, [x8]
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	snprintf
	ldr	x0, [sp, #24]
	adrp	x8, O_WRONLY
	ldr	w8, [x8, :lo12:O_WRONLY]
	adrp	x9, O_CREAT
	ldr	w9, [x9, :lo12:O_CREAT]
	orr	w1, w8, w9
	mov	w2, #384
	bl	open
	stur	w0, [x29, #-24]
	ldr	x0, [sp, #24]
	bl	free
	ldur	w8, [x29, #-24]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarn
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	adrp	x8, F_WRLCK
	ldr	w8, [x8, :lo12:F_WRLCK]
	add	x2, sp, #32
	str	w8, [sp, #52]
	adrp	x8, SEEK_SET
	ldr	w8, [x8, :lo12:SEEK_SET]
	str	w8, [sp, #48]
	str	xzr, [sp, #40]
	str	xzr, [sp, #32]
	ldur	w0, [x29, #-24]
	adrp	x8, F_SETLK
	ldr	w1, [x8, :lo12:F_SETLK]
	bl	fcntl
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	twarn
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	waldirlock, .Lfunc_end0-waldirlock
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/lock"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"malloc"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s/lock"
	.size	.L.str.2, 8
	.type	O_WRONLY,@object                // @O_WRONLY
	.bss
	.globl	O_WRONLY
	.p2align	2
O_WRONLY:
	.word	0                               // 0x0
	.size	O_WRONLY, 4
	.type	O_CREAT,@object                 // @O_CREAT
	.globl	O_CREAT
	.p2align	2
O_CREAT:
	.word	0                               // 0x0
	.size	O_CREAT, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"open"
	.size	.L.str.3, 5
	.type	F_WRLCK,@object                 // @F_WRLCK
	.bss
	.globl	F_WRLCK
	.p2align	2
F_WRLCK:
	.word	0                               // 0x0
	.size	F_WRLCK, 4
	.type	SEEK_SET,@object                // @SEEK_SET
	.globl	SEEK_SET
	.p2align	2
SEEK_SET:
	.word	0                               // 0x0
	.size	SEEK_SET, 4
	.type	F_SETLK,@object                 // @F_SETLK
	.globl	F_SETLK
	.p2align	2
F_SETLK:
	.word	0                               // 0x0
	.size	F_SETLK, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"fcntl"
	.size	.L.str.4, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym malloc
	.addrsig_sym twarn
	.addrsig_sym snprintf
	.addrsig_sym open
	.addrsig_sym free
	.addrsig_sym fcntl
	.addrsig_sym O_WRONLY
	.addrsig_sym O_CREAT
	.addrsig_sym F_WRLCK
	.addrsig_sym SEEK_SET
	.addrsig_sym F_SETLK