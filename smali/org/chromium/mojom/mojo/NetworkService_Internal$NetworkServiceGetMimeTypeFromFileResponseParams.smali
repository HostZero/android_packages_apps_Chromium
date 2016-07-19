.class final Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "NetworkService_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1986
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 1987
    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2005
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;-><init>(I)V

    .line 2006
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 1998
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 2002
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;
    .locals 3

    .prologue
    .line 2014
    if-nez p0, :cond_1

    .line 2015
    const/4 v0, 0x0

    .line 2043
    :cond_0
    :goto_0
    return-object v0

    .line 2017
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 2018
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;-><init>(I)V

    .line 2021
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 2024
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;
    .locals 1

    .prologue
    .line 2009
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 2050
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 2056
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->mimeType:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 2074
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2081
    if-ne p1, p0, :cond_1

    .line 2094
    :cond_0
    :goto_0
    return v0

    .line 2083
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 2084
    goto :goto_0

    .line 2085
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 2086
    goto :goto_0

    .line 2088
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;

    .line 2090
    iget-object v2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2091
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 2103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 2105
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2107
    return v0
.end method
