.class Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;
.super Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;
.source "WebsitePermissionsFetcher.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V
    .locals 1

    .prologue
    .line 381
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mCallback:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->access$2100(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByOrigin:Ljava/util/Map;
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->access$1900(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->access$2000(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;->onWebsitePermissionsAvailable(Ljava/util/Map;Ljava/util/Map;)V

    .line 385
    return-void
.end method
