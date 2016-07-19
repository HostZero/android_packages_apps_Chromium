.class public Lorg/chromium/mojo/system/SharedBufferHandle$CreateOptions;
.super Ljava/lang/Object;
.source "SharedBufferHandle.java"


# instance fields
.field private mFlags:Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;->NONE:Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    iput-object v0, p0, Lorg/chromium/mojo/system/SharedBufferHandle$CreateOptions;->mFlags:Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    return-void
.end method
