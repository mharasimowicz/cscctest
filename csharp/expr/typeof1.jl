.assembly extern '.library'
{
	.ver 0:0:0:0
}
.assembly '<Assembly>'
{
	.ver 0:0:0:0
}
.module '<Module>'
.class private auto ansi 'Test' extends ['.library']'System'.'Object'
{
.method private hidebysig instance void 'm1'() cil managed java 
{
	ldc	"System.Int32"
	invokestatic	"System/Type" "GetType" "(LSystem/String;)LSystem/Type;"
	astore_1
	ldc	"System.Void"
	invokestatic	"System/Type" "GetType" "(LSystem/String;)LSystem/Type;"
	astore_1
	ldc	"int[]"
	invokestatic	"System/Type" "GetType" "(LSystem/String;)LSystem/Type;"
	astore_1
	ldc	"Test[]"
	invokestatic	"System/Type" "GetType" "(LSystem/String;)LSystem/Type;"
	astore_1
	return
	.locals 2
	.maxstack 1
} // method m1
} // class Test
