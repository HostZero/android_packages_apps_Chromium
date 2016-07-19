.class public Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
.super Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;
.source "TabWebContentsDelegateAndroid.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCloseContentsRunnable:Ljava/lang/Runnable;

.field private mDisplayMode:I

.field private mFindMatchRectsListener:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;

.field private mFindResultListener:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindResultListener;

.field protected mHandler:Landroid/os/Handler;

.field protected final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mWebContentsUrlMapping:Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mFindMatchRectsListener:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mDisplayMode:I

    .line 76
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;-><init>(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mCloseContentsRunnable:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mHandler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method private static createFindMatchRectsDetails(IILandroid/graphics/RectF;)Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;-><init>(IILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private static createFindNotificationDetails(ILandroid/graphics/Rect;IZ)Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;-><init>(ILandroid/graphics/Rect;IZ)V

    return-object v0
.end method

.method private static createRect(IIII)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static createRectF(FFFF)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private getDisplayMode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mDisplayMode:I

    return v0
.end method

.method private handleMediaKey(Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 459
    :sswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 461
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 444
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method private isCapturingAudio()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->nativeIsCapturingAudio(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCapturingVideo()Z
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->nativeIsCapturingVideo(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeIsCapturingAudio(Lorg/chromium/content_public/browser/WebContents;)Z
.end method

.method private static native nativeIsCapturingVideo(Lorg/chromium/content_public/browser/WebContents;)Z
.end method

.method private static native nativeOnRendererResponsive(Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method private static native nativeOnRendererUnresponsive(Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method private onFindMatchRectsAvailable(Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mFindMatchRectsListener:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mFindMatchRectsListener:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;->onFindMatchRects(Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;)V

    .line 138
    :cond_0
    return-void
.end method

.method private onFindResultAvailable(Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mFindResultListener:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindResultListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mFindResultListener:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindResultListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindResultListener;->onFindResult(Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;)V

    .line 131
    :cond_0
    return-void
.end method

.method private requestAppBanner()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->requestAppBanner()Z

    move-result v0

    return v0
.end method

.method private static setMatchRectByIndex(Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->rects:[Landroid/graphics/RectF;

    aput-object p2, v0, p1

    .line 179
    return-void
.end method


# virtual methods
.method public activateContents()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 352
    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_3

    .line 354
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->isDestroyed()Z

    move-result v0

    .line 356
    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    :cond_0
    const-string/jumbo v0, "WebContentsDelegate"

    const-string/jumbo v2, "Activity destroyed before calling activateContents().  Bailing out."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :cond_1
    :goto_1
    return-void

    .line 361
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->getTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v1

    .line 363
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 364
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 365
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->bringActivityToForeground()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public addNewContents(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;ILandroid/graphics/Rect;Z)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 317
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mWebContentsUrlMapping:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v0, p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    .line 320
    sget-boolean v1, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mWebContentsUrlMapping:Landroid/util/Pair;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 324
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mWebContentsUrlMapping:Landroid/util/Pair;

    .line 327
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    .line 342
    :goto_0
    return v0

    .line 332
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    sget-object v4, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Ljava/lang/String;)Z

    move-result v1

    .line 334
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createsTabsAsynchronously()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    const/4 v1, 0x1

    .line 335
    :goto_1
    if-eqz v1, :cond_4

    const/4 v0, 0x6

    if-ne p3, v0, :cond_4

    .line 336
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->getPolicyAuditor()Lorg/chromium/chrome/browser/policy/PolicyAuditor;

    move-result-object v0

    .line 338
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_POPUP_URL_SUCCESS:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    const-string/jumbo v4, ""

    invoke-virtual {v0, v2, v3, v5, v4}, Lorg/chromium/chrome/browser/policy/PolicyAuditor;->notifyAuditEvent(Landroid/content/Context;Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 342
    goto :goto_0

    :cond_5
    move v1, v6

    .line 334
    goto :goto_1
.end method

.method protected bringActivityToForeground()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/Tab;->createBringTabToFrontIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    .line 384
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 387
    :cond_0
    return-void
.end method

.method public closeContents()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mCloseContentsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mCloseContentsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method

.method protected getTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    return-object v0
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    goto :goto_0

    .line 434
    :cond_2
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->handleMediaKey(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->getPersistentFullscreenMode()Z

    move-result v0

    goto :goto_0
.end method

.method public navigationStateChanged(I)V
    .locals 5

    .prologue
    .line 227
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->isCapturingAudio()Z

    move-result v2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->isCapturingVideo()Z

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->updateMediaNotificationForTab(Landroid/content/Context;IZZLjava/lang/String;)V

    .line 232
    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateTitle()V

    .line 236
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 238
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tab/TabObserver;->onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 242
    :cond_2
    return-void
.end method

.method public onLoadProgressChanged(I)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->notifyLoadProgress(I)V

    goto :goto_0
.end method

.method public onLoadStarted(Z)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->onLoadStarted(Z)V

    .line 190
    return-void
.end method

.method public onLoadStopped()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->onLoadStopped()V

    .line 195
    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 200
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v2, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onUpdateUrl(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public openNewTab(Ljava/lang/String;Ljava/lang/String;[BIZ)V
    .locals 7

    .prologue
    .line 295
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/tab/Tab;->openNewTab(Ljava/lang/String;Ljava/lang/String;[BIZZ)V

    .line 296
    return-void
.end method

.method public rendererResponsive()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->rendererResponsive()V

    .line 282
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->nativeOnRendererResponsive(Lorg/chromium/content_public/browser/WebContents;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->handleRendererResponsive()V

    .line 284
    return-void
.end method

.method public rendererUnresponsive()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->rendererUnresponsive()V

    .line 275
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->nativeOnRendererUnresponsive(Lorg/chromium/content_public/browser/WebContents;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->handleRendererUnresponsive()V

    .line 277
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mDisplayMode:I

    .line 119
    return-void
.end method

.method public setFindMatchRectsListener(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mFindMatchRectsListener:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindMatchRectsListener;

    .line 148
    return-void
.end method

.method public setFindResultListener(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindResultListener;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mFindResultListener:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$FindResultListener;

    .line 143
    return-void
.end method

.method public shouldResumeRequestsForCreatedWindow()Z
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    .line 310
    sget-boolean v1, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 311
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createsTabsAsynchronously()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRepostFormWarningDialog()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->resetSwipeRefreshHandler()V

    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/RepostFormWarningDialog;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 210
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takeFocus(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 399
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    .line 400
    if-nez v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    if-eqz p1, :cond_5

    .line 402
    sget v1, Lorg/chromium/chrome/R$id;->menu_button:I

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 404
    :cond_2
    sget v1, Lorg/chromium/chrome/R$id;->document_menu_button:I

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 406
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 410
    :cond_4
    sget v1, Lorg/chromium/chrome/R$id;->tab_switcher_button:I

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 415
    :cond_5
    sget v1, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 416
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0
.end method

.method public toggleFullscreenModeForTab(Z)V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setPersistentFullscreenMode(Z)V

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 220
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v2, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onToggleFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method public visibleSSLStateChanged()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 247
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tab/TabObserver;->onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method public webContentsCreated(Lorg/chromium/content_public/browser/WebContents;JLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 12

    .prologue
    .line 255
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v2

    .line 256
    :goto_0
    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lorg/chromium/chrome/browser/tab/TabObserver;->webContentsCreated(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;JLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0

    .line 261
    :cond_0
    sget-boolean v2, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mWebContentsUrlMapping:Landroid/util/Pair;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 262
    :cond_1
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mWebContentsUrlMapping:Landroid/util/Pair;

    .line 265
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createsTabsAsynchronously()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    invoke-static {}, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;->getInstance()Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;->attachDelegate(Lorg/chromium/content_public/browser/WebContents;)V

    .line 270
    :cond_2
    return-void
.end method
