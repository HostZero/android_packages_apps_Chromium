.class public Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "ReaderModeManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;
.implements Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;


# static fields
.field public static final NOT_POSSIBLE:I = 0x1

.field public static final POSSIBLE:I = 0x0

.field public static final STARTED:I = 0x2


# instance fields
.field private mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private mContainerHasInfoBars:Z

.field private final mHeaderBackgroundColor:I

.field private mIsFindToolbarShowing:Z

.field private mIsFullscreenModeEntered:Z

.field private mIsInfoBarContainerShown:Z

.field private mIsKeyboardShowing:Z

.field private mIsUmaRecorded:Z

.field private mReaderModePageUrl:Ljava/lang/String;

.field protected mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

.field private mTabId:I

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mTabStatusMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabId:I

    .line 100
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 101
    iput-object p2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    .line 103
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->reader_mode_header_bg:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mHeaderBackgroundColor:I

    .line 107
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsFindToolbarShowing:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsUmaRecorded:Z

    return v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsUmaRecorded:Z

    return p1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 583
    if-nez p0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v0

    .line 585
    :cond_1
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string/jumbo v2, "enable-dom-distiller"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string/jumbo v2, "disable-reader-mode-bottom-bar"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->isDistillerHeuristicsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeTabState(I)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    .line 215
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getWebContentsObserver()Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getWebContentsObserver()Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setDistillabilityCallback(I)V
    .locals 2

    .prologue
    .line 528
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->isCallbackSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 540
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$3;-><init>(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;I)V

    invoke-static {v0, v1}, Lorg/chromium/components/dom_distiller/content/DistillablePageUtils;->setDelegate(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableDelegate;)V

    .line 575
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setIsCallbackSet(Z)V

    goto :goto_0
.end method


# virtual methods
.method public closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    goto :goto_0
.end method

.method public createNewTab(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 501
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    .line 506
    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_0

    .line 510
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    iget-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0
.end method

.method protected createWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsObserver;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v1

    .line 397
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$2;-><init>(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Lorg/chromium/content_public/browser/WebContents;I)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getWebContentsObserver()Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getWebContentsObserver()Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    invoke-static {p0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->destroy(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;)V

    .line 124
    iput-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 125
    iput-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    .line 126
    iput-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 127
    return-void
.end method

.method public getBasePageWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 358
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    goto :goto_0
.end method

.method public getChromeActivity()Lorg/chromium/chrome/browser/ChromeActivity;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    return-object v0
.end method

.method public getFindToolbarObserver()Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$1;-><init>(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)V

    return-object v0
.end method

.method protected isKeyboardShowing()Z
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/ui/UiUtils;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanelOpened()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 519
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->isPanelOpened()Z

    move-result v0

    goto :goto_0
.end method

.method public onAddInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 268
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mContainerHasInfoBars:Z

    .line 270
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->isPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setIsObscuredByOtherView(Z)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    if-eqz p3, :cond_0

    .line 274
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsInfoBarContainerShown:Z

    .line 275
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INFOBAR_SHOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    goto :goto_0
.end method

.method public onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 327
    iget-object v2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mContainerHasInfoBars:Z

    if-eqz v2, :cond_2

    .line 330
    iget-object v2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 331
    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setIsObscuredByOtherView(Z)V

    .line 338
    :cond_2
    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-eq p1, v2, :cond_3

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-eq p1, v2, :cond_3

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLOSE_BUTTON:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-ne p1, v2, :cond_0

    .line 344
    :cond_3
    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLOSE_BUTTON:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-ne p1, v2, :cond_6

    .line 345
    const-string/jumbo v2, "DomDistiller.BarCloseButtonUsage"

    iget-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v3

    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v3

    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v3, v4, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    invoke-static {v2, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 350
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v0

    .line 351
    iget-object v2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setIsDismissed(Z)V

    goto :goto_0
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 224
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabId:I

    if-eq v0, v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    iget v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    iget v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabId:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->removeTabState(I)V

    .line 233
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;-><init>()V

    .line 234
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setStatus(I)V

    .line 235
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setUrl(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 239
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->createWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setWebContentsObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    .line 240
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->isDistilledPage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setStatus(I)V

    .line 242
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePageUrl:Ljava/lang/String;

    .line 243
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CONTENT_CHANGED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0, v3}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 246
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->setDistillabilityCallback(I)V

    .line 249
    :cond_4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->addObserver(Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;)V

    goto/16 :goto_0
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->removeObserver(Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;)V

    .line 205
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->removeTabState(I)V

    .line 206
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 198
    return-void
.end method

.method public onInfoBarContainerAttachedToWindow(Z)V
    .locals 2

    .prologue
    .line 291
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsInfoBarContainerShown:Z

    .line 292
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsInfoBarContainerShown:Z

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INFOBAR_SHOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INFOBAR_HIDDEN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->requestReaderPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public onOrientationChange()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->onOrientationChanged()V

    .line 494
    :cond_0
    return-void
.end method

.method public onRemoveInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 282
    if-eqz p3, :cond_0

    .line 283
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mContainerHasInfoBars:Z

    .line 284
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsInfoBarContainerShown:Z

    .line 285
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INFOBAR_HIDDEN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->requestReaderPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget v2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabId:I

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 155
    iput v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabId:I

    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->setReaderModeManagerDelegate(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;)V

    .line 167
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->removeObserver(Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;)V

    .line 171
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->addObserver(Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;)V

    .line 176
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    .line 177
    if-nez v0, :cond_3

    .line 178
    new-instance v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;-><init>()V

    .line 179
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setStatus(I)V

    .line 180
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setUrl(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getWebContentsObserver()Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object v2

    if-nez v2, :cond_4

    .line 186
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->createWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->setWebContentsObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    .line 190
    :cond_4
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->setDistillabilityCallback(I)V

    .line 192
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->requestReaderPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public onSizeChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->isKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsKeyboardShowing:Z

    .line 379
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->KEYBOARD_SHOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsKeyboardShowing:Z

    if-eqz v0, :cond_0

    .line 381
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsKeyboardShowing:Z

    .line 382
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->KEYBOARD_HIDDEN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->requestReaderPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public onToggleFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    if-eqz p2, :cond_0

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsFullscreenModeEntered:Z

    .line 257
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FULLSCREEN_ENTERED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsFullscreenModeEntered:Z

    .line 260
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FULLSCREEN_EXITED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->requestReaderPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public recordTimeSpentInReader(J)V
    .locals 3

    .prologue
    .line 371
    const-string/jumbo v0, "DomDistiller.Time.ViewingReaderModePanel"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 373
    return-void
.end method

.method protected requestReaderPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v1

    .line 472
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 474
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mTabStatusMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeTabInfo;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsInfoBarContainerShown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsFindToolbarShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsFullscreenModeEntered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsKeyboardShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mChromeActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAccessibilityModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->requestPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public setReaderModePanel(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    .line 318
    return-void
.end method
