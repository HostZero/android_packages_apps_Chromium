.class Lorg/chromium/chrome/browser/ntp/NewTabPage$2;
.super Ljava/lang/Object;
.source "NewTabPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    const-class v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isLocalUrl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 474
    const-string/jumbo v0, "file"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNtpOfflinePagesEnabled()Z
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NTPOfflinePages"

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchURLs(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 344
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->sameHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private recordDocumentOptOutPromoClick(I)V
    .locals 2

    .prologue
    .line 263
    const-string/jumbo v0, "DocumentActivity.OptOutClick"

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 265
    return-void
.end method

.method private recordOpenedMostVisitedItem(Lorg/chromium/chrome/browser/ntp/MostVisitedItem;)V
    .locals 6

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordAction(I)V

    .line 255
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordExplicitUserNavigation(Ljava/lang/String;I)V

    .line 257
    const-string/jumbo v0, "NewTabPage.MostVisitedTime"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLastShownTimeNs:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$500(Lorg/chromium/chrome/browser/ntp/NewTabPage;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getTileType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->recordOpenedMostVisitedItem(II)V

    goto :goto_0
.end method

.method private switchToExistingTab(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "ntp-switch-to-existing-tab"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string/jumbo v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 317
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v4, "activity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 320
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v4

    .line 322
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 323
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getBaseIntentFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/content/Intent;

    move-result-object v6

    .line 324
    invoke-static {v6}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v6

    .line 325
    invoke-interface {v4, v6}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getCurrentUrlForDocument(I)Ljava/lang/String;

    move-result-object v6

    .line 326
    invoke-direct {p0, v6, p1, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->matchURLs(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->moveToFront()V

    move v2, v3

    .line 340
    :cond_1
    :goto_1
    return v2

    .line 312
    :cond_2
    const-string/jumbo v1, "host"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    .line 313
    goto :goto_0

    .line 332
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$700(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v4

    .line 333
    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_1

    .line 334
    invoke-interface {v4, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->matchURLs(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 335
    invoke-static {v4, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    move v2, v3

    .line 336
    goto :goto_1

    .line 333
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method


# virtual methods
.method public ensureIconIsAvailable(Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/favicon/FaviconHelper$IconAvailabilityCallback;)V
    .locals 7

    .prologue
    .line 467
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1200(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    new-instance v1, Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;-><init>()V

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1202(Lorg/chromium/chrome/browser/ntp/NewTabPage;Lorg/chromium/chrome/browser/favicon/FaviconHelper;)Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1200(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$900(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->ensureIconIsAvailable(Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/favicon/FaviconHelper$IconAvailabilityCallback;)V

    goto :goto_0
.end method

.method public focusSearchBox(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFakeboxDelegate:Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$300(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    if-eqz p1, :cond_2

    .line 430
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFakeboxDelegate:Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$300(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;->startVoiceRecognition()V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFakeboxDelegate:Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$300(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;->requestUrlFocusFromFakebox(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLargeIconForUrl(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1300(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    new-instance v1, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$900(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1302(Lorg/chromium/chrome/browser/ntp/NewTabPage;Lorg/chromium/chrome/browser/favicon/LargeIconBridge;)Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    .line 461
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1300(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->getLargeIconForUrl(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z

    goto :goto_0
.end method

.method public getSearchProviderLogo(Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;)V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 508
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$2;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPage$2;Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;)V

    .line 517
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLogoBridge:Lorg/chromium/chrome/browser/ntp/LogoBridge;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1500(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/LogoBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/LogoBridge;->getCurrentLogo(Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;)V

    goto :goto_0
.end method

.method public isInterestsEnabled()Z
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-interests"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationBarShownInNTP()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$100(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # invokes: Lorg/chromium/chrome/browser/ntp/NewTabPage;->isInSingleUrlBarMode(Landroid/content/Context;)Z
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$200(Lorg/chromium/chrome/browser/ntp/NewTabPage;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$100(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->urlFocusAnimationsDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOfflineAvailable(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->isNtpOfflinePagesEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 484
    :cond_1
    :goto_0
    return v0

    .line 480
    :cond_2
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->isLocalUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$800(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v2

    if-nez v2, :cond_3

    .line 482
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;
    invoke-static {v3}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$900(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v3

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$802(Lorg/chromium/chrome/browser/ntp/NewTabPage;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    .line 484
    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$800(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getOfflineUrlForOnlineUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isToolbarEnabled()Z
    .locals 1

    .prologue
    .line 249
    const-string/jumbo v0, "NTPToolbar"

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVoiceSearchEnabled()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFakeboxDelegate:Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$300(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFakeboxDelegate:Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$300(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;->isVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigateToBookmarks()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string/jumbo v0, "MobileNTPSwitchToBookmarks"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->showBookmarkManager(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public navigateToInterests()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    const-string/jumbo v0, "MobileNTP.Interests.OpenDialog"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->launchInterestsDialog(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method

.method public navigateToRecentTabs()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 409
    :cond_0
    const-string/jumbo v0, "MobileNTPSwitchToOpenTabs"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->launchRecentTabsDialog(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const-string/jumbo v2, "chrome-native://recent-tabs/"

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 363
    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->contextmenu_open_in_new_tab:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 365
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isIncognitoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const/4 v0, 0x1

    sget v1, Lorg/chromium/chrome/R$string;->contextmenu_open_in_incognito_tab:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 370
    :cond_1
    const/4 v0, 0x2

    sget v1, Lorg/chromium/chrome/R$string;->remove:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onLoadingComplete([Lorg/chromium/chrome/browser/ntp/MostVisitedItem;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 522
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mConstructedTimeNs:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1700(Lorg/chromium/chrome/browser/ntp/NewTabPage;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 523
    const-string/jumbo v0, "Tab.NewTabOnload"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 525
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsLoaded:Z
    invoke-static {v0, v6}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1802(Lorg/chromium/chrome/browser/ntp/NewTabPage;Z)Z

    .line 526
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsVisible:Z
    invoke-static {v0, v6}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1902(Lorg/chromium/chrome/browser/ntp/NewTabPage;Z)Z

    .line 527
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordOpenedNTP()V

    .line 529
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # invokes: Lorg/chromium/chrome/browser/ntp/NewTabPage;->recordNTPShown()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$2000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    .line 533
    array-length v0, p1

    new-array v2, v0, [I

    move v0, v1

    .line 534
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 535
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getTileType()I

    move-result v3

    aput v3, v2, v0

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 537
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->recordTileTypeMetrics([I)V

    .line 539
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->isNtpOfflinePagesEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 542
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->isOfflineAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    const-string/jumbo v0, "NewTabPage.TileOfflineAvailable"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 541
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 549
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/sync/SyncSessionsMetrics;->recordYoungestForeignTabAgeOnNTP()V

    goto :goto_0
.end method

.method public onLogoClicked(Z)V
    .locals 4

    .prologue
    .line 489
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mAnimatedLogoUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$100(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->showLogoLoadingView()V

    .line 493
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLogoBridge:Lorg/chromium/chrome/browser/ntp/LogoBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1500(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/LogoBridge;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2$1;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPage$2;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mAnimatedLogoUrl:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/LogoBridge;->getAnimatedLogo(Lorg/chromium/chrome/browser/ntp/LogoBridge$AnimatedLogoCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOnLogoClickUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1600(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOnLogoClickUrl:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1600(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_0
.end method

.method public onMenuItemClick(ILorg/chromium/chrome/browser/ntp/MostVisitedItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 376
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    :goto_0
    return v0

    .line 377
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 379
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->recordOpenedMostVisitedItem(Lorg/chromium/chrome/browser/ntp/MostVisitedItem;)V

    .line 380
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$700(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v2

    new-instance v3, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    sget-object v4, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    iget-object v5, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v5}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;

    move v0, v1

    .line 383
    goto :goto_0

    .line 385
    :pswitch_1
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->recordOpenedMostVisitedItem(Lorg/chromium/chrome/browser/ntp/MostVisitedItem;)V

    .line 386
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$700(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    sget-object v3, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v4}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;

    move v0, v1

    .line 389
    goto :goto_0

    .line 391
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    move-result-object v0

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->addBlacklistedUrl(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/chromium/chrome/browser/ntp/NewTabPage;->showMostVisitedItemRemovedSnackbar(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1100(Lorg/chromium/chrome/browser/ntp/NewTabPage;Ljava/lang/String;)V

    move v0, v1

    .line 393
    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public open(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->isNtpOfflinePagesEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$800(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$900(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$802(Lorg/chromium/chrome/browser/ntp/NewTabPage;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    .line 355
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$800(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getLaunchUrlFromOnlineUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 357
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_0
.end method

.method public open(Lorg/chromium/chrome/browser/ntp/MostVisitedItem;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->recordOpenedMostVisitedItem(Lorg/chromium/chrome/browser/ntp/MostVisitedItem;)V

    .line 301
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->switchToExistingTab(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->open(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public optOutPromoClicked(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 284
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_0
    if-eqz p1, :cond_1

    .line 286
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->recordDocumentOptOutPromoClick(I)V

    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->launchSettingsPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->recordDocumentOptOutPromoClick(I)V

    .line 291
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->setOptedOutState(I)V

    goto :goto_0
.end method

.method public optOutPromoShown()V
    .locals 1

    .prologue
    .line 277
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->incrementOptOutShownCount()V

    .line 279
    const-string/jumbo v0, "DocumentActivity_OptOutShownOnHome"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public setMostVisitedURLsObserver(Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;I)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->setMostVisitedURLsObserver(Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;I)V

    goto :goto_0
.end method

.method public shouldShowOptOutPromo()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->isOptOutPromoDismissed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getOptOutShownCount()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
