.class final Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "CookieStore_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 203
    sput-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;-><init>(I)V

    .line 222
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 218
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;
    .locals 3

    .prologue
    .line 230
    if-nez p0, :cond_1

    .line 231
    const/4 v0, 0x0

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 233
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 234
    new-instance v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;-><init>(I)V

    .line 237
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 240
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 266
    sget-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->url:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 290
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    if-ne p1, p0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 300
    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 302
    goto :goto_0

    .line 304
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;

    .line 306
    iget-object v2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 307
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 321
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    return v0
.end method
