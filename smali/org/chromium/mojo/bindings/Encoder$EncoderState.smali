.class Lorg/chromium/mojo/bindings/Encoder$EncoderState;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public byteBuffer:Ljava/nio/ByteBuffer;

.field public final core:Lorg/chromium/mojo/system/Core;

.field public dataEnd:I

.field public final handles:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/mojo/bindings/Encoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/mojo/system/Core;I)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->handles:Ljava/util/List;

    .line 58
    sget-boolean v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->core:Lorg/chromium/mojo/system/Core;

    .line 60
    if-lez p2, :cond_1

    :goto_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    .line 64
    return-void

    .line 60
    :cond_1
    const/16 p2, 0x400

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/system/Core;ILorg/chromium/mojo/bindings/Encoder$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;-><init>(Lorg/chromium/mojo/system/Core;I)V

    return-void
.end method

.method private growIfNeeded()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    if-lt v0, v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 82
    :goto_1
    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    if-ge v0, v1, :cond_1

    .line 83
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 89
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 90
    iput-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public claimMemory(I)V
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    .line 71
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->growIfNeeded()V

    .line 72
    return-void
.end method
