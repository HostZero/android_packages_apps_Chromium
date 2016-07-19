.class Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$JavaScriptExceptionInfoFetcher;
.super Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;
.source "WebsitePermissionsFetcher.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V
    .locals 1

    .prologue
    .line 235
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$JavaScriptExceptionInfoFetcher;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$Task;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$JavaScriptExceptionInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->getContentSettingsExceptions(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    .line 242
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->getPattern()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_0

    .line 245
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$JavaScriptExceptionInfoFetcher;->this$0:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->findOrCreateSitesByHost(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;
    invoke-static {v3, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->access$1700(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 247
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->setJavaScriptException(Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;)V

    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method
