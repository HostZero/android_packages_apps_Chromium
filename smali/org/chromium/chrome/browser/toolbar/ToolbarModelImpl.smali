.class Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;
.super Lorg/chromium/chrome/browser/toolbar/ToolbarModel;
.source "ToolbarModelImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;
.implements Lorg/chromium/chrome/browser/toolbar/ToolbarModel$ToolbarModelDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIsIncognito:Z

.field private mIsUsingBrandColor:Z

.field private mPrimaryColor:I

.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;-><init>()V

    return-void
.end method

.method private isStoredArticle(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/dom_distiller/core/DomDistillerService;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "entry_id"

    invoke-static {p1, v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getValueForKeyInUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getActiveWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    goto :goto_0
.end method

.method public getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v1

    instance-of v1, v1, Lorg/chromium/chrome/browser/ntp/NewTabPage;

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimaryColor()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mPrimaryColor:I

    return v0
.end method

.method public getTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->isDistilledPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->isStoredArticle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/dom_distiller/core/DomDistillerService;

    move-result-object v0

    .line 89
    const-string/jumbo v2, "entry_id"

    invoke-static {v1, v2}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getValueForKeyInUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->getUrlForEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->getFormattedUrlFromOriginalDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    invoke-static {v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->getFormattedUrlFromOriginalDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isOfflinePage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getOfflinePageOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->getFormattedUrlFromOriginalDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->stripSchemeFromOnlineUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initializeWithNative()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarModel$ToolbarModelDelegate;)V

    .line 38
    return-void
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mIsIncognito:Z

    return v0
.end method

.method public isUsingBrandColor()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mIsUsingBrandColor:Z

    return v0
.end method

.method public setPrimaryColor(I)V
    .locals 3

    .prologue
    .line 125
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mPrimaryColor:I

    .line 126
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->isIncognito()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mPrimaryColor:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mIsUsingBrandColor:Z

    .line 131
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 55
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 56
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    if-eq v0, p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_0
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->mIsIncognito:Z

    .line 59
    return-void
.end method
