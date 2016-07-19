.class public Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapterService;
.super Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;
.source "ChromeBrowserSyncAdapterService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapterService;-><init>()V

    return-void
.end method


# virtual methods
.method protected createChromiumSyncAdapter(Landroid/content/Context;Landroid/app/Application;)Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapterService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapter;-><init>(Landroid/content/Context;Landroid/app/Application;)V

    return-object v0
.end method
