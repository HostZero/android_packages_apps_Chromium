.class public Lorg/chromium/chrome/browser/services/gcm/GcmUma;
.super Ljava/lang/Object;
.source "GcmUma.java"


# static fields
.field public static final UMA_UPSTREAM_COUNT:I = 0x4

.field public static final UMA_UPSTREAM_SEND_FAILED:I = 0x3

.field public static final UMA_UPSTREAM_SIZE_LIMIT_EXCEEDED:I = 0x1

.field public static final UMA_UPSTREAM_SUCCESS:I = 0x0

.field public static final UMA_UPSTREAM_TOKEN_REQUEST_FAILED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onNativeLaunched(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public static recordGcmUpstreamHistogram(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$1;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/services/gcm/GcmUma$1;-><init>(I)V

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/services/gcm/GcmUma;->onNativeLaunched(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method
