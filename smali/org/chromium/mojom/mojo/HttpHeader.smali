.class public final Lorg/chromium/mojom/mojo/HttpHeader;
.super Lorg/chromium/mojo/bindings/Struct;
.source "HttpHeader.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


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
    sput-object v0, Lorg/chromium/mojom/mojo/HttpHeader;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpHeader;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/HttpHeader;-><init>(I)V

    .line 44
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 40
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpHeader;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    if-nez p0, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/HttpHeader;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 56
    new-instance v0, Lorg/chromium/mojom/mojo/HttpHeader;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/HttpHeader;-><init>(I)V

    .line 59
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 62
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/HttpHeader;->name:Ljava/lang/String;

    .line 82
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 85
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/HttpHeader;->value:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    sget-object v0, Lorg/chromium/mojom/mojo/HttpHeader;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpHeader;->name:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 138
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpHeader;->value:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 156
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    if-ne p1, p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 166
    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/HttpHeader;

    .line 172
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpHeader;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpHeader;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpHeader;->value:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpHeader;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 176
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 190
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpHeader;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpHeader;->value:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    return v0
.end method
