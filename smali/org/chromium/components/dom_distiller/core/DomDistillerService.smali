.class public final Lorg/chromium/components/dom_distiller/core/DomDistillerService;
.super Ljava/lang/Object;
.source "DomDistillerService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

.field private final mDomDistillerServiceAndroid:J


# direct methods
.method private constructor <init>(J)V
    .locals 5

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->mDomDistillerServiceAndroid:J

    .line 22
    new-instance v0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    iget-wide v2, p0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->mDomDistillerServiceAndroid:J

    invoke-static {v2, v3}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->nativeGetDistilledPagePrefsPtr(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;-><init>(J)V

    iput-object v0, p0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    .line 24
    return-void
.end method

.method private static create(J)Lorg/chromium/components/dom_distiller/core/DomDistillerService;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 41
    new-instance v0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;-><init>(J)V

    return-object v0
.end method

.method private static native nativeGetDistilledPagePrefsPtr(J)J
.end method

.method private native nativeGetUrlForEntry(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeHasEntry(JLjava/lang/String;)Z
.end method


# virtual methods
.method public final getDistilledPagePrefs()Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    return-object v0
.end method

.method public final getUrlForEntry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->mDomDistillerServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->nativeGetUrlForEntry(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasEntry(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->mDomDistillerServiceAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->nativeHasEntry(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method
