.class public Lorg/chromium/mojo/system/DataPipe$CreateFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "DataPipe.java"


# static fields
.field public static final NONE:Lorg/chromium/mojo/system/DataPipe$CreateFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->none()Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    sput-object v0, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->NONE:Lorg/chromium/mojo/system/DataPipe$CreateFlags;

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

.method public static none()Lorg/chromium/mojo/system/DataPipe$CreateFlags;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;-><init>(I)V

    return-object v0
.end method