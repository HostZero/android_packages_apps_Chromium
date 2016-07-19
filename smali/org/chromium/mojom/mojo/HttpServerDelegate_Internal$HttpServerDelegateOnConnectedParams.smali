.class final Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "HttpServerDelegate_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public connection:Lorg/chromium/mojom/mojo/HttpConnection;

.field public delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 155
    sput-object v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;-><init>(I)V

    .line 178
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 174
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    if-nez p0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    .line 189
    :cond_0
    sget-object v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 190
    new-instance v1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;

    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v0}, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;-><init>(I)V

    .line 193
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_1

    .line 196
    const/16 v0, 0x8

    sget-object v3, Lorg/chromium/mojom/mojo/HttpConnection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/HttpConnection;

    iput-object v0, v1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    .line 216
    :cond_1
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_2

    .line 219
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    :cond_2
    move-object v0, v1

    .line 238
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    sget-object v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    const/16 v2, 0x8

    sget-object v3, Lorg/chromium/mojom/mojo/HttpConnection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 272
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

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

    .line 313
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
    check-cast p1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;

    .line 306
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 307
    goto :goto_0

    .line 309
    :cond_4
    iget-object v2, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 310
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 324
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    return v0
.end method
