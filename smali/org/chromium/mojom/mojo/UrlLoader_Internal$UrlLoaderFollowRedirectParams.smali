.class final Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UrlLoader_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 564
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 565
    sput-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;-><init>(I)V

    .line 577
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 571
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 573
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;
    .locals 2

    .prologue
    .line 585
    if-nez p0, :cond_0

    .line 586
    const/4 v0, 0x0

    .line 591
    :goto_0
    return-object v0

    .line 588
    :cond_0
    sget-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 589
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v1}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;-><init>(I)V

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;
    .locals 1

    .prologue
    .line 580
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 1

    .prologue
    .line 598
    sget-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    .line 601
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 608
    if-ne p1, p0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v0

    .line 610
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 611
    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 613
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 626
    return v0
.end method
