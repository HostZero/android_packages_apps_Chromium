.class public abstract Lorg/chromium/mojo/bindings/Struct;
.super Ljava/lang/Object;
.source "Struct.java"


# instance fields
.field private final mEncodedBaseSize:I

.field private final mVersion:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/chromium/mojo/bindings/Struct;->mEncodedBaseSize:I

    .line 28
    iput p2, p0, Lorg/chromium/mojo/bindings/Struct;->mVersion:I

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract encode(Lorg/chromium/mojo/bindings/Encoder;)V
.end method

.method public serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lorg/chromium/mojo/bindings/Encoder;

    iget v1, p0, Lorg/chromium/mojo/bindings/Struct;->mEncodedBaseSize:I

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/MessageHeader;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, p1, v1}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/system/Core;I)V

    .line 60
    invoke-virtual {p2, v0}, Lorg/chromium/mojo/bindings/MessageHeader;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    .line 61
    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Struct;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    .line 62
    new-instance v1, Lorg/chromium/mojo/bindings/ServiceMessage;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Encoder;->getMessage()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lorg/chromium/mojo/bindings/ServiceMessage;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageHeader;)V

    return-object v1
.end method
