.class public Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "MessagePipeHandle.java"


# static fields
.field public static final NONE:Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->none()Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;

    sput-object v0, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 78
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;-><init>(I)V

    return-object v0
.end method
