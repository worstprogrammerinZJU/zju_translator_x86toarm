	.text
	.globl	get_activation_string           // -- Begin function get_activation_string
	.p2align	2
	.type	get_activation_string,@function
get_activation_string:                  // @get_activation_string
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #13
	b.hi	.LBB0_16
// %bb.1:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_3:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_4:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_5:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_6:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_7:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_8:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_9:
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_10:
	adrp	x8, .L.str.8
	add	x8, x8, :lo12:.L.str.8
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_11:
	adrp	x8, .L.str.9
	add	x8, x8, :lo12:.L.str.9
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_12:
	adrp	x8, .L.str.10
	add	x8, x8, :lo12:.L.str.10
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_13:
	adrp	x8, .L.str.11
	add	x8, x8, :lo12:.L.str.11
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_14:
	adrp	x8, .L.str.12
	add	x8, x8, :lo12:.L.str.12
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_15:
	adrp	x8, .L.str.13
	add	x8, x8, :lo12:.L.str.13
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	str	x8, [sp, #24]
	b	.LBB0_18
.LBB0_18:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_activation_string, .Lfunc_end0-get_activation_string
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_5-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"logistic"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"loggy"
	.size	.L.str.1, 6
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"relu"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"elu"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"selu"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"relie"
	.size	.L.str.5, 6
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"ramp"
	.size	.L.str.6, 5
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"linear"
	.size	.L.str.7, 7
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"tanh"
	.size	.L.str.8, 5
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"plse"
	.size	.L.str.9, 5
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"leaky"
	.size	.L.str.10, 6
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"stair"
	.size	.L.str.11, 6
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"hardtan"
	.size	.L.str.12, 8
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"lhtan"
	.size	.L.str.13, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig