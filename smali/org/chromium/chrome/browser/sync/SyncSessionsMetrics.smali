.class public final Lorg/chromium/chrome/browser/sync/SyncSessionsMetrics;
.super Ljava/lang/Object;
.source "SyncSessionsMetrics.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeRecordYoungestForeignTabAgeOnNTP()V
.end method

.method public static recordYoungestForeignTabAgeOnNTP()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lorg/chromium/chrome/browser/sync/SyncSessionsMetrics;->nativeRecordYoungestForeignTabAgeOnNTP()V

    .line 19
    return-void
.end method
