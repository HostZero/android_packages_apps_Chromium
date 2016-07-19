.class public final Lorg/chromium/mojo/bindings/RunResponseMessageParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "RunResponseMessageParams.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

.field public reserved0:I

.field public reserved1:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/RunResponseMessageParams;-><init>(I)V

    .line 48
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 44
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo/bindings/RunResponseMessageParams;
    .locals 3

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    sget-object v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 60
    new-instance v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojo/bindings/RunResponseMessageParams;-><init>(I)V

    .line 63
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 66
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved0:I

    .line 78
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 81
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved1:I

    .line 93
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 96
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lorg/chromium/mojo/bindings/QueryVersionResult;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo/bindings/QueryVersionResult;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/RunResponseMessageParams;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo/bindings/RunResponseMessageParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 125
    sget-object v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 131
    iget v1, p0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved0:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 144
    iget v1, p0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved1:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 157
    iget-object v1, p0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 175
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    if-ne p1, p0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 185
    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_3
    check-cast p1, Lorg/chromium/mojo/bindings/RunResponseMessageParams;

    .line 191
    iget v2, p0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved0:I

    iget v3, p1, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved0:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_4
    iget v2, p0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved1:I

    iget v3, p1, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved1:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 195
    goto :goto_0

    .line 197
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    iget-object v3, p1, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 198
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 212
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved0:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved1:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    return v0
.end method
