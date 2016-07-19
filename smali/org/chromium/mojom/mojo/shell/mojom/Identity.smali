.class public final Lorg/chromium/mojom/mojo/shell/mojom/Identity;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Identity.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public instance:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x20

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/Identity;-><init>(I)V

    .line 48
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 44
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/Identity;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 60
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/Identity;-><init>(I)V

    .line 63
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 66
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->name:Ljava/lang/String;

    .line 86
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 89
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->userId:Ljava/lang/String;

    .line 109
    :cond_3
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 112
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->instance:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->name:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 165
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->userId:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 186
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->instance:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 204
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    if-ne p1, p0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 214
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    .line 220
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 221
    goto :goto_0

    .line 223
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->userId:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 224
    goto :goto_0

    .line 226
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->instance:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->instance:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 227
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 241
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->userId:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->instance:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    return v0
.end method
