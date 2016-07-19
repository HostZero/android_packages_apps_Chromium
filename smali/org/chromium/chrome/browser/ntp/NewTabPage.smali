.class public Lorg/chromium/chrome/browser/ntp/NewTabPage;
.super Ljava/lang/Object;
.source "NewTabPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/NativePage;
.implements Lorg/chromium/chrome/browser/compositor/layouts/content/InvalidationAwareThumbnailProvider;
.implements Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ID_OPEN_IN_INCOGNITO_TAB:I = 0x1

.field static final ID_OPEN_IN_NEW_TAB:I = 0x0

.field static final ID_REMOVE:I = 0x2

.field private static sMostVisitedSitesForTests:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAnimatedLogoUrl:Ljava/lang/String;

.field private final mBackgroundColor:I

.field private final mConstructedTimeNs:J

.field private mFakeboxDelegate:Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;

.field private mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

.field private mIsDestroyed:Z

.field private mIsLoaded:Z

.field private mIsVisible:Z

.field private mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

.field private mLastShownTimeNs:J

.field private mLogoBridge:Lorg/chromium/chrome/browser/ntp/LogoBridge;

.field private mMostVisitedItemRemovedController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

.field private mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

.field private final mNewTabPageManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

.field private final mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

.field private mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

.field private mOnLogoClickUrl:Ljava/lang/String;

.field private final mOptOutPromoShown:Z

.field private final mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

.field private mSearchProviderHasLogo:Z

.field private mSnippetsManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private final mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

.field private final mThemeColor:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 5

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$2;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    .line 560
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mConstructedTimeNs:J

    .line 562
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 563
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;

    .line 564
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 565
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 567
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->button_new_tab:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTitle:Ljava/lang/String;

    .line 568
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->ntp_bg:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mBackgroundColor:I

    .line 569
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mThemeColor:I

    .line 571
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->addObserver(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)V

    .line 576
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->shouldShowOptOutPromo()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOptOutPromoShown:Z

    .line 578
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$3;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 592
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 593
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->buildMostVisitedSites(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    .line 594
    new-instance v0, Lorg/chromium/chrome/browser/ntp/LogoBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/ntp/LogoBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLogoBridge:Lorg/chromium/chrome/browser/ntp/LogoBridge;

    .line 595
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->updateSearchProviderHasLogo()V

    .line 597
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSnippetsManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    .line 599
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 600
    sget v1, Lorg/chromium/chrome/R$layout;->new_tab_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    .line 601
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isInSingleUrlBarMode(Landroid/content/Context;)Z

    move-result v2

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSearchProviderHasLogo:Z

    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSnippetsManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->initialize(Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;ZZLorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V

    .line 604
    const-string/jumbo v0, "NewTabPage.MobileIsUserOnline"

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isOnline()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 606
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPageView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/ntp/NewTabPage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->showMostVisitedItemRemovedSnackbar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/favicon/FaviconHelper;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/chromium/chrome/browser/ntp/NewTabPage;Lorg/chromium/chrome/browser/favicon/FaviconHelper;)Lorg/chromium/chrome/browser/favicon/FaviconHelper;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/favicon/LargeIconBridge;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/chromium/chrome/browser/ntp/NewTabPage;Lorg/chromium/chrome/browser/favicon/LargeIconBridge;)Lorg/chromium/chrome/browser/favicon/LargeIconBridge;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mAnimatedLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/chromium/chrome/browser/ntp/NewTabPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mAnimatedLogoUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/LogoBridge;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLogoBridge:Lorg/chromium/chrome/browser/ntp/LogoBridge;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOnLogoClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/chromium/chrome/browser/ntp/NewTabPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOnLogoClickUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/chromium/chrome/browser/ntp/NewTabPage;)J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mConstructedTimeNs:J

    return-wide v0
.end method

.method static synthetic access$1800(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsLoaded:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/chromium/chrome/browser/ntp/NewTabPage;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsLoaded:Z

    return p1
.end method

.method static synthetic access$1902(Lorg/chromium/chrome/browser/ntp/NewTabPage;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsVisible:Z

    return p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/ntp/NewTabPage;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isInSingleUrlBarMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->recordNTPShown()V

    return-void
.end method

.method static synthetic access$2100(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->recordNTPInteractionTime()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFakeboxDelegate:Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/ntp/NewTabPage;)J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLastShownTimeNs:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/MostVisitedSites;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    return-object v0
.end method

.method static synthetic access$802(Lorg/chromium/chrome/browser/ntp/NewTabPage;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    return-object p1
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    return-object v0
.end method

.method private static buildMostVisitedSites(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/profiles/MostVisitedSites;
    .locals 1

    .prologue
    .line 609
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->sMostVisitedSitesForTests:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->sMostVisitedSitesForTests:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    .line 612
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    goto :goto_0
.end method

.method private isInSingleUrlBarMode(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 653
    invoke-static {p1}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v0

    .line 654
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOptOutPromoShown:Z

    if-nez v1, :cond_0

    .line 656
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSearchProviderHasLogo:Z

    goto :goto_0
.end method

.method public static isNTPUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 185
    if-eqz p0, :cond_0

    const-string/jumbo v0, "chrome-native://newtab/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchInterestsDialog(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 191
    new-instance v1, Lorg/chromium/chrome/browser/ntp/NativePageDialog;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/ntp/NativePageDialog;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/NativePage;)V

    .line 193
    new-instance v2, Lorg/chromium/chrome/browser/ntp/NewTabPage$1;

    invoke-direct {v2, p1, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage$1;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/app/Dialog;)V

    .line 202
    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->setListener(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;)V

    .line 203
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 204
    return-void
.end method

.method public static launchRecentTabsDialog(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    invoke-direct {v0, p1, p0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/app/Activity;)V

    .line 208
    new-instance v1, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V

    .line 209
    const-string/jumbo v2, "chrome-native://recent-tabs/"

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/NativePage;->updateForUrl(Ljava/lang/String;)V

    .line 210
    new-instance v2, Lorg/chromium/chrome/browser/ntp/NativePageDialog;

    invoke-direct {v2, p0, v1}, Lorg/chromium/chrome/browser/ntp/NativePageDialog;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/NativePage;)V

    .line 211
    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->setDialog(Landroid/app/Dialog;)V

    .line 212
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 213
    return-void
.end method

.method private onSearchEngineUpdated()V
    .locals 2

    .prologue
    .line 671
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->updateSearchProviderHasLogo()V

    .line 672
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSearchProviderHasLogo:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setSearchProviderHasLogo(Z)V

    .line 673
    return-void
.end method

.method private recordNTPInteractionTime()V
    .locals 6

    .prologue
    .line 736
    const-string/jumbo v0, "NewTabPage.TimeSpent"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLastShownTimeNs:J

    sub-long/2addr v2, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 738
    return-void
.end method

.method private recordNTPShown()V
    .locals 2

    .prologue
    .line 731
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLastShownTimeNs:J

    .line 732
    const-string/jumbo v0, "MobileNTPShown"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method static setMostVisitedSitesForTests(Lorg/chromium/chrome/browser/profiles/MostVisitedSites;)V
    .locals 0

    .prologue
    .line 217
    sput-object p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->sMostVisitedSitesForTests:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    .line 218
    return-void
.end method

.method private showMostVisitedItemRemovedSnackbar(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedItemRemovedController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NewTabPage$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$4;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedItemRemovedController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    .line 631
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 632
    sget v1, Lorg/chromium/chrome/R$string;->most_visited_item_removed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedItemRemovedController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->undo:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 636
    return-void
.end method

.method private updateSearchProviderHasLogo()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 660
    const-string/jumbo v1, "NTPSnippets"

    invoke-static {v1}, Lorg/chromium/chrome/browser/ChromeFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSearchProviderHasLogo:Z

    .line 662
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setSearchProviderHasLogo(Z)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOptOutPromoShown:Z

    if-nez v1, :cond_2

    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isDefaultSearchEngineGoogle()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSearchProviderHasLogo:Z

    goto :goto_0
.end method


# virtual methods
.method public captureThumbnail(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->captureThumbnail(Landroid/graphics/Canvas;)V

    .line 838
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 759
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 760
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Destroy called before removed from window"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 761
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsVisible:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->recordNTPInteractionTime()V

    .line 762
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    if-eqz v0, :cond_3

    .line 763
    iput-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    .line 765
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    if-eqz v0, :cond_4

    .line 766
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->destroy()V

    .line 767
    iput-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    .line 769
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    if-eqz v0, :cond_5

    .line 770
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->destroy()V

    .line 771
    iput-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLargeIconBridge:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    .line 773
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    if-eqz v0, :cond_6

    .line 774
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->destroy()V

    .line 775
    iput-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    .line 777
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLogoBridge:Lorg/chromium/chrome/browser/ntp/LogoBridge;

    if-eqz v0, :cond_7

    .line 778
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLogoBridge:Lorg/chromium/chrome/browser/ntp/LogoBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/LogoBridge;->destroy()V

    .line 779
    iput-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mLogoBridge:Lorg/chromium/chrome/browser/ntp/LogoBridge;

    .line 781
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSnippetsManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    if-eqz v0, :cond_8

    .line 782
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSnippetsManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->destroy()V

    .line 783
    iput-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mSnippetsManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    .line 785
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedItemRemovedController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    if-eqz v0, :cond_9

    .line 786
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedItemRemovedController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 788
    :cond_9
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->removeObserver(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;)V

    .line 789
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 790
    iput-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z

    .line 792
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mBackgroundColor:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    const-string/jumbo v0, "newtab"

    return-object v0
.end method

.method getNewTabPageView()Lorg/chromium/chrome/browser/ntp/NewTabPageView;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    return-object v0
.end method

.method public getSearchBoxBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getSearchBoxBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 699
    return-void
.end method

.method public getThemeColor()I
    .locals 1

    .prologue
    .line 811
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isLocationBarShownInNTP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mThemeColor:I

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    const-string/jumbo v0, "chrome-native://newtab/"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    return-object v0
.end method

.method public isLoadedForTests()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsLoaded:Z

    return v0
.end method

.method public isLocationBarShownInNTP()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->isLocationBarShownInNTP()Z

    move-result v0

    return v0
.end method

.method public onTemplateURLServiceChanged()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->onSearchEngineUpdated()V

    .line 753
    return-void
.end method

.method public setFakeboxDelegate(Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;)V
    .locals 1

    .prologue
    .line 720
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFakeboxDelegate:Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;

    .line 721
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mFakeboxDelegate:Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateVoiceSearchButtonVisibility()V

    .line 724
    :cond_0
    return-void
.end method

.method public setSearchBoxScrollListener(Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;)V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setSearchBoxScrollListener(Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;)V

    .line 714
    return-void
.end method

.method public setUrlFocusAnimationsDisabled(Z)V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setUrlFocusAnimationsDisabled(Z)V

    .line 650
    return-void
.end method

.method public setUrlFocusChangeAnimationPercent(F)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setUrlFocusChangeAnimationPercent(F)V

    .line 684
    return-void
.end method

.method public shouldCaptureThumbnail()Z
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage;->mNewTabPageView:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->shouldCaptureThumbnail()Z

    move-result v0

    return v0
.end method

.method public updateForUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 826
    return-void
.end method
