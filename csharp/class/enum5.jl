.assembly extern '.library'
{
	.ver 0:0:0:0
}
.assembly '<Assembly>'
{
	.ver 0:0:0:0
}
.module '<Module>'
.class private auto sealed serializable ansi 'Color' extends ['.library']'System'.'Enum'
{
.field public static literal valuetype 'Color' 'Red' = int32(0x00000001)
.field public static literal valuetype 'Color' 'Green' = int32(0x00000020)
.field public static literal valuetype 'Color' 'Blue' = int32(0x00000008)
.field public specialname rtspecialname int32 'value__'
} // class Color
.class private auto ansi beforefieldinit 'UseColor' extends ['.library']'System'.'Object'
{
.field public static initonly valuetype 'Color' 'c'
.method public hidebysig specialname rtspecialname instance void '.ctor'() cil managed java 
{
	aload_0
	invokespecial	instance void ['.library']'System'.'Object'::'.ctor'()
	return
	.locals 1
	.maxstack 1
} // method .ctor
.method private static hidebysig specialname rtspecialname void '.cctor'() cil managed java 
{
	bipush	8
	putstatic	valuetype 'Color' 'UseColor'::'c'
	return
	.locals 0
	.maxstack 1
} // method .cctor
} // class UseColor
