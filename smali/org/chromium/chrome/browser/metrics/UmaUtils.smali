.class public Lorg/chromium/chrome/browser/metrics/UmaUtils;
.super Ljava/lang/Object;
.source "UmaUtils.java"


# static fields
.field private static sApplicationStartWallClockMs:J

.field private static sRunningApplicationStart:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainEntryPointTime()J
    .locals 2

    .prologue
    .line 51
    sget-wide v0, Lorg/chromium/chrome/browser/metrics/UmaUtils;->sApplicationStartWallClockMs:J

    return-wide v0
.end method

.method public static isRunningApplicationStart()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/UmaUtils;->sRunningApplicationStart:Z

    return v0
.end method

.method public static recordMainEntryPointTime()V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/metrics/UmaUtils;->sApplicationStartWallClockMs:J

    .line 28
    return-void
.end method

.method public static setRunningApplicationStart(Z)V
    .locals 0

    .prologue
    .line 46
    sput-boolean p0, Lorg/chromium/chrome/browser/metrics/UmaUtils;->sRunningApplicationStart:Z

    .line 47
    return-void
.end method
