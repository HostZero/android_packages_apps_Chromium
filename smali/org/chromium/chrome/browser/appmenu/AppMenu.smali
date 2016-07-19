.class public Lorg/chromium/chrome/browser/appmenu/AppMenu;
.super Ljava/lang/Object;
.source "AppMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAdapter:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

.field private mAnimationHistogramRecorder:Landroid/animation/Animator$AnimatorListener;

.field private mCurrentScreenRotation:I

.field private mHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

.field private mIsByPermanentButton:Z

.field private final mItemDividerHeight:I

.field private final mItemRowHeight:I

.field private final mMenu:Landroid/view/Menu;

.field private mMenuItemEnterAnimator:Landroid/animation/AnimatorSet;

.field private final mNegativeSoftwareVerticalOffset:I

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mVerticalFadeDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/Menu;IILorg/chromium/chrome/browser/appmenu/AppMenuHandler;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mCurrentScreenRotation:I

    .line 62
    const-string/jumbo v0, "WrenchMenu.OpeningAnimationFrameTimes"

    invoke-static {v0}, Lorg/chromium/base/AnimationFrameTimeHistogram;->getAnimatorRecorder(Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mAnimationHistogramRecorder:Landroid/animation/Animator$AnimatorListener;

    .line 75
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenu:Landroid/view/Menu;

    .line 77
    iput p2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemRowHeight:I

    .line 78
    sget-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemRowHeight:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :cond_0
    iput-object p4, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    .line 82
    iput p3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemDividerHeight:I

    .line 83
    sget-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemDividerHeight:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_1
    sget v0, Lorg/chromium/chrome/R$dimen;->menu_negative_software_vertical_offset:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mNegativeSoftwareVerticalOffset:I

    .line 87
    sget v0, Lorg/chromium/chrome/R$dimen;->menu_vertical_fade_distance:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mVerticalFadeDistance:I

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenuItemEnterAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/appmenu/AppMenu;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->runMenuItemEnterAnimations()V

    return-void
.end method

.method private runMenuItemEnterAnimations()V
    .locals 5

    .prologue
    .line 401
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenuItemEnterAnimator:Landroid/animation/AnimatorSet;

    .line 402
    const/4 v1, 0x0

    .line 404
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 405
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 406
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    sget v4, Lorg/chromium/chrome/R$id;->menu_item_enter_anim_id:I

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_1

    .line 409
    if-nez v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenuItemEnterAnimator:Landroid/animation/AnimatorSet;

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 405
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 412
    :cond_0
    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 417
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenuItemEnterAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mAnimationHistogramRecorder:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenuItemEnterAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 419
    return-void
.end method

.method private setMenuHeight(ILandroid/graphics/Rect;ILandroid/graphics/Rect;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 364
    sget-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 366
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 367
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 368
    aget v2, v1, v4

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    aput v2, v1, v4

    .line 369
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mIsByPermanentButton:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 372
    :goto_0
    aget v2, v1, v4

    if-le v2, p3, :cond_1

    .line 373
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    aput v2, v1, v4

    .line 375
    :cond_1
    aget v2, v1, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    aget v1, v1, v4

    sub-int v1, v3, v1

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 378
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p5

    sub-int/2addr v0, v1

    .line 379
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mIsByPermanentButton:Z

    if-eqz v1, :cond_2

    iget v1, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 381
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemRowHeight:I

    iget v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemDividerHeight:I

    add-int/2addr v1, v2

    div-int v1, v0, v1

    .line 384
    if-ge v1, p1, :cond_5

    .line 385
    iget v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemRowHeight:I

    iget v3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemDividerHeight:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    .line 386
    const/high16 v2, 0x3f000000    # 0.5f

    iget v3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemRowHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 388
    add-int v3, v1, v2

    if-ge v3, v0, :cond_4

    .line 389
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    add-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 398
    :goto_1
    return-void

    .line 369
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    iget v3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mItemRowHeight:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    goto :goto_1

    .line 396
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    goto :goto_1
.end method

.method private setPopupOffset(Landroid/widget/ListPopupWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 257
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 258
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 259
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 263
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mIsByPermanentButton:Z

    if-eqz v2, :cond_1

    .line 264
    const/4 v1, 0x0

    aget v0, v0, v1

    neg-int v0, v0

    .line 265
    packed-switch p2, :pswitch_data_0

    .line 276
    sget-boolean v1, Lorg/chromium/chrome/browser/appmenu/AppMenu;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 279
    :cond_0
    :goto_0
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 282
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 288
    :goto_1
    return-void

    .line 271
    :pswitch_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 272
    goto :goto_0

    .line 286
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mNegativeSoftwareVerticalOffset:I

    neg-int v0, v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    goto :goto_1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 336
    :cond_0
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public menuItemContentChanged(I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mAdapter:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v2

    .line 106
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 107
    iget-object v3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v3, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 112
    :goto_2
    if-eq v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 117
    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 118
    if-lt v0, v2, :cond_0

    if-gt v0, v3, :cond_0

    .line 121
    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v0, v2, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method onItemClick(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->update_menu_id:I

    if-ne v0, v1, :cond_0

    .line 297
    invoke-static {}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getInstance()Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->setMenuItemClicked()V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->dismiss()V

    .line 300
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    .line 302
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mAdapter:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->onItemClick(Landroid/view/MenuItem;)V

    .line 307
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 311
    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 326
    :goto_0
    return v0

    .line 313
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_3

    .line 314
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 315
    invoke-virtual {p3}, Landroid/view/KeyEvent;->startTracking()V

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 320
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 321
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->dismiss()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 326
    goto :goto_0
.end method

.method show(Landroid/content/Context;Landroid/view/View;ZILandroid/graphics/Rect;II)V
    .locals 8

    .prologue
    .line 143
    new-instance v0, Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    const v2, 0x1010300

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 148
    const/4 v5, 0x0

    .line 149
    if-eqz p7, :cond_0

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 153
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 154
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lorg/chromium/chrome/browser/appmenu/AppMenu$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/appmenu/AppMenu$1;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    if-eqz p3, :cond_4

    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$drawable;->menu_bg:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :goto_0
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 193
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$dimen;->menu_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    .line 199
    iget-object v3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 201
    iput p4, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mCurrentScreenRotation:I

    .line 202
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mIsByPermanentButton:Z

    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v3

    .line 206
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 207
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    .line 208
    iget-object v4, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v4, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 209
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 210
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$drawable;->edge_menu_bg:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    sget v2, Lorg/chromium/chrome/R$style;->OverflowMenuAnim:I

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 214
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 215
    if-eqz p3, :cond_6

    if-eqz v1, :cond_6

    .line 216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 217
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 218
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 219
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 224
    :cond_6
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, v6, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenu;Ljava/util/List;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mAdapter:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    .line 225
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mAdapter:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    move-object v0, p0

    move-object v2, p5

    move v3, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->setMenuHeight(ILandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    iget v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mCurrentScreenRotation:I

    invoke-direct {p0, v0, v1, p5, v4}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->setPopupOffset(Landroid/widget/ListPopupWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 232
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->onMenuVisibilityChanged(Z)V

    .line 237
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mVerticalFadeDistance:I

    if-lez v0, :cond_7

    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mVerticalFadeDistance:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 243
    :cond_7
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/appmenu/AppMenu$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/appmenu/AppMenu$2;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 253
    :cond_8
    return-void
.end method
