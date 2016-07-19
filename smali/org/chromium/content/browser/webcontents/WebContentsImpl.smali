.class Lorg/chromium/content/browser/webcontents/WebContentsImpl;
.super Ljava/lang/Object;
.source "WebContentsImpl.java"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static sParcelableUUID:Ljava/util/UUID;


# instance fields
.field private mContextMenuOpened:Z

.field private mNativeWebContentsAndroid:J

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->$assertionsDisabled:Z

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    .line 59
    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$1;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(JLorg/chromium/content_public/browser/NavigationController;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 93
    iput-object p3, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 94
    return-void
.end method

.method static synthetic access$000()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$100(J)Lorg/chromium/content_public/browser/WebContents;
    .locals 2

    .prologue
    .line 37
    invoke-static {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeFromNativePtr(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    return-object v0
.end method

.method private static addAccessibilityNodeAsChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V
    .locals 0

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->addChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V

    .line 396
    return-void
.end method

.method private clearNativePtr()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 105
    iput-object v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 106
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->destroy()V

    .line 108
    iput-object v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    .line 110
    :cond_0
    return-void
.end method

.method private static create(JLorg/chromium/content_public/browser/NavigationController;)Lorg/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;-><init>(JLorg/chromium/content_public/browser/NavigationController;)V

    return-object v0
.end method

.method private static createAccessibilitySnapshotNode(IIIIIILjava/lang/String;IIFILjava/lang/String;)Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .locals 11

    .prologue
    .line 403
    new-instance v2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p11

    invoke-direct/range {v2 .. v10}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;-><init>(IIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 406
    move/from16 v0, p9

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 407
    and-int/lit8 v3, p10, 0x1

    if-lez v3, :cond_1

    const/4 v6, 0x1

    .line 408
    :goto_0
    and-int/lit8 v3, p10, 0x2

    if-lez v3, :cond_2

    const/4 v7, 0x1

    .line 409
    :goto_1
    and-int/lit8 v3, p10, 0x4

    if-lez v3, :cond_3

    const/4 v8, 0x1

    .line 410
    :goto_2
    and-int/lit8 v3, p10, 0x8

    if-lez v3, :cond_4

    const/4 v9, 0x1

    :goto_3
    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    .line 411
    invoke-virtual/range {v2 .. v9}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->setStyle(IIFZZZZ)V

    .line 413
    :cond_0
    return-object v2

    .line 407
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 408
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 409
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 410
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private getNativePointer()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    return-wide v0
.end method

.method public static invalidateSerializedWebContentsForTesting()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    .line 53
    return-void
.end method

.method private native nativeAddMessageToDevToolsConsole(JILjava/lang/String;)V
.end method

.method private native nativeAdjustSelectionByCharacterOffset(JII)V
.end method

.method private native nativeCopy(J)V
.end method

.method private native nativeCut(J)V
.end method

.method private static native nativeDestroyWebContents(J)V
.end method

.method private native nativeEvaluateJavaScript(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
.end method

.method private native nativeEvaluateJavaScriptForTests(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
.end method

.method private native nativeExitFullscreen(J)V
.end method

.method private native nativeFocusLocationBarByDefault(J)Z
.end method

.method private static native nativeFromNativePtr(J)Lorg/chromium/content_public/browser/WebContents;
.end method

.method private native nativeGetBackgroundColor(J)I
.end method

.method private native nativeGetContentBitmap(JLorg/chromium/content_public/browser/ContentBitmapCallback;Landroid/graphics/Bitmap$Config;FFFFF)V
.end method

.method private native nativeGetEncoding(J)Ljava/lang/String;
.end method

.method private native nativeGetLastCommittedURL(J)Ljava/lang/String;
.end method

.method private native nativeGetThemeColor(J)I
.end method

.method private native nativeGetTitle(J)Ljava/lang/String;
.end method

.method private native nativeGetURL(J)Ljava/lang/String;
.end method

.method private native nativeGetVisibleURL(J)Ljava/lang/String;
.end method

.method private native nativeHasAccessedInitialDocument(J)Z
.end method

.method private native nativeInsertCSS(JLjava/lang/String;)V
.end method

.method private native nativeIsIncognito(J)Z
.end method

.method private native nativeIsLoading(J)Z
.end method

.method private native nativeIsLoadingToDifferentDocument(J)Z
.end method

.method private native nativeIsRenderWidgetHostViewReady(J)Z
.end method

.method private native nativeIsShowingInterstitialPage(J)Z
.end method

.method private native nativeOnContextMenuClosed(J)V
.end method

.method private native nativeOnHide(J)V
.end method

.method private native nativeOnShow(J)V
.end method

.method private native nativePaste(J)V
.end method

.method private native nativeReloadLoFiImages(J)V
.end method

.method private native nativeReplace(JLjava/lang/String;)V
.end method

.method private native nativeRequestAccessibilitySnapshot(JLorg/chromium/content_public/browser/AccessibilitySnapshotCallback;FF)V
.end method

.method private native nativeResumeLoadingCreatedWebContents(J)V
.end method

.method private native nativeResumeMediaSession(J)V
.end method

.method private native nativeScrollFocusedEditableNodeIntoView(J)V
.end method

.method private native nativeSelectAll(J)V
.end method

.method private native nativeSelectWordAroundCaret(J)V
.end method

.method private native nativeSendMessageToFrame(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetAudioMuted(JZ)V
.end method

.method private native nativeShowImeIfNeeded(J)V
.end method

.method private native nativeShowInterstitialPage(JLjava/lang/String;J)V
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeStopMediaSession(J)V
.end method

.method private native nativeSuspendAllMediaPlayers(J)V
.end method

.method private native nativeSuspendMediaSession(J)V
.end method

.method private native nativeUnselect(J)V
.end method

.method private native nativeUpdateTopControlsState(JZZZ)V
.end method

.method private static onAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;)V
    .locals 0

    .prologue
    .line 389
    invoke-virtual {p1, p0}, Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;->onAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V

    .line 390
    return-void
.end method

.method private static onEvaluateJavaScriptResult(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0

    .prologue
    .line 347
    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/JavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method private onGetContentBitmapFinished(Lorg/chromium/content_public/browser/ContentBitmapCallback;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 469
    invoke-interface {p1, p2, p3}, Lorg/chromium/content_public/browser/ContentBitmapCallback;->onFinishGetBitmap(Landroid/graphics/Bitmap;I)V

    .line 470
    return-void
.end method

.method private static setAccessibilitySnapshotSelection(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;II)V
    .locals 0

    .prologue
    .line 419
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->setSelection(II)V

    .line 420
    return-void
.end method


# virtual methods
.method public addMessageToDevToolsConsole(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeAddMessageToDevToolsConsole(JILjava/lang/String;)V

    .line 332
    return-void
.end method

.method public addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 4

    .prologue
    .line 424
    sget-boolean v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 425
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    .line 426
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    .line 427
    return-void
.end method

.method public adjustSelectionByCharacterOffset(II)V
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeAdjustSelectionByCharacterOffset(JII)V

    .line 294
    return-void
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeCopy(J)V

    .line 182
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeCut(J)V

    .line 177
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-static {v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeDestroyWebContents(J)V

    .line 137
    :cond_0
    return-void
.end method

.method public evaluateJavaScriptForTests(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeEvaluateJavaScriptForTests(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    .line 327
    return-void
.end method

.method public exitFullscreen()V
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeExitFullscreen(J)V

    .line 263
    return-void
.end method

.method public focusLocationBarByDefault()Z
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeFocusLocationBarByDefault(J)Z

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetBackgroundColor(J)I

    move-result v0

    return v0
.end method

.method public getContentBitmapAsync(Landroid/graphics/Bitmap$Config;FLandroid/graphics/Rect;Lorg/chromium/content_public/browser/ContentBitmapCallback;)V
    .locals 11

    .prologue
    .line 444
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v8, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v10, v0

    move-object v1, p0

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetContentBitmap(JLorg/chromium/content_public/browser/ContentBitmapCallback;Landroid/graphics/Bitmap$Config;FFFFF)V

    .line 446
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetEncoding(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastCommittedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetLastCommittedURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationController()Lorg/chromium/content_public/browser/NavigationController;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-object v0
.end method

.method public getObserversForTesting()Lorg/chromium/base/ObserverList$RewindableIterator;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->getObserversForTesting()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v0

    return-object v0
.end method

.method public getThemeColor(I)I
    .locals 2

    .prologue
    .line 352
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetThemeColor(J)I

    move-result v0

    .line 353
    if-nez v0, :cond_0

    .line 355
    :goto_0
    return p1

    :cond_0
    const/high16 v1, -0x1000000

    or-int p1, v0, v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetTitle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetURL(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisibleUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetVisibleURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 4

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncognito()Z
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsIncognito(J)Z

    move-result v0

    return v0
.end method

.method public isLoadingToDifferentDocument()Z
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsLoadingToDifferentDocument(J)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsRenderWidgetHostViewReady(J)Z

    move-result v0

    return v0
.end method

.method public isShowingInterstitialPage()Z
    .locals 2

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsShowingInterstitialPage(J)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed()V
    .locals 4

    .prologue
    .line 455
    iget-boolean v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mContextMenuOpened:Z

    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mContextMenuOpened:Z

    .line 461
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 462
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnContextMenuClosed(J)V

    goto :goto_0
.end method

.method public onContextMenuOpened()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mContextMenuOpened:Z

    .line 451
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnHide(J)V

    .line 217
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnShow(J)V

    .line 222
    return-void
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativePaste(J)V

    .line 187
    return-void
.end method

.method public reloadLoFiImages()V
    .locals 2

    .prologue
    .line 474
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeReloadLoFiImages(J)V

    .line 475
    return-void
.end method

.method public removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeReplace(JLjava/lang/String;)V

    .line 192
    return-void
.end method

.method public requestAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;FF)V
    .locals 7

    .prologue
    .line 361
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeRequestAccessibilitySnapshot(JLorg/chromium/content_public/browser/AccessibilitySnapshotCallback;FF)V

    .line 363
    return-void
.end method

.method public resumeLoadingCreatedWebContents()V
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeResumeLoadingCreatedWebContents(J)V

    .line 315
    return-void
.end method

.method public resumeMediaSession()V
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeResumeMediaSession(J)V

    .line 368
    return-void
.end method

.method public scrollFocusedEditableNodeIntoView()V
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeScrollFocusedEditableNodeIntoView(J)V

    .line 283
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSelectAll(J)V

    .line 197
    return-void
.end method

.method public selectWordAroundCaret()V
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSelectWordAroundCaret(J)V

    .line 288
    return-void
.end method

.method public setAudioMuted(Z)V
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSetAudioMuted(JZ)V

    .line 232
    return-void
.end method

.method public showInterstitialPage(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 242
    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowInterstitialPage(JLjava/lang/String;J)V

    .line 243
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeStop(J)V

    .line 172
    return-void
.end method

.method public stopMediaSession()V
    .locals 2

    .prologue
    .line 377
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeStopMediaSession(J)V

    .line 378
    return-void
.end method

.method public suspendAllMediaPlayers()V
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSuspendAllMediaPlayers(J)V

    .line 227
    return-void
.end method

.method public suspendMediaSession()V
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSuspendMediaSession(J)V

    .line 373
    return-void
.end method

.method public unselect()V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeUnselect(J)V

    goto :goto_0
.end method

.method public updateTopControlsState(ZZZ)V
    .locals 7

    .prologue
    .line 268
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeUpdateTopControlsState(JZZZ)V

    .line 270
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string/jumbo v1, "version"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 124
    const-string/jumbo v1, "processguard"

    new-instance v2, Landroid/os/ParcelUuid;

    sget-object v3, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    const-string/jumbo v1, "webcontents"

    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method
