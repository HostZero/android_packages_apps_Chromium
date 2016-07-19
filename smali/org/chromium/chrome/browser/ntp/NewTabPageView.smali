.class public Lorg/chromium/chrome/browser/ntp/NewTabPageView;
.super Landroid/widget/FrameLayout;
.source "NewTabPageView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mDisableUrlFocusChangeAnimations:Z

.field private mFirstShow:Z

.field private mHasReceivedMostVisitedSites:Z

.field private mLoadHasCompleted:Z

.field private mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

.field private mMostVisitedDesign:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

.field private mMostVisitedItems:[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

.field private mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

.field private mMostVisitedPlaceholder:Landroid/view/View;

.field private mNoSearchLogoSpacer:Landroid/view/View;

.field private mOptOutView:Landroid/view/View;

.field private mPendingLoadTasks:I

.field private mPendingSnapScroll:Z

.field private mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

.field private mSearchBoxScrollListener:Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;

.field private mSearchBoxTextView:Landroid/widget/TextView;

.field private mSearchBoxView:Landroid/view/View;

.field private mSearchProviderHasLogo:Z

.field private mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;

.field private mSnapshotHeight:I

.field private mSnapshotMostVisitedChanged:Z

.field private mSnapshotScrollY:I

.field private mSnapshotWidth:I

.field private mSnippetsView:Landroid/support/v7/widget/RecyclerView;

.field private mUrlFocusChangePercent:F

.field private mVoiceSearchButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 245
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mFirstShow:Z

    .line 94
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderHasLogo:Z

    .line 102
    iput v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I

    .line 246
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotMostVisitedChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedDesign:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->loadTaskCompleted()V

    return-void
.end method

.method static synthetic access$1508(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)I
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I

    return v0
.end method

.method static synthetic access$1600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedItems:[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mOptOutView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateMostVisitedPlaceholderVisibility()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingSnapScroll:Z

    return v0
.end method

.method static synthetic access$502(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingSnapScroll:Z

    return p1
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabScrollView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateSearchBoxOnScroll()V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/LogoView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;

    return-object v0
.end method

.method private getTabsMovedIllustration()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 381
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 388
    sget v0, Lorg/chromium/chrome/R$drawable;->tabs_moved_nexus:I

    :cond_1
    :goto_1
    return v0

    .line 381
    :sswitch_0
    const-string/jumbo v3, "samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 383
    :pswitch_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->isDeviceTabbedModeByDefault()Z

    move-result v1

    if-nez v1, :cond_1

    .line 384
    sget v0, Lorg/chromium/chrome/R$drawable;->tabs_moved_samsung:I

    goto :goto_1

    .line 386
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$drawable;->tabs_moved_htc:I

    goto :goto_1

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0x194d7 -> :sswitch_1
        0x6f28bffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getTitleForDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 231
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 234
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 235
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v1, ""

    .line 236
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 238
    :cond_3
    return-object p0
.end method

.method private initializeSearchBoxScrollHandling()V
    .locals 3

    .prologue
    .line 461
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$10;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    .line 473
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    new-instance v2, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$11;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->setOnScrollListener(Lorg/chromium/chrome/browser/ntp/NewTabScrollView$OnScrollListener;)V

    .line 483
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    new-instance v2, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$12;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 500
    return-void
.end method

.method private loadSearchProviderLogo()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/NewTabPageView$13;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$13;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->getSearchProviderLogo(Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;)V

    .line 534
    return-void
.end method

.method private loadTaskCompleted()V
    .locals 2

    .prologue
    .line 507
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 508
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I

    .line 509
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I

    if-nez v0, :cond_2

    .line 510
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mLoadHasCompleted:Z

    if-eqz v0, :cond_1

    .line 511
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mLoadHasCompleted:Z

    .line 514
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedItems:[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->onLoadingComplete([Lorg/chromium/chrome/browser/ntp/MostVisitedItem;)V

    .line 516
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->loadSearchProviderLogo()V

    .line 519
    :cond_2
    return-void
.end method

.method private setUrlFocusChangeAnimationPercentInternal(F)V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getTop()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 634
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateVisualsForToolbarTransition(F)V

    .line 635
    return-void
.end method

.method private showOptOutPromo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 393
    sget v0, Lorg/chromium/chrome/R$id;->opt_out_promo_stub:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 394
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mOptOutView:Landroid/view/View;

    .line 396
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mOptOutView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->opt_out_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 398
    new-instance v1, Lorg/chromium/chrome/browser/ntp/NewTabPageView$8;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$8;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    .line 412
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->tabs_and_apps_opt_out_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v5, "<link>"

    const-string/jumbo v6, "</link>"

    invoke-direct {v4, v5, v6, v1}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mOptOutView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->tabs_moved_illustration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 418
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getTabsMovedIllustration()I

    move-result v1

    .line 419
    if-eqz v1, :cond_0

    .line 420
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getTabsMovedIllustration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mOptOutView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mOptOutView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->got_it_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 429
    new-instance v1, Lorg/chromium/chrome/browser/ntp/NewTabPageView$9;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$9;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->optOutPromoShown()V

    .line 439
    return-void

    .line 422
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateMostVisitedPlaceholderVisibility()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 873
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mHasReceivedMostVisitedSites:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->shouldShowOptOutPromo()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderHasLogo:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 878
    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mNoSearchLogoSpacer:Landroid/view/View;

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderHasLogo:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 881
    if-eqz v0, :cond_5

    .line 882
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedPlaceholder:Landroid/view/View;

    if-nez v0, :cond_1

    .line 883
    sget v0, Lorg/chromium/chrome/R$id;->most_visited_placeholder_stub:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 885
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedPlaceholder:Landroid/view/View;

    .line 887
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedPlaceholder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 894
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 873
    goto :goto_0

    .line 878
    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    .line 890
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedPlaceholder:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 891
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedPlaceholder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateSearchBoxOnScroll()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 442
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mDisableUrlFocusChangeAnimations:Z

    if-eqz v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getScrollY()I

    move-result v1

    .line 449
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v1, v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 453
    :cond_2
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateVisualsForToolbarTransition(F)V

    .line 455
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxScrollListener:Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxScrollListener:Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;->onNtpScrollChanged(F)V

    goto :goto_0
.end method

.method private updateVisualsForToolbarTransition(F)V
    .locals 3

    .prologue
    const v2, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    .line 639
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1

    move v0, v1

    .line 642
    :goto_0
    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 644
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/LogoView;->setAlpha(F)V

    .line 645
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 646
    return-void

    .line 639
    :cond_1
    sub-float v0, v2, p1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method captureThumbnail(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/LogoView;->endFadeAnimation()V

    .line 761
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/util/ViewUtils;->captureBitmap(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 762
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotWidth:I

    .line 763
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotHeight:I

    .line 764
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotScrollY:I

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotMostVisitedChanged:Z

    .line 766
    return-void
.end method

.method getSearchBoxBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 660
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 661
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 662
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 668
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 669
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 670
    :goto_0
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 672
    if-eq v0, p0, :cond_0

    .line 673
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 674
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 676
    :cond_0
    return-void
.end method

.method getUrlFocusChangeAnimationPercent()F
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mUrlFocusChangePercent:F

    return v0
.end method

.method public initialize(Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;ZZLorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 259
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    .line 261
    sget v0, Lorg/chromium/chrome/R$id;->ntp_scrollview:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->enableBottomShadow(I)V

    .line 263
    sget v0, Lorg/chromium/chrome/R$id;->ntp_content:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mContentView:Landroid/view/ViewGroup;

    .line 265
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedDesign:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    .line 266
    sget v0, Lorg/chromium/chrome/R$id;->most_visited_layout:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    .line 267
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedDesign:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v0, v1, p3}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->initMostVisitedLayout(Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;Z)V

    .line 269
    sget v0, Lorg/chromium/chrome/R$id;->search_provider_logo:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/LogoView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;

    .line 270
    sget v0, Lorg/chromium/chrome/R$id;->search_box:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    .line 271
    sget v0, Lorg/chromium/chrome/R$id;->no_search_logo_spacer:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mNoSearchLogoSpacer:Landroid/view/View;

    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->search_box_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxTextView:Landroid/widget/TextView;

    .line 274
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->search_or_type_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz p2, :cond_3

    .line 276
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 280
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/NewTabPageView$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$1;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/NewTabPageView$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$2;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 303
    sget v0, Lorg/chromium/chrome/R$id;->voice_search_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mVoiceSearchButton:Landroid/widget/ImageView;

    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mVoiceSearchButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/NewTabPageView$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$3;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    sget v0, Lorg/chromium/chrome/R$id;->ntp_toolbar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;

    .line 313
    invoke-interface {p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->getRecentTabsButton()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/ntp/NewTabPageView$4;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$4;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->getBookmarksButton()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/ntp/NewTabPageView$5;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$5;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->getInterestsButton()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/ntp/NewTabPageView$6;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$6;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-interface {p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->isInterestsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->getInterestsButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_0
    :goto_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->initializeSearchBoxScrollHandling()V

    .line 346
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 347
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setSearchProviderHasLogo(Z)V

    .line 349
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I

    .line 350
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedDesign:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    invoke-virtual {v1, p3}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->getNumberOfTiles(Z)I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->setMostVisitedURLsObserver(Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;I)V

    .line 353
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->shouldShowOptOutPromo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->showOptOutPromo()V

    .line 356
    :cond_1
    const-string/jumbo v0, "NTPSnippets"

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    sget v0, Lorg/chromium/chrome/R$id;->snippets_card_list:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnippetsView:Landroid/support/v7/widget/RecyclerView;

    .line 358
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnippetsView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 359
    const-string/jumbo v0, "NewTabPage.Snippets.Interactions"

    const/4 v1, 0x3

    invoke-static {v0, v3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnippetsView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/aN;)V

    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnippetsView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/NewTabPageView$7;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$7;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/aP;)V

    .line 376
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnippetsView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p4, v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->setSnippetsView(Landroid/support/v7/widget/RecyclerView;)V

    .line 378
    :cond_2
    return-void

    .line 278
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 338
    :cond_4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageToolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 341
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 342
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 689
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 690
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 692
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mFirstShow:Z

    if-eqz v0, :cond_2

    .line 693
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->loadTaskCompleted()V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mFirstShow:Z

    .line 700
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->isLocationBarShownInNTP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateSearchBoxOnScroll()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 704
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setUrlFocusChangeAnimationPercent(F)V

    .line 706
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 773
    sub-int v0, p8, p6

    .line 774
    sub-int v1, p4, p2

    .line 775
    if-ne v0, v1, :cond_0

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mUrlFocusChangePercent:F

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setUrlFocusChangeAnimationPercent(F)V

    .line 780
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateSearchBoxOnScroll()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 727
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 730
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 731
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedDesign:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->getMostVisitedLayoutBleed()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 733
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 735
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ntp/LogoView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 737
    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxView:Landroid/view/View;

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 738
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/ntp/LogoView;->measure(II)V

    .line 740
    :cond_0
    return-void
.end method

.method public onMostVisitedURLsAvailable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 788
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->removeAllViews()V

    .line 790
    iget-object v10, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedItems:[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    .line 791
    if-nez v10, :cond_1

    const/4 v0, 0x0

    move v7, v0

    .line 792
    :goto_0
    array-length v0, p1

    new-array v0, v0, [Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedItems:[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    .line 794
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mHasReceivedMostVisitedSites:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    .line 795
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 798
    const/4 v6, 0x0

    :goto_2
    array-length v0, p1

    if-ge v6, v0, :cond_4

    .line 799
    aget-object v3, p2, v6

    .line 800
    aget-object v2, p1, v6

    .line 801
    aget-object v4, p3, v6

    .line 802
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v0, v3}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->isOfflineAvailable(Ljava/lang/String;)Z

    move-result v5

    .line 805
    const/4 v1, 0x0

    .line 806
    const/4 v0, 0x0

    move v9, v0

    :goto_3
    if-ge v9, v7, :cond_6

    .line 807
    aget-object v0, v10, v9

    .line 808
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->isOfflineAvailable()Z

    move-result v12

    if-ne v5, v12, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getWhitelistIconPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 813
    invoke-virtual {v0, v6}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->setIndex(I)V

    .line 814
    const/4 v1, 0x0

    aput-object v1, v10, v9

    .line 820
    :goto_4
    if-nez v0, :cond_0

    .line 821
    new-instance v0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;-><init>(Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 823
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedDesign:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    invoke-virtual {v1, v11, v0, v8}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->createMostVisitedItemView(Landroid/view/LayoutInflater;Lorg/chromium/chrome/browser/ntp/MostVisitedItem;Z)Landroid/view/View;

    move-result-object v1

    .line 825
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->initView(Landroid/view/View;)V

    .line 828
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedItems:[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    aput-object v0, v1, v6

    .line 829
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->addView(Landroid/view/View;)V

    .line 798
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 791
    :cond_1
    array-length v0, v10

    move v7, v0

    goto :goto_0

    .line 794
    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .line 806
    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_3

    .line 832
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mHasReceivedMostVisitedSites:Z

    .line 833
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateMostVisitedPlaceholderVisibility()V

    .line 835
    if-eqz v8, :cond_5

    .line 836
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->loadTaskCompleted()V

    .line 840
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mContentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 842
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotMostVisitedChanged:Z

    .line 843
    return-void

    :cond_6
    move-object v0, v1

    goto :goto_4
.end method

.method public onPopularURLsAvailable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 848
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 849
    aget-object v4, p1, v0

    .line 850
    aget-object v2, p3, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v3, v2

    .line 853
    :goto_1
    if-eqz v3, :cond_2

    aget-object v2, p3, v0

    .line 854
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 856
    new-instance v5, Lorg/chromium/chrome/browser/ntp/NewTabPageView$14;

    invoke-direct {v5, p0, v4}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$14;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Ljava/lang/String;)V

    .line 864
    iget-object v6, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v6, v4, v2, v3, v5}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->ensureIconIsAvailable(Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/favicon/FaviconHelper$IconAvailabilityCallback;)V

    .line 848
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 850
    goto :goto_1

    .line 853
    :cond_2
    aget-object v2, p2, v0

    goto :goto_2

    .line 866
    :cond_3
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .prologue
    .line 718
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 720
    if-nez p1, :cond_0

    .line 721
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateVoiceSearchButtonVisibility()V

    .line 723
    :cond_0
    return-void
.end method

.method playAnimatedLogo(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;)V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/LogoView;->playAnimatedLogo(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;)V

    .line 588
    return-void
.end method

.method setSearchBoxScrollListener(Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;)V
    .locals 1

    .prologue
    .line 683
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxScrollListener:Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;

    .line 684
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchBoxScrollListener:Lorg/chromium/chrome/browser/ntp/NewTabPage$OnSearchBoxScrollListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateSearchBoxOnScroll()V

    .line 685
    :cond_0
    return-void
.end method

.method public setSearchProviderHasLogo(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 542
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderHasLogo:Z

    if-ne p1, v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 543
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderHasLogo:Z

    .line 545
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedDesign:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    invoke-virtual {v0, v2, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->setSearchProviderHasLogo(Landroid/view/View;Z)V

    .line 547
    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setUrlFocusChangeAnimationPercentInternal(F)V

    .line 550
    :cond_1
    if-eqz p1, :cond_3

    move v0, v1

    .line 551
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 552
    :goto_2
    if-ge v1, v2, :cond_4

    .line 553
    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 554
    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    if-eq v3, v4, :cond_4

    .line 556
    instance-of v4, v3, Landroid/view/ViewStub;

    if-nez v4, :cond_2

    .line 557
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 550
    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    .line 560
    :cond_4
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateMostVisitedPlaceholderVisibility()V

    .line 562
    if-eqz p1, :cond_5

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mUrlFocusChangePercent:F

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setUrlFocusChangeAnimationPercent(F)V

    .line 563
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotMostVisitedChanged:Z

    goto :goto_0
.end method

.method setUrlFocusAnimationsDisabled(Z)V
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mDisableUrlFocusChangeAnimations:Z

    if-ne p1, v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mDisableUrlFocusChangeAnimations:Z

    .line 573
    if-nez p1, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mUrlFocusChangePercent:F

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setUrlFocusChangeAnimationPercent(F)V

    goto :goto_0
.end method

.method setUrlFocusChangeAnimationPercent(F)V
    .locals 1

    .prologue
    .line 612
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mUrlFocusChangePercent:F

    .line 613
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mDisableUrlFocusChangeAnimations:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderHasLogo:Z

    if-eqz v0, :cond_0

    .line 614
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->setUrlFocusChangeAnimationPercentInternal(F)V

    .line 616
    :cond_0
    return-void
.end method

.method shouldCaptureThumbnail()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotMostVisitedChanged:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotWidth:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getHeight()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotHeight:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getScrollY()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotScrollY:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method showLogoLoadingView()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSearchProviderLogoView:Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/LogoView;->showLoadingView()V

    .line 581
    return-void
.end method

.method updateVoiceSearchButtonVisibility()V
    .locals 2

    .prologue
    .line 713
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mVoiceSearchButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->isVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 714
    return-void

    .line 713
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method urlFocusAnimationsDisabled()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mDisableUrlFocusChangeAnimations:Z

    return v0
.end method
