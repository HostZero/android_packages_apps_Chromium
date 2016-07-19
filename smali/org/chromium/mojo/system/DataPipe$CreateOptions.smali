.class public Lorg/chromium/mojo/system/DataPipe$CreateOptions;
.super Ljava/lang/Object;
.source "DataPipe.java"


# instance fields
.field private mFlags:Lorg/chromium/mojo/system/DataPipe$CreateFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->none()Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mFlags:Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    return-void
.end method
