	.text
	.p2align	2                               // -- Begin function lua_proto_append_response_packet
	.type	lua_proto_append_response_packet,@function
lua_proto_append_response_packet:       // @lua_proto_append_response_packet
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	adrp	x8, LUA_TTABLE
	ldr	w2, [x8, :lo12:LUA_TTABLE]
	mov	w1, #1
	bl	luaL_checktype
	mov	x0, xzr
	bl	g_string_new
	str	x0, [sp, #24]
	bl	network_mysqld_auth_response_new
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x8, capabilities
	ldr	w1, [x8, :lo12:capabilities]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #16]
	adrp	x8, max_packet_size
	ldr	w1, [x8, :lo12:max_packet_size]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #16]
	adrp	x8, charset
	ldr	w1, [x8, :lo12:charset]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #16]
	adrp	x8, username
	ldr	w1, [x8, :lo12:username]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #16]
	adrp	x8, response
	ldr	w1, [x8, :lo12:response]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #16]
	adrp	x8, database
	ldr	w1, [x8, :lo12:database]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	network_mysqld_proto_append_auth_response
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	network_mysqld_auth_response_free
	ldr	x0, [sp, #24]
	adrp	x8, TRUE
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:TRUE]
	bl	g_string_free
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [sp, #24]
	ldr	w1, [x8, :lo12:TRUE]
	bl	g_string_free
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	network_mysqld_auth_response_free
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	S
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	lua_pushlstring
	ldr	x0, [sp, #24]
	adrp	x8, TRUE
	ldr	w1, [x8, :lo12:TRUE]
	bl	g_string_free
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	lua_proto_append_response_packet, .Lfunc_end0-lua_proto_append_response_packet
                                        // -- End function
	.type	LUA_TTABLE,@object              // @LUA_TTABLE
	.bss
	.globl	LUA_TTABLE
	.p2align	2
LUA_TTABLE:
	.word	0                               // 0x0
	.size	LUA_TTABLE, 4
	.type	capabilities,@object            // @capabilities
	.globl	capabilities
	.p2align	2
capabilities:
	.word	0                               // 0x0
	.size	capabilities, 4
	.type	max_packet_size,@object         // @max_packet_size
	.globl	max_packet_size
	.p2align	2
max_packet_size:
	.word	0                               // 0x0
	.size	max_packet_size, 4
	.type	charset,@object                 // @charset
	.globl	charset
	.p2align	2
charset:
	.word	0                               // 0x0
	.size	charset, 4
	.type	username,@object                // @username
	.globl	username
	.p2align	2
username:
	.word	0                               // 0x0
	.size	username, 4
	.type	response,@object                // @response
	.globl	response
	.p2align	2
response:
	.word	0                               // 0x0
	.size	response, 4
	.type	database,@object                // @database
	.globl	database
	.p2align	2
database:
	.word	0                               // 0x0
	.size	database, 4
	.type	TRUE,@object                    // @TRUE
	.globl	TRUE
	.p2align	2
TRUE:
	.word	0                               // 0x0
	.size	TRUE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"to_response_packet() failed"
	.size	.L.str, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_append_response_packet
	.addrsig_sym luaL_checktype
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_auth_response_new
	.addrsig_sym LUA_IMPORT_INT
	.addrsig_sym LUA_IMPORT_STR
	.addrsig_sym network_mysqld_proto_append_auth_response
	.addrsig_sym network_mysqld_auth_response_free
	.addrsig_sym g_string_free
	.addrsig_sym luaL_error
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym LUA_TTABLE
	.addrsig_sym capabilities
	.addrsig_sym max_packet_size
	.addrsig_sym charset
	.addrsig_sym username
	.addrsig_sym response
	.addrsig_sym database
	.addrsig_sym TRUE