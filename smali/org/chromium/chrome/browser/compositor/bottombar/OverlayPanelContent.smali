.class public Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;
.super Ljava/lang/Object;
.source "OverlayPanelContent.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

.field private mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mDidStartLoadingUrl:Z

.field private mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

.field private mIsContentViewShowing:Z

.field private mIsProcessingPendingNavigation:Z

.field private mLoadedUrl:Ljava/lang/String;

.field private mNativeOverlayPanelContentPtr:J

.field private mPendingUrl:Ljava/lang/String;

.field private mProgressObserver:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;

.field private final mWebContentsDelegate:Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mNativeOverlayPanelContentPtr:J

    .line 151
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    .line 152
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mProgressObserver:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;

    .line 153
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 155
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$1;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mWebContentsDelegate:Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/ChromeActivity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mProgressObserver:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mLoadedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mIsProcessingPendingNavigation:Z

    return p1
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;I)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->isHttpFailureCode(I)Z

    move-result v0

    return v0
.end method

.method private clearNativePanelContentPtr()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 442
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mNativeOverlayPanelContentPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 443
    :cond_0
    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mNativeOverlayPanelContentPtr:J

    .line 444
    return-void
.end method

.method private createNewContentView()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_1

    .line 239
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mDidStartLoadingUrl:Z

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->destroyContentView()V

    .line 244
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->createContentViewCore(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    if-nez v0, :cond_2

    .line 247
    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 250
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentView;->createContentView(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/WebContentsFactory;->createWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V

    .line 258
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mNativeOverlayPanelContentPtr:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mWebContentsDelegate:Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->nativeSetWebContents(JLorg/chromium/content/browser/ContentViewCore;Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;)V

    .line 261
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$2;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    .line 300
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$InterceptNavigationDelegateImpl;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$InterceptNavigationDelegateImpl;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    .line 301
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mNativeOverlayPanelContentPtr:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->nativeSetInterceptNavigationDelegate(JLorg/chromium/components/navigation_interception/InterceptNavigationDelegate;Lorg/chromium/content_public/browser/WebContents;)V

    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->onContentViewCreated(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method

.method private destroyContentView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_1

    .line 312
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mNativeOverlayPanelContentPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->nativeDestroyWebContents(J)V

    .line 313
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->destroy()V

    .line 315
    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 318
    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    .line 321
    :cond_0
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mDidStartLoadingUrl:Z

    .line 322
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mIsProcessingPendingNavigation:Z

    .line 324
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->setVisibility(Z)V

    .line 327
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->onContentViewDestroyed()V

    .line 329
    :cond_1
    return-void
.end method

.method private isHttpFailureCode(I)Z
    .locals 1

    .prologue
    .line 412
    if-lez p1, :cond_0

    const/16 v0, 0x190

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeDestroyWebContents(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeRemoveLastHistoryEntry(JLjava/lang/String;J)V
.end method

.method private native nativeSetInterceptNavigationDelegate(JLorg/chromium/components/navigation_interception/InterceptNavigationDelegate;Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method private native nativeSetWebContents(JLorg/chromium/content/browser/ContentViewCore;Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;)V
.end method

.method private setVisibility(Z)V
    .locals 2

    .prologue
    .line 378
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mIsContentViewShowing:Z

    if-ne v0, p1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 380
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mIsContentViewShowing:Z

    .line 382
    if-eqz p1, :cond_5

    .line 384
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mPendingUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mPendingUrl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->loadUrl(Ljava/lang/String;Z)V

    .line 390
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_2

    .line 391
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->createNewContentView()V

    .line 398
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    .line 400
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->onContentViewSeen()V

    .line 405
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->onVisibilityChanged(Z)V

    goto :goto_0

    .line 402
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onHide()V

    goto :goto_1
.end method


# virtual methods
.method protected createContentViewCore(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 468
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->destroyContentView()V

    .line 474
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mNativeOverlayPanelContentPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 475
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mNativeOverlayPanelContentPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->nativeDestroy(J)V

    .line 477
    :cond_1
    return-void
.end method

.method public getContentVerticalScroll()F
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method public isContentShowing()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mIsContentViewShowing:Z

    return v0
.end method

.method public isProcessingPendingNavigation()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mIsProcessingPendingNavigation:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mPendingUrl:Ljava/lang/String;

    .line 202
    if-nez p2, :cond_1

    .line 203
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mPendingUrl:Ljava/lang/String;

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->createNewContentView()V

    .line 206
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mLoadedUrl:Ljava/lang/String;

    .line 207
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mDidStartLoadingUrl:Z

    .line 208
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mIsProcessingPendingNavigation:Z

    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->handleInterceptLoadUrl(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    goto :goto_0
.end method

.method public removeLastHistoryEntry(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 460
    iget-wide v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mNativeOverlayPanelContentPtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->nativeRemoveLastHistoryEntry(JLjava/lang/String;J)V

    .line 461
    return-void
.end method

.method public resetContentViewScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v1, v1}, Lorg/chromium/content/browser/ContentViewCore;->scrollTo(FF)V

    .line 363
    :cond_0
    return-void
.end method

.method public setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V
    .locals 2

    .prologue
    .line 420
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 421
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    .line 424
    :cond_0
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->setVisibility(Z)V

    .line 221
    return-void
.end method

.method public updateTopControlsState(ZZZ)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/WebContents;->updateTopControlsState(ZZZ)V

    .line 347
    :cond_0
    return-void
.end method
