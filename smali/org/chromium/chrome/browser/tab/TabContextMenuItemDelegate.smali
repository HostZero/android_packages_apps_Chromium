.class public Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;
.super Ljava/lang/Object;
.source "TabContextMenuItemDelegate.java"

# interfaces
.implements Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;


# static fields
.field public static final PAGESPEED_PASSTHROUGH_HEADERS:Ljava/lang/String; = "Chrome-Proxy: pass-through\nCache-Control: no-cache"


# instance fields
.field private final mClipboard:Lorg/chromium/ui/base/Clipboard;

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 41
    new-instance v0, Lorg/chromium/ui/base/Clipboard;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/ui/base/Clipboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mClipboard:Lorg/chromium/ui/base/Clipboard;

    .line 42
    return-void
.end method

.method private isSpdyProxyEnabledForUrl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDataReductionProxyEnabledForURL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->isSpdyProxyEnabledForUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    return v0
.end method

.method public isIncognitoSupported()Z
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isIncognitoModeEnabled()Z

    move-result v0

    return v0
.end method

.method public onLoadOriginalImage()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->loadOriginalImage()V

    .line 91
    return-void
.end method

.method public onOpenImageInNewTab(Ljava/lang/String;Lorg/chromium/content_public/common/Referrer;)V
    .locals 5

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->isSpdyProxyEnabledForUrl(Ljava/lang/String;)Z

    move-result v0

    .line 116
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 117
    if-eqz v0, :cond_0

    const-string/jumbo v0, "Chrome-Proxy: pass-through\nCache-Control: no-cache"

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVerbatimHeaders(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, p2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->isIncognito()Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;

    .line 121
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOpenImageUrl(Ljava/lang/String;Lorg/chromium/content_public/common/Referrer;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 109
    invoke-virtual {v0, p2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 110
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 111
    return-void
.end method

.method public onOpenInChrome(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    const/4 v0, 0x0

    .line 130
    if-eqz p2, :cond_0

    .line 132
    :try_start_0
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isInternalScheme(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/IntentHandler;->startChromeLauncherActivityForTrustedIntent(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/4 v0, 0x1

    .line 144
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    .line 146
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    :cond_2
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onOpenInNewIncognitoTab(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 95
    const-string/jumbo v0, "MobileNewTabOpened"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;

    .line 98
    return-void
.end method

.method public onOpenInNewTab(Ljava/lang/String;Lorg/chromium/content_public/common/Referrer;)V
    .locals 5

    .prologue
    .line 71
    const-string/jumbo v0, "MobileNewTabOpened"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 74
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->isIncognito()Z

    move-result v4

    invoke-interface {v1, v0, v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getTabUma()Lorg/chromium/chrome/browser/tab/TabUma;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getTabUma()Lorg/chromium/chrome/browser/tab/TabUma;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tab/TabUma;->onBackgroundTabOpenedFromContextMenu(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onReloadLoFiImages()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->reloadLoFiImages()V

    .line 86
    return-void
.end method

.method public onSaveToClipboard(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mClipboard:Lorg/chromium/ui/base/Clipboard;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/Clipboard;->setText(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public startDownload(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 61
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->shouldInterceptContextMenuDownload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
