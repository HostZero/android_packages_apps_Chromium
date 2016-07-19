.class public final Lorg/chromium/chrome/browser/rappor/RapporServiceBridge;
.super Ljava/lang/Object;
.source "RapporServiceBridge.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static native nativeSampleDomainAndRegistryFromURL(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSampleString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static sampleDomainAndRegistryFromURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/rappor/RapporServiceBridge;->nativeSampleDomainAndRegistryFromURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static sampleString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/rappor/RapporServiceBridge;->nativeSampleString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
