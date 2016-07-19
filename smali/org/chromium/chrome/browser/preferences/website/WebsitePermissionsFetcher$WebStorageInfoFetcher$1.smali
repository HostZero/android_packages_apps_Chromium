.class Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher$1;
.super Ljava/lang/Object;
.source "WebsitePermissionsFetcher.java"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$StorageInfoReadyCallback;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher;

.field final synthetic val$queue:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher$1;->this$1:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher$1;->val$queue:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageInfoReady(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;

    .line 323
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_0

    .line 325
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher$1;->this$1:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher;

    iget-object v3, v3, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->findOrCreateSitesByHost(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;
    invoke-static {v3, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->access$1700(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;

    move-result-object v1

    .line 326
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 327
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->addStorageInfo(Lorg/chromium/chrome/browser/preferences/website/StorageInfo;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher$1;->val$queue:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->next()V

    .line 331
    return-void
.end method
