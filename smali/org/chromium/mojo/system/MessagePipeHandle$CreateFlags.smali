.class public Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "MessagePipeHandle.java"


# static fields
.field public static final NONE:Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;->none()Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    sput-object v0, Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 34
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;-><init>(I)V

    return-object v0
.end method
