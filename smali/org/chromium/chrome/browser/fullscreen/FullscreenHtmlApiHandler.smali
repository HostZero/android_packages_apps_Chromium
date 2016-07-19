.class public Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;
.super Ljava/lang/Object;
.source "FullscreenHtmlApiHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentViewCoreInFullscreen:Lorg/chromium/content/browser/ContentViewCore;

.field private final mDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;

.field private mFullscreenInfoBarDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;

.field private mFullscreenOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPersistentMode:Z

.field private mNotificationToast:Lorg/chromium/ui/widget/Toast;

.field private mTabInFullscreen:Lorg/chromium/chrome/browser/tab/Tab;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/Window;Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mWindow:Landroid/view/Window;

    .line 180
    iput-object p2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;

    .line 181
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;-><init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mContentViewCoreInFullscreen:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->getExtraFullscreenUIFlags()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->showNotificationToast()V

    return-void
.end method

.method private exitFullscreen(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    .line 219
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->hideNotificationToast()V

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 225
    and-int/lit8 v0, v0, -0x2

    .line 226
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_3

    .line 227
    and-int/lit16 v0, v0, -0x401

    .line 228
    and-int/lit8 v0, v0, -0x5

    .line 229
    invoke-static {}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->getExtraFullscreenUIFlags()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 234
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 238
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$1;

    invoke-direct {v0, p0, p2, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$1;-><init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 251
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->exitFullscreen()V

    .line 255
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenInfoBarDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenInfoBarDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->closeFullscreenInfoBar()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenInfoBarDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;

    .line 259
    :cond_2
    return-void

    .line 231
    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mWindow:Landroid/view/Window;

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 232
    iget-object v2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mWindow:Landroid/view/Window;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private static getExtraFullscreenUIFlags()I
    .locals 3

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 381
    const/16 v0, 0x1202

    .line 383
    :cond_0
    return v0
.end method

.method private static isSimplifiedFullscreenUIEnabled()Z
    .locals 1

    .prologue
    .line 387
    const-string/jumbo v0, "ViewsSimplifiedFullscreenUI"

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showNotificationToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 324
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mNotificationToast:Lorg/chromium/ui/widget/Toast;

    if-nez v0, :cond_0

    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Lorg/chromium/chrome/R$string;->immersive_fullscreen_api_notification:I

    .line 328
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;II)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mNotificationToast:Lorg/chromium/ui/widget/Toast;

    .line 330
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mNotificationToast:Lorg/chromium/ui/widget/Toast;

    const/16 v1, 0x31

    invoke-virtual {v0, v1, v3, v3}, Lorg/chromium/ui/widget/Toast;->setGravity(III)V

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mNotificationToast:Lorg/chromium/ui/widget/Toast;

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 333
    return-void

    .line 325
    :cond_1
    sget v0, Lorg/chromium/chrome/R$string;->fullscreen_api_notification:I

    goto :goto_0
.end method


# virtual methods
.method public enterFullscreen(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 266
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    .line 267
    if-nez v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 269
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 270
    or-int/lit8 v0, v0, 0x1

    .line 271
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_4

    .line 272
    and-int/lit16 v3, v0, 0x400

    if-ne v3, v5, :cond_3

    .line 274
    or-int/lit8 v0, v0, 0x4

    .line 275
    invoke-static {}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->getExtraFullscreenUIFlags()I

    move-result v3

    or-int/2addr v0, v3

    .line 283
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v3, :cond_2

    .line 284
    iget-object v3, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 286
    :cond_2
    new-instance v3, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$2;

    invoke-direct {v3, p0, v2}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$2;-><init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;Landroid/view/View;)V

    iput-object v3, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 307
    iget-object v3, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 308
    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 309
    iput-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mContentViewCoreInFullscreen:Lorg/chromium/content/browser/ContentViewCore;

    .line 310
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mTabInFullscreen:Lorg/chromium/chrome/browser/tab/Tab;

    .line 311
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 312
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    .line 315
    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->isSimplifiedFullscreenUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;->create(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mFullscreenInfoBarDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenInfoBarDelegate;

    goto :goto_0

    .line 277
    :cond_3
    or-int/lit16 v0, v0, 0x400

    goto :goto_1

    .line 280
    :cond_4
    iget-object v3, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 281
    iget-object v3, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mWindow:Landroid/view/Window;

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public getPersistentFullscreenMode()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mIsPersistentMode:Z

    return v0
.end method

.method public hideNotificationToast()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mNotificationToast:Lorg/chromium/ui/widget/Toast;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mNotificationToast:Lorg/chromium/ui/widget/Toast;

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->cancel()V

    .line 342
    :cond_0
    return-void
.end method

.method public onContentViewSystemUiVisibilityChange(I)V
    .locals 4

    .prologue
    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mTabInFullscreen:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mIsPersistentMode:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 362
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->hideNotificationToast()V

    .line 363
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mTabInFullscreen:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mIsPersistentMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 368
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setPersistentFullscreenMode(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mIsPersistentMode:Z

    if-ne v0, p1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 193
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mIsPersistentMode:Z

    .line 195
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mIsPersistentMode:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;->onEnterFullscreen()V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mContentViewCoreInFullscreen:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mTabInFullscreen:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mContentViewCoreInFullscreen:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mTabInFullscreen:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->exitFullscreen(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 205
    :cond_2
    iput-object v2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mContentViewCoreInFullscreen:Lorg/chromium/content/browser/ContentViewCore;

    .line 206
    iput-object v2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mTabInFullscreen:Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mDelegate:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;->cancelPendingEnterFullscreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    sget-boolean v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "No content view previously set to fullscreen."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
