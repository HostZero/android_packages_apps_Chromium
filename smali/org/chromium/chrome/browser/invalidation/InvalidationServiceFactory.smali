.class public final Lorg/chromium/chrome/browser/invalidation/InvalidationServiceFactory;
.super Ljava/lang/Object;
.source "InvalidationServiceFactory.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static final sServiceMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/invalidation/InvalidationServiceFactory;->sServiceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/invalidation/InvalidationService;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 37
    sget-object v0, Lorg/chromium/chrome/browser/invalidation/InvalidationServiceFactory;->sServiceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/invalidation/InvalidationService;

    .line 38
    if-nez v0, :cond_0

    .line 39
    invoke-static {p0}, Lorg/chromium/chrome/browser/invalidation/InvalidationServiceFactory;->nativeGetForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/invalidation/InvalidationService;

    move-result-object v0

    .line 40
    sget-object v1, Lorg/chromium/chrome/browser/invalidation/InvalidationServiceFactory;->sServiceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    return-object v0
.end method

.method public static getForTest(Landroid/content/Context;)Lorg/chromium/components/invalidation/InvalidationService;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lorg/chromium/chrome/browser/invalidation/InvalidationServiceFactory;->nativeGetForTest(Landroid/content/Context;)Lorg/chromium/components/invalidation/InvalidationService;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeGetForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/invalidation/InvalidationService;
.end method

.method private static native nativeGetForTest(Landroid/content/Context;)Lorg/chromium/components/invalidation/InvalidationService;
.end method
