.class Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher$1;
.super Ljava/lang/Object;
.source "WebsitePermissionsFetcher.java"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$LocalStorageInfoReadyCallback;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;

.field final synthetic val$queue:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher$1;->this$1:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher$1;->val$queue:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalStorageInfoReady(Ljava/util/HashMap;)V
    .locals 5

    .prologue
    .line 297
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 298
    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_0

    .line 302
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher$1;->this$1:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;

    iget-object v2, v2, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->findOrCreateSitesByOrigin(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->access$1800(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->setLocalStorageInfo(Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher$1;->val$queue:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->next()V

    .line 308
    return-void
.end method
