.class public Lorg/chromium/chrome/browser/webapps/WebappActivity;
.super Lorg/chromium/chrome/browser/webapps/FullScreenActivity;
.source "WebappActivity.java"


# static fields
.field public static final WEBAPP_SCHEME:Ljava/lang/String; = "webapp"


# instance fields
.field private mBrandColor:Ljava/lang/Integer;

.field private final mDirectoryManager:Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

.field private mIsInitialized:Z

.field private mLargestFavicon:Landroid/graphics/Bitmap;

.field private mOldWebappCleanupStarted:Z

.field private mSplashScreen:Landroid/view/ViewGroup;

.field private mUrlBar:Lorg/chromium/chrome/browser/webapps/WebappUrlBar;

.field private final mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

.field private mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;-><init>()V

    .line 85
    invoke-static {}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->createEmpty()Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    .line 86
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mDirectoryManager:Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

    .line 87
    new-instance v0, Lorg/chromium/chrome/browser/metrics/WebappUma;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/metrics/WebappUma;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/webapps/WebappActivity;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->initializeSplashScreenWidgets(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateUrlBar()V

    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Lorg/chromium/chrome/browser/metrics/WebappUma;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->isWebappDomain()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/webapps/WebappActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mBrandColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateTaskDescription()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Lorg/chromium/chrome/browser/webapps/WebappInfo;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mLargestFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lorg/chromium/chrome/browser/webapps/WebappActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mLargestFavicon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/webapps/WebappActivity;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->hideSplashScreen(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$902(Lorg/chromium/chrome/browser/webapps/WebappActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private hideSplashScreen(I)V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;-><init>(Lorg/chromium/chrome/browser/webapps/WebappActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private initializeSplashScreen()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$color;->webapp_default_bg:I

    invoke-static {v3, v4}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->backgroundColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/ColorUtils;->getOpaqueColor(I)I

    move-result v3

    .line 241
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 244
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 245
    iget-object v4, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/WebappUma;->splashscreenVisible()V

    .line 248
    iget-object v4, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->hasValidBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/metrics/WebappUma;->recordSplashscreenBackgroundColor(I)V

    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;

    iget-object v4, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->hasValidThemeColor()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/WebappUma;->recordSplashscreenThemeColor(I)V

    .line 255
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->open(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/webapps/WebappActivity$1;

    invoke-direct {v1, p0, v3}, Lorg/chromium/chrome/browser/webapps/WebappActivity$1;-><init>(Lorg/chromium/chrome/browser/webapps/WebappActivity;I)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->getSplashScreenImage(Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;)V

    .line 262
    return-void

    :cond_0
    move v0, v2

    .line 248
    goto :goto_0

    :cond_1
    move v1, v2

    .line 251
    goto :goto_1
.end method

.method private initializeSplashScreenWidgets(ILandroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 265
    if-nez p2, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->icon()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 266
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/chromium/chrome/R$dimen;->webapp_splash_image_size_minimum:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 268
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/chromium/chrome/R$dimen;->webapp_splash_image_size_threshold:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 273
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v5, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->icon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->isIconGenerated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/metrics/WebappUma;->recordSplashscreenIconType(I)V

    .line 276
    sget v0, Lorg/chromium/chrome/R$layout;->webapp_splash_screen_no_icon:I

    .line 302
    :goto_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 306
    sget v1, Lorg/chromium/chrome/R$id;->webapp_splash_screen_name:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 308
    sget v3, Lorg/chromium/chrome/R$id;->webapp_splash_screen_icon:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 310
    iget-object v3, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 313
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/util/ColorUtils;->shoudUseLightForegroundOnBackground(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$color;->webapp_splash_title_light:I

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    :cond_2
    return-void

    :cond_3
    move-object v2, p2

    .line 265
    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, v4, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v4, :cond_6

    :cond_5
    move v0, v1

    .line 281
    :goto_2
    if-eqz v0, :cond_7

    .line 282
    sget v3, Lorg/chromium/chrome/R$layout;->webapp_splash_screen_small:I

    .line 289
    :goto_3
    if-nez p2, :cond_8

    move v0, v1

    .line 296
    :goto_4
    iget-object v4, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;

    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/metrics/WebappUma;->recordSplashscreenIconType(I)V

    .line 297
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/metrics/WebappUma;->recordSplashscreenIconSize(I)V

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v3

    .line 279
    goto :goto_2

    .line 284
    :cond_7
    sget v3, Lorg/chromium/chrome/R$layout;->webapp_splash_screen_large:I

    goto :goto_3

    .line 291
    :cond_8
    if-eqz v0, :cond_9

    .line 292
    const/4 v0, 0x3

    goto :goto_4

    .line 294
    :cond_9
    const/4 v0, 0x2

    goto :goto_4
.end method

.method private initializeUI(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 108
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->uri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->createTabObserver()Lorg/chromium/chrome/browser/tab/TabObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 118
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabWebContentsDelegateAndroid()Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->setDisplayMode(I)V

    .line 120
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->reloadIgnoringCache()V

    goto :goto_0
.end method

.method private isWebappDomain()Z
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getWebappInfo()Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->uri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->sameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updateTaskDescription()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 433
    .line 434
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->shortName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 435
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->shortName()Ljava/lang/String;

    move-result-object v0

    .line 441
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->icon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 442
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->icon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 447
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mBrandColor:Ljava/lang/Integer;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->hasValidThemeColor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->themeColor()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mBrandColor:Ljava/lang/Integer;

    .line 451
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v3

    .line 453
    const/high16 v2, -0x1000000

    .line 454
    iget-object v4, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mBrandColor:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 455
    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mBrandColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 456
    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mBrandColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/util/ColorUtils;->getDarkenedColorForStatusBar(I)I

    move-result v2

    .line 459
    :cond_2
    invoke-static {v3}, Lorg/chromium/chrome/browser/util/ColorUtils;->getOpaqueColor(I)I

    move-result v3

    invoke-static {p0, v0, v1, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setTaskDescription(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 461
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 462
    return-void

    .line 436
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 437
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mLargestFavicon:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private updateUrlBar()V
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mUrlBar:Lorg/chromium/chrome/browser/webapps/WebappUrlBar;

    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mUrlBar:Lorg/chromium/chrome/browser/webapps/WebappUrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->update(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected final createFullscreenManager(Landroid/view/View;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    .locals 6

    .prologue
    .line 524
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getControlContainerHeightResource()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;-><init>(Landroid/app/Activity;Landroid/view/View;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;IZ)V

    return-object v0
.end method

.method protected createTabDelegateFactory()Lorg/chromium/chrome/browser/tab/TabDelegateFactory;
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappActivity$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity$4;-><init>(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    return-object v0
.end method

.method protected createTabObserver()Lorg/chromium/chrome/browser/tab/TabObserver;
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;-><init>(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    return-object v0
.end method

.method public finishNativeInitialization()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->finish()V

    .line 134
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->finishNativeInitialization()V

    .line 135
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->initializeUI(Landroid/os/Bundle;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mIsInitialized:Z

    .line 137
    return-void
.end method

.method protected final getActivityDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mDirectoryManager:Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->getWebappDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

.method public getControlContainerHeightResource()I
    .locals 1

    .prologue
    .line 530
    sget v0, Lorg/chromium/chrome/R$dimen;->webapp_control_container_height:I

    return v0
.end method

.method protected getControlContainerLayoutId()I
    .locals 1

    .prologue
    .line 217
    sget v0, Lorg/chromium/chrome/R$layout;->webapp_control_container:I

    return v0
.end method

.method protected getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSplashScreenForTests()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getUrlBarForTests()Lorg/chromium/chrome/browser/webapps/WebappUrlBar;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mUrlBar:Lorg/chromium/chrome/browser/webapps/WebappUrlBar;

    return-object v0
.end method

.method getWebappInfo()Lorg/chromium/chrome/browser/webapps/WebappInfo;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    return-object v0
.end method

.method protected isContextualSearchAllowed()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method isSplashScreenVisibleForTests()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUrlBarVisible()Z
    .locals 1

    .prologue
    .line 519
    sget v0, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 95
    invoke-static {p1}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->create(Landroid/content/Intent;)Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-result-object v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    const-string/jumbo v0, "WebappActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to parse new Intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->finish()V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->copy(Lorg/chromium/chrome/browser/webapps/WebappInfo;)V

    .line 101
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->resetSavedInstanceState()V

    .line 102
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->initializeUI(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getTaskId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/document/DocumentUtils;->finishOtherTasksWithData(Landroid/net/Uri;I)Landroid/content/Intent;

    .line 197
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateTaskDescription()V

    .line 199
    :cond_1
    invoke-super {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->onResume()V

    .line 203
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mOldWebappCleanupStarted:Z

    if-nez v0, :cond_2

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->unregisterOldWebapps(Landroid/content/Context;J)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mOldWebappCleanupStarted:Z

    .line 207
    :cond_2
    return-void
.end method

.method public onResumeWithNative()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->onResumeWithNative()V

    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/WebappUma;->commitMetrics()V

    .line 213
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "tabId"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string/jumbo v0, "tabUrl"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onStartWithNative()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->onStartWithNative()V

    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mDirectoryManager:Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->cleanUpDirectories(Landroid/content/Context;Ljava/lang/String;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method

.method public onStopWithNative()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->onStopWithNative()V

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mDirectoryManager:Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->cancelCleanup()V

    .line 158
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->saveState(Ljava/io/File;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->setPersistentFullscreenMode(Z)V

    .line 162
    :cond_1
    return-void
.end method

.method public postInflationStartup()V
    .locals 2

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->initializeSplashScreen()V

    .line 224
    invoke-super {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->postInflationStartup()V

    .line 225
    sget v0, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/webapps/WebappControlContainer;

    .line 227
    sget v1, Lorg/chromium/chrome/R$id;->webapp_url_bar:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mUrlBar:Lorg/chromium/chrome/browser/webapps/WebappUrlBar;

    .line 228
    return-void
.end method

.method public preInflationStartup()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->create(Landroid/content/Intent;)Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->copy(Lorg/chromium/chrome/browser/webapps/WebappInfo;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->orientation()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0, p0}, Lorg/chromium/content/browser/ScreenOrientationProvider;->lockOrientation(BLandroid/app/Activity;)V

    .line 128
    invoke-super {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->preInflationStartup()V

    .line 129
    return-void
.end method

.method saveState(Ljava/io/File;)V
    .locals 8

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getTabFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 170
    const/4 v2, 0x0

    .line 172
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 173
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 175
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 176
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/TabState;->saveState(Ljava/io/FileOutputStream;Lorg/chromium/chrome/browser/TabState;Z)V

    .line 178
    const-string/jumbo v0, "Android.StrictMode.WebappSaveState"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 187
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 181
    :goto_1
    :try_start_2
    const-string/jumbo v2, "WebappActivity"

    const-string/jumbo v4, "Failed to save out tab state."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 182
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 183
    :goto_2
    :try_start_3
    const-string/jumbo v2, "WebappActivity"

    const-string/jumbo v4, "Failed to save out tab state."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 185
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 182
    :catch_2
    move-exception v0

    goto :goto_2

    .line 180
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method protected setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public shouldShowTopControls(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 569
    :cond_0
    :goto_0
    return v0

    .line 564
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->uri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->sameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 566
    if-eqz v2, :cond_2

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
