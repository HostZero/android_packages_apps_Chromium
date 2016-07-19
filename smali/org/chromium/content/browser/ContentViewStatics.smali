.class public Lorg/chromium/content/browser/ContentViewStatics;
.super Ljava/lang/Object;
.source "ContentViewStatics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeFindAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeSetWebKitSharedTimersSuspended(Z)V
.end method

.method public static setWebKitSharedTimersSuspended(Z)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewStatics;->nativeSetWebKitSharedTimersSuspended(Z)V

    .line 38
    return-void
.end method
