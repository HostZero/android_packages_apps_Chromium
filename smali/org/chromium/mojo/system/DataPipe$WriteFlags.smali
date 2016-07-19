.class public Lorg/chromium/mojo/system/DataPipe$WriteFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "DataPipe.java"


# static fields
.field public static final NONE:Lorg/chromium/mojo/system/DataPipe$WriteFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lorg/chromium/mojo/system/DataPipe$WriteFlags;->none()Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/DataPipe$WriteFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    sput-object v0, Lorg/chromium/mojo/system/DataPipe$WriteFlags;->NONE:Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 123
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/DataPipe$WriteFlags;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/DataPipe$WriteFlags;-><init>(I)V

    return-object v0
.end method
