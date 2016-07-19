.class public final Lorg/chromium/mojom/mojo/UrlLoaderStatus;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UrlLoaderStatus.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public bytesRead:J

.field public contentLength:J

.field public error:Lorg/chromium/mojom/mojo/NetworkError;

.field public isLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UrlLoaderStatus;-><init>(I)V

    .line 52
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 48
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlLoaderStatus;
    .locals 4

    .prologue
    .line 60
    if-nez p0, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 64
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/UrlLoaderStatus;-><init>(I)V

    .line 67
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 70
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetworkError;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkError;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->error:Lorg/chromium/mojom/mojo/NetworkError;

    .line 93
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 96
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->isLoading:Z

    .line 116
    :cond_3
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_4

    .line 119
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->contentLength:J

    .line 139
    :cond_4
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 142
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->bytesRead:J

    goto :goto_0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 168
    sget-object v0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->error:Lorg/chromium/mojom/mojo/NetworkError;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 195
    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->isLoading:Z

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 216
    iget-wide v2, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->contentLength:J

    const/16 v1, 0x18

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 237
    iget-wide v2, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->bytesRead:J

    const/16 v1, 0x20

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 255
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    if-ne p1, p0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 265
    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 267
    goto :goto_0

    .line 269
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/UrlLoaderStatus;

    .line 271
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->error:Lorg/chromium/mojom/mojo/NetworkError;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->error:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 272
    goto :goto_0

    .line 274
    :cond_4
    iget-boolean v2, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->isLoading:Z

    iget-boolean v3, p1, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->isLoading:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 275
    goto :goto_0

    .line 277
    :cond_5
    iget-wide v2, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->contentLength:J

    iget-wide v4, p1, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->contentLength:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    .line 278
    goto :goto_0

    .line 280
    :cond_6
    iget-wide v2, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->bytesRead:J

    iget-wide v4, p1, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->bytesRead:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 281
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 295
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->error:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->isLoading:Z

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->contentLength:J

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/mojom/mojo/UrlLoaderStatus;->bytesRead:J

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    return v0
.end method
