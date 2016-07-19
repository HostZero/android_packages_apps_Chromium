.class public final Lorg/chromium/chrome/browser/AfterStartupTaskUtils;
.super Ljava/lang/Object;
.source "AfterStartupTaskUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeSetStartupComplete()V
.end method

.method public static setStartupComplete()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lorg/chromium/chrome/browser/AfterStartupTaskUtils;->nativeSetStartupComplete()V

    .line 20
    return-void
.end method
