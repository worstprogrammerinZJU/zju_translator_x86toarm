	.text
	.p2align	2                               // -- Begin function _file_lock
	.type	_file_lock,@function
_file_lock:                             // @_file_lock
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	str	x5, [sp, #56]
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	subs	w8, w8, #114
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, #117
	b.eq	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, #119
	b.ne	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	adrp	x8, F_WRLCK
	ldr	w8, [x8, :lo12:F_WRLCK]
	str	w8, [sp, #44]
	b	.LBB0_7
.LBB0_4:
	adrp	x8, F_RDLCK
	ldr	w8, [x8, :lo12:F_RDLCK]
	str	w8, [sp, #44]
	b	.LBB0_7
.LBB0_5:
	adrp	x8, F_UNLCK
	ldr	w8, [x8, :lo12:F_UNLCK]
	str	w8, [sp, #44]
	b	.LBB0_7
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #56]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	stur	w0, [x29, #-4]
	b	.LBB0_8
.LBB0_7:
	adrp	x8, SEEK_SET
	ldr	w8, [x8, :lo12:SEEK_SET]
	add	x9, sp, #24
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	str	w8, [sp, #40]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #24]
	ldur	x0, [x29, #-24]
	bl	fileno
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, F_SETLK
	ldr	w1, [x8, :lo12:F_SETLK]
	bl	fcntl
	str	w0, [sp, #52]
	ldr	w8, [sp, #52]
	adds	w8, w8, #1
	cset	w8, ne
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	_file_lock, .Lfunc_end0-_file_lock
                                        // -- End function
	.type	F_WRLCK,@object                 // @F_WRLCK
	.bss
	.globl	F_WRLCK
	.p2align	2
F_WRLCK:
	.word	0                               // 0x0
	.size	F_WRLCK, 4
	.type	F_RDLCK,@object                 // @F_RDLCK
	.globl	F_RDLCK
	.p2align	2
F_RDLCK:
	.word	0                               // 0x0
	.size	F_RDLCK, 4
	.type	F_UNLCK,@object                 // @F_UNLCK
	.globl	F_UNLCK
	.p2align	2
F_UNLCK:
	.word	0                               // 0x0
	.size	F_UNLCK, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: invalid mode"
	.size	.L.str, 17
	.type	SEEK_SET,@object                // @SEEK_SET
	.bss
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
	.type	LK_NBLCK,@object                // @LK_NBLCK
	.globl	LK_NBLCK
	.p2align	2
LK_NBLCK:
	.word	0                               // 0x0
	.size	LK_NBLCK, 4
	.type	LK_UNLCK,@object                // @LK_UNLCK
	.globl	LK_UNLCK
	.p2align	2
LK_UNLCK:
	.word	0                               // 0x0
	.size	LK_UNLCK, 4
	.type	SEEK_END,@object                // @SEEK_END
	.globl	SEEK_END
	.p2align	2
SEEK_END:
	.word	0                               // 0x0
	.size	SEEK_END, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _file_lock
	.addrsig_sym luaL_error
	.addrsig_sym fcntl
	.addrsig_sym fileno
	.addrsig_sym F_WRLCK
	.addrsig_sym F_RDLCK
	.addrsig_sym F_UNLCK
	.addrsig_sym SEEK_SET
	.addrsig_sym F_SETLK