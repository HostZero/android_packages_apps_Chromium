.class final Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ShellResolver_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public mojoName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 160
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;-><init>(I)V

    .line 179
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 175
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;
    .locals 3

    .prologue
    .line 187
    if-nez p0, :cond_1

    .line 188
    const/4 v0, 0x0

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 191
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;-><init>(I)V

    .line 194
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 197
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->mojoName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 223
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->mojoName:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 247
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    if-ne p1, p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 257
    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 259
    goto :goto_0

    .line 261
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;

    .line 263
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->mojoName:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->mojoName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 264
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 278
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;->mojoName:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    return v0
.end method
