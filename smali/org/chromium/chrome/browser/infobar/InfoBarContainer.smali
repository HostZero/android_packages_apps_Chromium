.class public Lorg/chromium/chrome/browser/infobar/InfoBarContainer;
.super Lorg/chromium/chrome/browser/banners/SwipableOverlayView;
.source "InfoBarContainer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sIsAllowedToAutoHide:Z


# instance fields
.field private mDestroyed:Z

.field private final mInfoBars:Ljava/util/ArrayList;

.field private mIsObscured:Z

.field private final mLayout:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

.field private final mNativeInfoBarContainer:J

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private mParentView:Landroid/view/ViewGroup;

.field private mTabId:I

.field private final mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    const-class v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    .line 45
    sput-boolean v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->sIsAllowedToAutoHide:Z

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$1;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    .line 107
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mDestroyed:Z

    .line 118
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mObservers:Lorg/chromium/base/ObserverList;

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {p4, v0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 127
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setVerticalScrollBarEnabled(Z)V

    .line 129
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x50

    invoke-direct {v1, v4, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 131
    invoke-static {p1}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    .line 133
    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 134
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iput p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mTabId:I

    .line 137
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mParentView:Landroid/view/ViewGroup;

    .line 139
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mLayout:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mLayout:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mNativeInfoBarContainer:J

    .line 146
    return-void

    .line 131
    :cond_0
    const/16 v0, 0x68

    goto :goto_0
.end method

.method private addInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBar;)V
    .locals 3

    .prologue
    .line 207
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 208
    :cond_0
    if-nez p1, :cond_2

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Trying to add an info bar that has already been added."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 215
    :cond_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->addToParentView()V

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;

    .line 219
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-interface {v0, p0, p1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;->onAddInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V

    goto :goto_1

    .line 225
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->setContext(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->setInfoBarContainer(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V

    .line 228
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->createView()Landroid/view/View;

    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mLayout:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->addInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V

    goto :goto_0
.end method

.method private addToParentView()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mParentView:Landroid/view/ViewGroup;

    invoke-super {p0, v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->addToParentView(Landroid/view/ViewGroup;)V

    .line 187
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeSetWebContents(JLorg/chromium/content_public/browser/WebContents;)V
.end method

.method public static setIsAllowedToAutoHide(Z)V
    .locals 0

    .prologue
    .line 308
    sput-boolean p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->sIsAllowedToAutoHide:Z

    .line 309
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mDestroyed:Z

    .line 273
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mNativeInfoBarContainer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 274
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mNativeInfoBarContainer:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->nativeDestroy(J)V

    .line 276
    :cond_0
    return-void
.end method

.method public getInfoBarsForTesting()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasBeenDestroyed()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mDestroyed:Z

    return v0
.end method

.method protected isAllowedToAutoHide()Z
    .locals 1

    .prologue
    .line 313
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->sIsAllowedToAutoHide:Z

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mLayout:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public notifyInfoBarViewChanged()V
    .locals 1

    .prologue
    .line 238
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mLayout:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->notifyInfoBarViewChanged()V

    .line 240
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-super {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->onAttachedToWindow()V

    .line 319
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mIsObscured:Z

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setVisibility(I)V

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setAlpha(F)V

    .line 322
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;

    .line 326
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;->onInfoBarContainerAttachedToWindow(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 328
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 334
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lorg/chromium/ui/UiUtils;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setVisibility(I)V

    .line 346
    :cond_0
    :goto_1
    invoke-super/range {p0 .. p5}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->onLayout(ZIIII)V

    .line 347
    return-void

    :cond_1
    move v0, v1

    .line 333
    goto :goto_0

    .line 341
    :cond_2
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mIsObscured:Z

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method public onParentViewChanged(ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mTabId:I

    .line 195
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mParentView:Landroid/view/ViewGroup;

    .line 197
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->removeFromParentView()Z

    .line 198
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->addToParentView()V

    .line 199
    return-void
.end method

.method removeInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBar;)V
    .locals 3

    .prologue
    .line 248
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Trying to remove an InfoBar that is not in this container."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 256
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;

    .line 257
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-interface {v0, p0, p1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;->onRemoveInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mLayout:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->removeInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V

    .line 261
    :cond_3
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarContainerObserver;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public setAnimationListener(Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mLayout:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->setAnimationListener(Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;)V

    .line 175
    return-void
.end method

.method public setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 3

    .prologue
    .line 166
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 167
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mNativeInfoBarContainer:J

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->nativeSetWebContents(JLorg/chromium/content_public/browser/WebContents;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setIsObscuredByOtherView(Z)V
    .locals 1

    .prologue
    .line 294
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->mIsObscured:Z

    .line 295
    if-eqz p1, :cond_0

    .line 296
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setVisibility(I)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setVisibility(I)V

    goto :goto_0
.end method
