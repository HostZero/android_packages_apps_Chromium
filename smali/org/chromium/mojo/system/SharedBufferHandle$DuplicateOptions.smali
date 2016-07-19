.class public Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;
.super Ljava/lang/Object;
.source "SharedBufferHandle.java"


# instance fields
.field private mFlags:Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateFlags;->NONE:Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateFlags;

    iput-object v0, p0, Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;->mFlags:Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateFlags;

    return-void
.end method
