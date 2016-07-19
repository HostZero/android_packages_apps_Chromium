.class Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;
.super Ljava/lang/Object;
.source "SingleWebsitePreferences.java"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;


# instance fields
.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 113
    return-void
.end method


# virtual methods
.method public onWebsitePermissionsAvailable(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSiteAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$100(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v2

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mergePermissionInfoForTopLevelOrigin(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;Ljava/util/List;)Lorg/chromium/chrome/browser/preferences/website/Website;
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$200(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;Ljava/util/List;)Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v0

    # setter for: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$002(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;Lorg/chromium/chrome/browser/preferences/website/Website;)Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$000(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getKeygenInfo()Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->getKeygenBlocked(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSiteAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$100(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$000(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->setKeygenInfo(Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$SingleWebsitePermissionsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->displaySitePermissions()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$300(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V

    goto :goto_0
.end method
