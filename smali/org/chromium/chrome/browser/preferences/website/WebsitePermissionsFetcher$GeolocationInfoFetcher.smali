.class Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$GeolocationInfoFetcher;
.super Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;
.source "WebsitePermissionsFetcher.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$GeolocationInfoFetcher;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$GeolocationInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->getGeolocationInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    .line 198
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_0

    .line 200
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$GeolocationInfoFetcher;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->createSiteByOriginAndHost(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Lorg/chromium/chrome/browser/preferences/website/Website;
    invoke-static {v3, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->access$1600(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setGeolocationInfo(Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;)V

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method
