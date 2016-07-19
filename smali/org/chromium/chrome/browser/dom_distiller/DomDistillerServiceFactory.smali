.class public Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;
.super Ljava/lang/Object;
.source "DomDistillerServiceFactory.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static final sServiceMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;->sServiceMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/dom_distiller/core/DomDistillerService;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 31
    sget-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;->sServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;

    .line 32
    if-nez v0, :cond_0

    .line 33
    invoke-static {p0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;->nativeGetForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/dom_distiller/core/DomDistillerService;

    move-result-object v0

    .line 34
    sget-object v1, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;->sServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-object v0
.end method

.method private static native nativeGetForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/dom_distiller/core/DomDistillerService;
.end method
