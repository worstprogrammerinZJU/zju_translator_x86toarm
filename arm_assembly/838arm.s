	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #112
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x8, DECIMAL64_String
	ldr	w8, [x8, :lo12:DECIMAL64_String]
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-40]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-96]                 // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #2
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	mov	w8, #1
	stur	w8, [x29, #-4]
	stur	w8, [x29, #-84]
	b	.LBB0_7
.LBB0_2:
	adrp	x8, DEC_INIT_DECIMAL64
	ldr	w1, [x8, :lo12:DEC_INIT_DECIMAL64]
	sub	x0, x29, #32
	stur	x0, [x29, #-104]                // 8-byte Folded Spill
	bl	decContextDefault
	ldur	x2, [x29, #-104]                // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	sub	x0, x29, #24
	bl	decimal64FromString
	stur	wzr, [x29, #-80]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-80]
	subs	w8, w8, #8
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-80]
	mov	w9, #3
	mul	w9, w8, w9
	sub	x8, x29, #73
	add	x0, x8, w9, sxtw
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-80]
	ldr	w2, [x8, x9, lsl #2]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	sprintf
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-80]
	add	w8, w8, #1
	stur	w8, [x29, #-80]
	b	.LBB0_3
.LBB0_6:
	sub	x0, x29, #24
	sub	x1, x29, #28
	stur	x1, [x29, #-112]                // 8-byte Folded Spill
	bl	decimal64ToNumber
	ldur	x1, [x29, #-96]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-112]                // 8-byte Folded Reload
	bl	decNumberToString
	ldur	x3, [x29, #-96]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	sub	x2, x29, #73
	bl	printf
	stur	wzr, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-84]
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-40]
	mov	sp, x8
	ldur	w0, [x29, #-4]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	DECIMAL64_String,@object        // @DECIMAL64_String
	.bss
	.globl	DECIMAL64_String
	.p2align	2
DECIMAL64_String:
	.word	0                               // 0x0
	.size	DECIMAL64_String, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Please supply a number.\n"
	.size	.L.str, 25
	.type	DEC_INIT_DECIMAL64,@object      // @DEC_INIT_DECIMAL64
	.bss
	.globl	DEC_INIT_DECIMAL64
	.p2align	2
DEC_INIT_DECIMAL64:
	.word	0                               // 0x0
	.size	DEC_INIT_DECIMAL64, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%02x "
	.size	.L.str.1, 6
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s => %s=> %s\n"
	.size	.L.str.2, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym decContextDefault
	.addrsig_sym decimal64FromString
	.addrsig_sym sprintf
	.addrsig_sym decimal64ToNumber
	.addrsig_sym decNumberToString
	.addrsig_sym DECIMAL64_String
	.addrsig_sym DEC_INIT_DECIMAL64