	.text
	.p2align	2                               // -- Begin function local_static2
	.type	local_static2,@function
local_static2:                          // @local_static2
// %bb.0:
	adrp	x9, local_static2.z
	mov	w8, #3
	str	w8, [x9, :lo12:local_static2.z]
	adrp	x11, local_static2.x
	ldr	w8, [x11, :lo12:local_static2.x]
	add	w10, w8, #1
	str	w10, [x11, :lo12:local_static2.x]
	adrp	x10, local_static2.y
	ldrb	w10, [x10, :lo12:local_static2.y]
	subs	w10, w10, #48
	add	w8, w8, w10
	ldr	w9, [x9, :lo12:local_static2.z]
	add	w0, w8, w9
	ret
.Lfunc_end0:
	.size	local_static2, .Lfunc_end0-local_static2
                                        // -- End function
	.type	local_static2.x,@object         // @local_static2.x
	.data
	.p2align	2
local_static2.x:
	.word	1                               // 0x1
	.size	local_static2.x, 4
	.type	local_static2.y,@object         // @local_static2.y
local_static2.y:
	.asciz	"2"
	.size	local_static2.y, 2
	.type	local_static2.z,@object         // @local_static2.z
	.local	local_static2.z
	.comm	local_static2.z,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_static2
	.addrsig_sym local_static2.x
	.addrsig_sym local_static2.y
	.addrsig_sym local_static2.z