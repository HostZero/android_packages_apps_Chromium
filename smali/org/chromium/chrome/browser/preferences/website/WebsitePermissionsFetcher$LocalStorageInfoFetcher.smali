.class Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;
.super Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;
.source "WebsitePermissionsFetcher.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V
    .locals 1

    .prologue
    .line 289
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V

    return-void
.end method


# virtual methods
.method public runAsync(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;)V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher$1;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;)V

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->fetchLocalStorageInfo(Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$LocalStorageInfoReadyCallback;)V

    .line 310
    return-void
.end method
