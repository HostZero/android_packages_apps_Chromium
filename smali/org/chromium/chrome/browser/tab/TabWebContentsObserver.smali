.class public Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "TabWebContentsObserver.java"


# static fields
.field public static final BLOCKED_BY_ADMINISTRATOR:I = -0x16


# instance fields
.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mThemeColor:I


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    .line 71
    iput-object p2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getDefaultThemeColor()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mThemeColor:I

    .line 73
    return-void
.end method

.method private static isThemeColorEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 350
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->updateMediaNotificationForTab(Landroid/content/Context;IZZLjava/lang/String;)V

    .line 339
    invoke-super {p0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 340
    return-void
.end method

.method public didAttachInterstitialPage()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->showRenderedPage()V

    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getDefaultThemeColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->didChangeThemeColor(I)V

    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 297
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDidAttachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->notifyLoadProgress(I)V

    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->getPolicyAuditor()Lorg/chromium/chrome/browser/policy/PolicyAuditor;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/policy/PolicyAuditor;->notifyCertificateFailure(Lorg/chromium/content_public/browser/WebContents;Landroid/content/Context;)V

    .line 307
    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v0

    .line 270
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getDefaultThemeColor()I

    move-result p1

    .line 275
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingInterstitialPage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getDefaultThemeColor()I

    move-result p1

    .line 276
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->isThemeColorEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getDefaultThemeColor()I

    move-result v0

    .line 279
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getDefaultThemeColor()I

    move-result v0

    .line 280
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getDefaultThemeColor()I

    move-result v0

    .line 281
    :cond_4
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 282
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 288
    :cond_5
    return-void

    .line 283
    :cond_6
    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mThemeColor:I

    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 285
    :goto_1
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_1

    :cond_7
    move v0, p1

    goto :goto_0
.end method

.method public didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 13

    .prologue
    .line 206
    if-eqz p3, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->isRunningApplicationStart()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string/jumbo v3, "Startup.FirstCommitNavigationTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->getMainEntryPointTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    const-wide/32 v8, 0xea60

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v11, 0xe1

    invoke-static/range {v3 .. v11}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V

    .line 218
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->setRunningApplicationStart(Z)V

    .line 221
    :cond_0
    if-eqz p3, :cond_1

    .line 222
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/tab/Tab;->setIsTabStateDirty(Z)V

    .line 223
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->updateTitle()V

    .line 226
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v9

    .line 227
    :goto_0
    invoke-interface {v9}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    invoke-interface {v9}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDidCommitProvisionalLoadForFrame(Lorg/chromium/chrome/browser/tab/Tab;JZLjava/lang/String;I)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-interface {v9}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 233
    :goto_1
    invoke-interface {v9}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    invoke-interface {v9}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/tab/TabObserver;->onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_1

    .line 237
    :cond_3
    if-nez p3, :cond_4

    .line 239
    :goto_2
    return-void

    .line 238
    :cond_4
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->handleDidCommitProvisonalLoadForFrame(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public didDetachInterstitialPage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getDefaultThemeColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getThemeColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->didChangeThemeColor(I)V

    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 315
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDidDetachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->notifyLoadProgress(I)V

    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/chromium/chrome/browser/tab/Tab;->maybeShowNativePage(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->showRenderedPage()V

    .line 325
    :cond_1
    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v7

    .line 173
    :goto_0
    invoke-interface {v7}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v7}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDidFailLoad(Lorg/chromium/chrome/browser/tab/Tab;ZZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/tab/Tab;->didFailPageLoad(I)V

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->getPolicyAuditor()Lorg/chromium/chrome/browser/policy/PolicyAuditor;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_URL_FAILURE:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    invoke-virtual {v0, v1, v2, p5, p4}, Lorg/chromium/chrome/browser/policy/PolicyAuditor;->notifyAuditEvent(Landroid/content/Context;Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v1, -0x16

    if-ne p3, v1, :cond_2

    .line 185
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_URL_BLOCKED:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, p5, v3}, Lorg/chromium/chrome/browser/policy/PolicyAuditor;->notifyAuditEvent(Landroid/content/Context;Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_2
    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 4

    .prologue
    .line 162
    if-eqz p4, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->didFinishPageLoad()V

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->getPolicyAuditor()Lorg/chromium/chrome/browser/policy/PolicyAuditor;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_URL_SUCCESS:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, p3, v3}, Lorg/chromium/chrome/browser/policy/PolicyAuditor;->notifyAuditEvent(Landroid/content/Context;Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public didFinishNavigation(ZZZ)V
    .locals 1

    .prologue
    .line 157
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/tab/Tab;->setIsShowingErrorPage(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 262
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tab/TabObserver;->didFirstVisuallyNonEmptyPaint(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 8

    .prologue
    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    .line 245
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setPersistentFullscreenMode(Z)V

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v7

    .line 250
    :goto_0
    invoke-interface {v7}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-interface {v7}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDidNavigateMainFrame(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->stopSwipeRefreshHandler()V

    .line 257
    return-void
.end method

.method public didStartNavigationToPendingEntry(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 330
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v2, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDidStartNavigationToPendingEntry(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 13

    .prologue
    .line 194
    if-eqz p5, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v2, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->didStartPageLoad(Ljava/lang/String;Z)V

    .line 196
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v12

    .line 197
    :goto_0
    invoke-interface {v12}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-interface {v12}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDidStartProvisionalLoadForFrame(Lorg/chromium/chrome/browser/tab/Tab;JJZLjava/lang/String;ZZ)V

    goto :goto_0

    .line 201
    :cond_1
    return-void
.end method

.method getThemeColor()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mThemeColor:I

    return v0
.end method

.method public navigationEntryCommitted()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->pushNativePageStateToNavigationEntry()V

    .line 152
    :cond_0
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 77
    const-string/jumbo v0, "TabWebContentsObs"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "renderProcessGone() for tab id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", oom protected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", already needs reload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/tab/Tab;->needsReload()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->needsReload()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingSadTab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    .line 91
    if-ne v0, v2, :cond_3

    move v6, v2

    .line 92
    :goto_0
    if-ne v0, v3, :cond_4

    move v0, v2

    .line 94
    :goto_1
    if-eqz p1, :cond_7

    .line 95
    if-eqz v6, :cond_5

    move v0, v1

    .line 111
    :goto_2
    const-string/jumbo v7, "Tab.RendererExitStatus"

    const/4 v8, 0x6

    invoke-static {v7, v0, v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    .line 117
    if-eqz p1, :cond_2

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    if-eq v0, v5, :cond_2

    const/4 v5, 0x6

    if-ne v0, v5, :cond_b

    .line 123
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->setNeedsReload(Z)V

    .line 124
    if-eqz v6, :cond_a

    move v1, v2

    .line 135
    :goto_3
    const-string/jumbo v0, "Tab.RendererCrashStatus"

    invoke-static {v0, v1, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->handleTabCrash()V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingSadTab()Z

    move-result v1

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v2

    .line 142
    :goto_4
    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v3, v1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_4

    :cond_3
    move v6, v1

    .line 91
    goto :goto_0

    :cond_4
    move v0, v1

    .line 92
    goto :goto_1

    .line 97
    :cond_5
    if-eqz v0, :cond_6

    move v0, v2

    .line 98
    goto :goto_2

    :cond_6
    move v0, v3

    .line 100
    goto :goto_2

    .line 103
    :cond_7
    if-eqz v6, :cond_8

    move v0, v4

    .line 104
    goto :goto_2

    .line 105
    :cond_8
    if-eqz v0, :cond_9

    move v0, v5

    .line 106
    goto :goto_2

    .line 108
    :cond_9
    const/4 v0, 0x5

    goto :goto_2

    :cond_a
    move v1, v3

    .line 127
    goto :goto_3

    .line 131
    :cond_b
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->showSadTab()V

    .line 133
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->logRendererCrash()V

    goto :goto_3
.end method
