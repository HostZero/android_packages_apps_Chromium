.class Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;
.super Ljava/lang/Object;
.source "AppMenuDragHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

.field private final mAutoScrollFullVelocity:F

.field private mDragScrollOffset:F

.field private mDragScrollOffsetRounded:I

.field private final mDragScrolling:Landroid/animation/TimeAnimator;

.field private volatile mDragScrollingVelocity:F

.field private mIsSingleTapCanceled:Z

.field private final mItemRowHeight:I

.field private volatile mLastTouchX:F

.field private volatile mLastTouchY:F

.field private mMenuButtonScreenCenterY:I

.field private final mScaledTouchSlop:I

.field private final mScreenVisiblePoint:[I

.field private final mScreenVisibleRect:Landroid/graphics/Rect;

.field private final mTapTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/appmenu/AppMenu;I)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrolling:Landroid/animation/TimeAnimator;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScreenVisibleRect:Landroid/graphics/Rect;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScreenVisiblePoint:[I

    .line 64
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mActivity:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    .line 66
    iput p3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mItemRowHeight:I

    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    sget v1, Lorg/chromium/chrome/R$dimen;->auto_scroll_full_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAutoScrollFullVelocity:F

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrolling:Landroid/animation/TimeAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 96
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mTapTimeout:I

    .line 98
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScaledTouchSlop:I

    .line 99
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)Lorg/chromium/chrome/browser/appmenu/AppMenu;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffset:F

    return v0
.end method

.method static synthetic access$116(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;F)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffset:F

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollingVelocity:F

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffsetRounded:I

    return v0
.end method

.method static synthetic access$312(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;I)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffsetRounded:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffsetRounded:I

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchX:F

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchY:F

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;III)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->menuItemAction(III)Z

    move-result v0

    return v0
.end method

.method private getScreenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScreenVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScreenVisiblePoint:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 300
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScreenVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScreenVisiblePoint:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScreenVisiblePoint:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 301
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScreenVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private menuItemAction(III)Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 244
    invoke-virtual {v6, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->getScreenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mMenuButtonScreenCenterY:I

    if-gt v0, v1, :cond_0

    .line 291
    :goto_0
    return v2

    .line 252
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 253
    :goto_1
    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 255
    invoke-virtual {v6, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {v6, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v3, v2

    move v4, v2

    .line 257
    :goto_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 258
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/ImageButton;

    if-eqz v8, :cond_1

    move v4, v5

    .line 257
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 262
    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move v1, v2

    move v3, v2

    .line 266
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 267
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->getScreenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    .line 272
    :goto_4
    packed-switch p3, :pswitch_data_0

    .line 287
    sget-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    move v4, v2

    .line 269
    goto :goto_4

    .line 274
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 266
    :cond_7
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 277
    :pswitch_1
    if-eqz v4, :cond_7

    .line 278
    const-string/jumbo v3, "MobileUsingMenuBySwButtonDragging"

    invoke-static {v3}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move v3, v5

    .line 280
    goto :goto_5

    .line 284
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_5

    :cond_8
    move v2, v3

    .line 291
    goto/16 :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static native nativeRecordAppMenuTouchDuration(J)V
.end method

.method private pointInView(Landroid/view/View;FFF)Z
    .locals 1

    .prologue
    .line 223
    neg-float v0, p4

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    neg-float v0, p4

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method finishDragging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x2

    invoke-direct {p0, v1, v1, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->menuItemAction(III)Z

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrolling:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 131
    return-void
.end method

.method handleDragging(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 12

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrolling:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 152
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 153
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 156
    iget-object v5, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 158
    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchX:F

    .line 159
    iput v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchY:F

    .line 160
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->getScreenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mMenuButtonScreenCenterY:I

    .line 162
    const/4 v0, 0x3

    if-ne v4, v0, :cond_2

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->dismiss()V

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    const/4 v0, 0x1

    if-ne v4, v0, :cond_3

    .line 166
    invoke-static {v6, v7}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->nativeRecordAppMenuTouchDuration(J)V

    .line 169
    :cond_3
    iget-boolean v8, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mIsSingleTapCanceled:Z

    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mTapTimeout:I

    int-to-long v10, v0

    cmp-long v0, v6, v10

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v0, v8

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mIsSingleTapCanceled:Z

    .line 170
    iget-boolean v6, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mIsSingleTapCanceled:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mScaledTouchSlop:I

    int-to-float v8, v8

    invoke-direct {p0, p2, v0, v7, v8}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v0, v6

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mIsSingleTapCanceled:Z

    .line 171
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mIsSingleTapCanceled:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-ne v4, v0, :cond_4

    .line 172
    const-string/jumbo v0, "MobileUsingMenuBySwButtonTap"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->finishDragging()V

    .line 177
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrolling:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 169
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 170
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 180
    :cond_7
    const/4 v0, 0x2

    .line 181
    packed-switch v4, :pswitch_data_0

    .line 192
    :goto_3
    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->menuItemAction(III)Z

    move-result v0

    .line 194
    const/4 v2, 0x1

    if-ne v4, v2, :cond_9

    if-nez v0, :cond_9

    .line 195
    const-string/jumbo v0, "MobileUsingMenuBySwButtonDragging"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->dismiss()V

    .line 219
    :cond_8
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    :pswitch_0
    const/4 v0, 0x0

    .line 185
    goto :goto_3

    .line 187
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_3

    .line 197
    :cond_9
    const/4 v0, 0x2

    if-ne v4, v0, :cond_8

    .line 199
    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_8

    .line 200
    const/high16 v0, 0x3e800000    # 0.25f

    iget v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mItemRowHeight:I

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 202
    invoke-direct {p0, v5}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->getScreenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 204
    cmpg-float v2, v1, v0

    if-gez v2, :cond_a

    .line 206
    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAutoScrollFullVelocity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollingVelocity:F

    goto :goto_4

    .line 208
    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_b

    .line 210
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAutoScrollFullVelocity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollingVelocity:F

    goto :goto_4

    .line 214
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollingVelocity:F

    goto :goto_4

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onShow(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x7fc00000    # NaNf

    const/4 v0, 0x0

    .line 109
    iput v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchX:F

    .line 110
    iput v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchY:F

    .line 111
    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffset:F

    .line 112
    iput v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffsetRounded:I

    .line 113
    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollingVelocity:F

    .line 114
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mIsSingleTapCanceled:Z

    .line 116
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrolling:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 117
    :cond_0
    return-void
.end method
