.class public final Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;
.super Ljava/lang/Object;
.source "UniqueIdentificationGeneratorFactory.java"


# static fields
.field private static final GENERATOR_MAP:Ljava/util/Map;

.field private static final LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->LOCK:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->GENERATOR_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static clearGeneratorMapForTest()V
    .locals 2

    .prologue
    .line 65
    sget-object v1, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->GENERATOR_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;
    .locals 4

    .prologue
    .line 34
    sget-object v1, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->GENERATOR_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown generator type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 38
    :cond_0
    :try_start_1
    sget-object v0, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->GENERATOR_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static registerGenerator(Ljava/lang/String;Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;Z)V
    .locals 2

    .prologue
    .line 55
    sget-object v1, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->GENERATOR_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 57
    monitor-exit v1

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->GENERATOR_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
