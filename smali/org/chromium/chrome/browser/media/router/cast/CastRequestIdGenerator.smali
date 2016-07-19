.class public Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;
.super Ljava/lang/Object;
.source "CastRequestIdGenerator.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;


# instance fields
.field private mRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->mRequestId:I

    .line 36
    return-void
.end method

.method private static getInstance()Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;
    .locals 2

    .prologue
    .line 28
    sget-object v1, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->sInstance:Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->sInstance:Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->sInstance:Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getNextRequestId()I
    .locals 3

    .prologue
    .line 19
    invoke-static {}, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->getInstance()Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;

    move-result-object v0

    .line 22
    iget v1, v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->mRequestId:I

    if-nez v1, :cond_0

    iget v1, v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->mRequestId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->mRequestId:I

    .line 23
    :cond_0
    iget v1, v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->mRequestId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->mRequestId:I

    return v1
.end method
