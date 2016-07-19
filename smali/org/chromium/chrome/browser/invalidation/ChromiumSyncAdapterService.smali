.class public abstract Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;
.super Landroid/app/Service;
.source "ChromiumSyncAdapterService.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sSyncAdapter:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->sSyncAdapter:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getOrCreateSyncAdapter(Landroid/content/Context;)Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;
    .locals 2

    .prologue
    .line 21
    sget-object v1, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->sSyncAdapter:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->createChromiumSyncAdapter(Landroid/content/Context;Landroid/app/Application;)Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->sSyncAdapter:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->sSyncAdapter:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract createChromiumSyncAdapter(Landroid/content/Context;Landroid/app/Application;)Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;->getOrCreateSyncAdapter(Landroid/content/Context;)Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
