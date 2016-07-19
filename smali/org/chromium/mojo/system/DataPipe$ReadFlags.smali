.class public Lorg/chromium/mojo/system/DataPipe$ReadFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "DataPipe.java"


# static fields
.field public static final NONE:Lorg/chromium/mojo/system/DataPipe$ReadFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lorg/chromium/mojo/system/DataPipe$ReadFlags;->none()Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/DataPipe$ReadFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    sput-object v0, Lorg/chromium/mojo/system/DataPipe$ReadFlags;->NONE:Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 165
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/DataPipe$ReadFlags;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/DataPipe$ReadFlags;-><init>(I)V

    return-object v0
.end method
