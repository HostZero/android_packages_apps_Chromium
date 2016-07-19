.class public Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
.super Landroid/view/View;
.source "PopupTouchHandleDrawable.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAlpha:F

.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

.field private mDelayVisibilityUpdateWAR:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFadeStartTime:J

.field private mFocused:Z

.field private final mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

.field private mHasPendingInvalidate:Z

.field private mInvalidationRunnable:Ljava/lang/Runnable;

.field private mMirrorHorizontal:Z

.field private mMirrorVertical:Z

.field private mOrientation:I

.field private final mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

.field private mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

.field private mParentPositionX:I

.field private mParentPositionY:I

.field private final mParentViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrolling:Z

.field private final mTempScreenCoords:[I

.field private mTemporarilyHidden:Z

.field private mTemporarilyHiddenExpireTime:J

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x2

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    .line 94
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 95
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    .line 97
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 98
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 106
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-static {v0, v3}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 108
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 110
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 111
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    .line 112
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFocused:Z

    .line 114
    new-instance v0, Lorg/chromium/content/browser/ViewPositionObserver;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/ViewPositionObserver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    .line 115
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$1;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    .line 121
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    .line 133
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    .line 163
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 164
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->addContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V

    .line 165
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;II)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateParentPosition(II)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Lorg/chromium/content/browser/PositionObserver;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isShowingAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Lorg/chromium/content/browser/PositionObserver;)Lorg/chromium/content/browser/PositionObserver;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    return p1
.end method

.method static synthetic access$1202(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpireTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->beginFadeIn()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Lorg/chromium/content/browser/PositionObserver$Listener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setIsScrolling(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->temporarilyHide()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setIsFocused(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->destroy()V

    return-void
.end method

.method static synthetic access$802(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    return p1
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V

    return-void
.end method

.method private beginFadeIn()V
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 375
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFadeStartTime:J

    .line 376
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V

    goto :goto_0
.end method

.method private cancelFadeIn()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static create(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    .line 414
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 415
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    goto :goto_0
.end method

.method private doInvalidate()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateVisibility()V

    .line 327
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updatePosition()V

    .line 328
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->invalidate()V

    goto :goto_0
.end method

.method private getContainerPositionX()I
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getContainerPositionY()I
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getHandleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_0

    .line 198
    sget-boolean v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 185
    :pswitch_0
    invoke-static {p0}, Lorg/chromium/content/browser/input/HandleViewResources;->getLeftHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 189
    :pswitch_1
    invoke-static {p0}, Lorg/chromium/content/browser/input/HandleViewResources;->getRightHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-static {p0}, Lorg/chromium/content/browser/input/HandleViewResources;->getCenterHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/input/HandleViewResources;->getCenterHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getHandleHorizontalPaddingRatio()F
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleHorizontalPaddingRatio()F

    move-result v0

    return v0
.end method

.method private getPositionX()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    return v0
.end method

.method private getPositionY()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    return v0
.end method

.method private getVisibleHeight()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 487
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getVisibleWidth()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 481
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    .line 441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpireTime:J

    .line 442
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 443
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->cancelFadeIn()V

    .line 444
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v0}, Lorg/chromium/content/browser/PositionObserver;->clearListener()V

    .line 446
    return-void
.end method

.method private isShowingAllowed()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFocused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVisibilityInputChanged()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isShowingAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->rescheduleFadeIn()V

    goto :goto_0

    .line 303
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->cancelFadeIn()V

    .line 304
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateVisibility()V

    goto :goto_0
.end method

.method private rescheduleFadeIn()V
    .locals 6

    .prologue
    .line 348
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isShowingAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 350
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    .line 361
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->cancelFadeIn()V

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 363
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpireTime:J

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 364
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private scheduleInvalidate()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$4;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$4;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    .line 342
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    if-eqz v0, :cond_1

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    .line 344
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setIsFocused(Z)V
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFocused:Z

    if-ne v0, p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFocused:Z

    .line 295
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->onVisibilityInputChanged()V

    goto :goto_0
.end method

.method private setIsScrolling(Z)V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mScrolling:Z

    if-ne v0, p1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mScrolling:Z

    .line 289
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->onVisibilityInputChanged()V

    goto :goto_0
.end method

.method private setOrientation(IZZ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    sget-boolean v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 229
    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    if-eq v0, p1, :cond_8

    move v0, v1

    .line 230
    :goto_0
    iget-boolean v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorHorizontal:Z

    if-ne v3, p3, :cond_2

    iget-boolean v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorVertical:Z

    if-eq v3, p2, :cond_3

    :cond_2
    move v2, v1

    .line 232
    :cond_3
    iput p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    .line 233
    iput-boolean p3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorHorizontal:Z

    .line 234
    iput-boolean p2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorVertical:Z

    .line 238
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    invoke-static {v1, v3}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getHandleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    :cond_4
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 242
    :cond_5
    if-nez v0, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    .line 243
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 229
    goto :goto_0
.end method

.method private setOrigin(FF)V
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    float-to-int v0, p1

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    .line 452
    float-to-int v0, p2

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    .line 453
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0
.end method

.method private setVisible(Z)V
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    if-ne v0, p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    .line 460
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->onVisibilityInputChanged()V

    goto :goto_0
.end method

.method private static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 5

    .prologue
    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "setWindowLayoutType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private show()V
    .locals 5

    .prologue
    .line 421
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v0}, Lorg/chromium/content/browser/PositionObserver;->getPositionX()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v1}, Lorg/chromium/content/browser/PositionObserver;->getPositionY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateParentPosition(II)V

    .line 428
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/PositionObserver;->addListener(Lorg/chromium/content/browser/PositionObserver$Listener;)V

    .line 429
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 431
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionX()I

    move-result v3

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    goto :goto_0
.end method

.method private temporarilyHide()V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpireTime:J

    .line 320
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateVisibility()V

    .line 321
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->rescheduleFadeIn()V

    goto :goto_0
.end method

.method private updateAlpha()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 309
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 311
    iget-wide v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFadeStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 312
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 313
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0
.end method

.method private updateParentPosition(II)V
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    if-ne v0, p2, :cond_0

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    .line 248
    iput p2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    .line 249
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->temporarilyHide()V

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 6

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionX()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionY()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 263
    return-void
.end method

.method private updateVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isShowingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 274
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelayVisibilityUpdateWAR:Z

    if-nez v2, :cond_1

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelayVisibilityUpdateWAR:Z

    .line 277
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    .line 284
    :goto_1
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 281
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelayVisibilityUpdateWAR:Z

    .line 283
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 406
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 407
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    .line 408
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 390
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorHorizontal:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorVertical:Z

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    move v3, v0

    .line 392
    :goto_1
    if-eqz v3, :cond_3

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 394
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorHorizontal:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 395
    :goto_2
    iget-boolean v5, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorVertical:Z

    if-eqz v5, :cond_6

    .line 396
    :goto_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 398
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateAlpha()V

    .line 399
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getTop()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 401
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 391
    goto :goto_1

    :cond_5
    move v0, v2

    .line 394
    goto :goto_2

    :cond_6
    move v1, v2

    .line 395
    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0, v1, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setMeasuredDimension(II)V

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return v0

    .line 209
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    aget v0, v2, v0

    int-to-float v0, v0

    sub-float v0, v1, v0

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 212
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 213
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 214
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->onTouchHandleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 215
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method
