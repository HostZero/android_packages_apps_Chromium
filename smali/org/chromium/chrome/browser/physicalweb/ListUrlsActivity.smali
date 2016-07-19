.class public Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;
.super Landroid/support/v7/app/C;
.source "ListUrlsActivity.java"

# interfaces
.implements Landroid/support/v4/widget/ak;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lorg/chromium/chrome/browser/physicalweb/UrlManager$Listener;


# static fields
.field public static final NOTIFICATION_REFERER:I = 0x1

.field public static final OPTIN_REFERER:I = 0x2

.field public static final PREFERENCE_REFERER:I = 0x3

.field public static final REFERER_KEY:Ljava/lang/String; = "referer"


# instance fields
.field private mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

.field private mBottomBar:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEmptyListText:Landroid/widget/TextView;

.field private mIsInitialDisplayRecorded:Z

.field private mIsRefreshUserInitiated:Z

.field private mIsRefreshing:Z

.field private mListView:Landroid/widget/ListView;

.field private mPhysicalWebBleClient:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

.field private mPwsClient:Lorg/chromium/chrome/browser/physicalweb/PwsClient;

.field private mScanningImageView:Landroid/widget/ImageView;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSwipeRefreshWidget:Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/C;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->hideBottomBar()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;ZZ)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->startRefresh(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->fetchIcon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->finishRefresh()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mBottomBar:Landroid/view/View;

    return-object v0
.end method

.method private static createNavigateToUrlIntent(Lorg/chromium/chrome/browser/physicalweb/PwsResult;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->siteUrl:Ljava/lang/String;

    .line 373
    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->requestUrl:Ljava/lang/String;

    .line 377
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 380
    return-object v1
.end method

.method private static createTranslationYAnimator(Landroid/view/View;FJ)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 343
    const-string/jumbo v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private fetchIcon(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mPwsClient:Lorg/chromium/chrome/browser/physicalweb/PwsClient;

    new-instance v1, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$5;-><init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V

    invoke-interface {v0, p1, v1}, Lorg/chromium/chrome/browser/physicalweb/PwsClient;->fetchIcon(Ljava/lang/String;Lorg/chromium/chrome/browser/physicalweb/PwsClient$FetchIconCallback;)V

    .line 320
    return-void
.end method

.method private finishRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mSwipeRefreshWidget:Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->setRefreshing(Z)V

    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mEmptyListText:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->physical_web_empty_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 298
    sget v0, Lorg/chromium/chrome/R$color;->physical_web_logo_gray_tint:I

    invoke-static {p0, v0}, Landroid/support/v4/content/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 299
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mScanningImageView:Landroid/widget/ImageView;

    sget v2, Lorg/chromium/chrome/R$drawable;->physical_web_logo:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mScanningImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 303
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsInitialDisplayRecorded:Z

    if-nez v0, :cond_1

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsInitialDisplayRecorded:Z

    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->getCount()I

    move-result v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onUrlsDisplayed(Landroid/content/Context;I)V

    .line 310
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsRefreshing:Z

    .line 311
    return-void

    .line 306
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsRefreshUserInitiated:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->getCount()I

    move-result v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onUrlsRefreshed(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private foregroundSubscribe()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mPhysicalWebBleClient:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->foregroundSubscribe(Landroid/app/Activity;)V

    .line 160
    return-void
.end method

.method private foregroundUnsubscribe()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mPhysicalWebBleClient:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->foregroundUnsubscribe()V

    .line 164
    return-void
.end method

.method private getBottomBarDisplayCount()I
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "org.chromium.chrome.browser.physicalweb.BOTTOM_BAR_DISPLAY_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hideBottomBar()V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mBottomBar:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const-wide/16 v2, 0xfa

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->createTranslationYAnimator(Landroid/view/View;FJ)Landroid/animation/Animator;

    move-result-object v0

    .line 332
    new-instance v1, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$6;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$6;-><init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 339
    return-void
.end method

.method private initSharedPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 348
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 349
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "org.chromium.chrome.browser.physicalweb.VERSION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 351
    if-ne v0, v3, :cond_0

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 357
    const-string/jumbo v1, "org.chromium.chrome.browser.physicalweb.VERSION"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private resolve(Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 204
    iget-object v2, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mPwsClient:Lorg/chromium/chrome/browser/physicalweb/PwsClient;

    new-instance v3, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$4;-><init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/chrome/browser/physicalweb/PwsClient;->resolve(Ljava/util/Collection;Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;)V

    .line 226
    return-void
.end method

.method private setBottomBarDisplayCount(I)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    const-string/jumbo v1, "org.chromium.chrome.browser.physicalweb.BOTTOM_BAR_DISPLAY_COUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    return-void
.end method

.method private showBottomBar()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mBottomBar:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 324
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mBottomBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mBottomBar:Landroid/view/View;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->createTranslationYAnimator(Landroid/view/View;FJ)Landroid/animation/Animator;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 327
    return-void
.end method

.method private startRefresh(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsRefreshing:Z

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 257
    :cond_0
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsRefreshing:Z

    .line 258
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsRefreshUserInitiated:Z

    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->clear()V

    .line 263
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getUrls(Z)Ljava/util/Set;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->isPhysicalWebPreferenceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->finishRefresh()V

    goto :goto_0

    .line 273
    :cond_2
    if-eqz p2, :cond_3

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mSwipeRefreshWidget:Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->setRefreshing(Z)V

    .line 278
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mEmptyListText:Landroid/widget/TextView;

    sget v2, Lorg/chromium/chrome/R$string;->physical_web_empty_list_scanning:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mScanningImageView:Landroid/widget/ImageView;

    sget v2, Lorg/chromium/chrome/R$drawable;->physical_web_scanning_animation:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mScanningImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mScanningImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 285
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 287
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->resolve(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iput-object p0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mContext:Landroid/content/Context;

    .line 78
    sget v0, Lorg/chromium/chrome/R$layout;->physical_web_list_urls_activity:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->initSharedPreferences()V

    .line 82
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    .line 84
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_empty:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_urls_list:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mListView:Landroid/widget/ListView;

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_empty_list_text:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mEmptyListText:Landroid/widget/TextView;

    .line 92
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_logo:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mScanningImageView:Landroid/widget/ImageView;

    .line 94
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_swipe_refresh_widget:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mSwipeRefreshWidget:Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mSwipeRefreshWidget:Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/physicalweb/SwipeRefreshWidget;->setOnRefreshListener(Landroid/support/v4/widget/ak;)V

    .line 98
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_bottom_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mBottomBar:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->bottom_bar_shadow_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    .line 102
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_bottom_bar_shadow:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/FadingShadowView;

    .line 104
    invoke-virtual {v0, v1, v3}, Lorg/chromium/chrome/browser/widget/FadingShadowView;->init(II)V

    .line 106
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_bottom_bar_close:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    new-instance v1, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$1;-><init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mPwsClient:Lorg/chromium/chrome/browser/physicalweb/PwsClient;

    .line 115
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "referer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 116
    if-nez p1, :cond_0

    if-ne v0, v3, :cond_0

    .line 118
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onNotificationPressed(Landroid/content/Context;)V

    .line 120
    :cond_0
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsInitialDisplayRecorded:Z

    .line 121
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsRefreshing:Z

    .line 122
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mIsRefreshUserInitiated:Z

    .line 123
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->getInstance(Lorg/chromium/chrome/browser/ChromeApplication;)Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mPhysicalWebBleClient:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    .line 125
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 129
    sget v0, Lorg/chromium/chrome/R$drawable;->btn_toolbar_reload:I

    invoke-static {p0, v0}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    sget v1, Lorg/chromium/chrome/R$color;->light_normal_color:I

    invoke-static {p0, v1}, Landroid/support/v4/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    .line 131
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 133
    sget v1, Lorg/chromium/chrome/R$string;->physical_web_refresh:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 134
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 135
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 136
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$2;-><init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 144
    sget v0, Lorg/chromium/chrome/R$string;->close:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 145
    sget v1, Lorg/chromium/chrome/R$drawable;->btn_close:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 146
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    new-instance v1, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$3;-><init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onDisplayableUrlsAdded(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->resolve(Ljava/util/Collection;)V

    .line 250
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 237
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onUrlSelected(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;

    .line 239
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->createNavigateToUrlIntent(Lorg/chromium/chrome/browser/physicalweb/PwsResult;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->foregroundUnsubscribe()V

    .line 188
    invoke-super {p0}, Landroid/support/v7/app/C;->onPause()V

    .line 189
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 193
    invoke-direct {p0, v0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->startRefresh(ZZ)V

    .line 194
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-super {p0}, Landroid/support/v7/app/C;->onResume()V

    .line 175
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->foregroundSubscribe()V

    .line 176
    invoke-direct {p0, v0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->startRefresh(ZZ)V

    .line 178
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->getBottomBarDisplayCount()I

    move-result v0

    .line 179
    if-gtz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->showBottomBar()V

    .line 181
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->setBottomBarDisplayCount(I)V

    .line 183
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v7/app/C;->onStart()V

    .line 169
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->addObserver(Lorg/chromium/chrome/browser/physicalweb/UrlManager$Listener;)V

    .line 170
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 198
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->removeObserver(Lorg/chromium/chrome/browser/physicalweb/UrlManager$Listener;)V

    .line 199
    invoke-super {p0}, Landroid/support/v7/app/C;->onStop()V

    .line 200
    return-void
.end method

.method overrideContextForTesting(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mContext:Landroid/content/Context;

    .line 391
    return-void
.end method

.method overridePwsClientForTesting(Lorg/chromium/chrome/browser/physicalweb/PwsClient;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mPwsClient:Lorg/chromium/chrome/browser/physicalweb/PwsClient;

    .line 386
    return-void
.end method
