.class public Landroid/support/v7/app/ac;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/support/v7/app/ad;

.field private mCheatSheetEnabled:Z

.field private mDialogFactory:Landroid/support/v7/app/ay;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private final mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSelector:Landroid/support/v7/media/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/ac;->CHECKED_STATE_SET:[I

    .line 110
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/ac;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 119
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-static {p1}, Landroid/support/v7/app/c;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    sget-object v0, Landroid/support/v7/media/e;->a:Landroid/support/v7/media/e;

    iput-object v0, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    .line 92
    invoke-static {}, Landroid/support/v7/app/ay;->getDefault()Landroid/support/v7/app/ay;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ac;->mDialogFactory:Landroid/support/v7/app/ay;

    .line 124
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/ac;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 127
    new-instance v1, Landroid/support/v7/app/ad;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/app/ad;-><init>(Landroid/support/v7/app/ac;B)V

    iput-object v1, p0, Landroid/support/v7/app/ac;->mCallback:Landroid/support/v7/app/ad;

    .line 129
    sget-object v1, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton:[I

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    sget v1, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/ac;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    sget v1, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/ac;->mMinWidth:I

    .line 135
    sget v1, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/ac;->mMinHeight:I

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-virtual {p0, v3}, Landroid/support/v7/app/ac;->setClickable(Z)V

    .line 140
    invoke-virtual {p0, v3}, Landroid/support/v7/app/ac;->setLongClickable(Z)V

    .line 141
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/app/ac;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v7/app/ac;->refreshRoute()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 265
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 266
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Landroid/app/Activity;

    .line 271
    :goto_1
    return-object v0

    .line 269
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/support/v7/app/ac;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 256
    instance-of v1, v0, Landroid/support/v4/app/w;

    if-eqz v1, :cond_0

    .line 257
    check-cast v0, Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshRoute()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 492
    iget-boolean v0, p0, Landroid/support/v7/app/ac;->mAttachedToWindow:Z

    if-eqz v0, :cond_3

    .line 493
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->c()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->l()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/e;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 495
    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 498
    :goto_1
    iget-boolean v4, p0, Landroid/support/v7/app/ac;->mRemoteActive:Z

    if-eq v4, v3, :cond_0

    .line 499
    iput-boolean v3, p0, Landroid/support/v7/app/ac;->mRemoteActive:Z

    move v2, v1

    .line 502
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/app/ac;->mIsConnecting:Z

    if-eq v3, v0, :cond_1

    .line 503
    iput-boolean v0, p0, Landroid/support/v7/app/ac;->mIsConnecting:Z

    move v2, v1

    .line 507
    :cond_1
    if-eqz v2, :cond_2

    .line 508
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->refreshDrawableState()V

    .line 509
    iget-boolean v0, p0, Landroid/support/v7/app/ac;->mIsConnecting:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 512
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 513
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 518
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ac;->setEnabled(Z)V

    .line 521
    :cond_3
    return-void

    :cond_4
    move v3, v2

    .line 494
    goto :goto_0

    :cond_5
    move v0, v2

    .line 495
    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 353
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getDrawableState()[I

    move-result-object v0

    .line 355
    iget-object v1, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 356
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->invalidate()V

    .line 358
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 408
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ac;->mAttachedToWindow:Z

    .line 411
    iget-object v0, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    invoke-virtual {v0}, Landroid/support/v7/media/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    iget-object v2, p0, Landroid/support/v7/app/ac;->mCallback:Landroid/support/v7/app/ad;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;)V

    .line 414
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/ac;->refreshRoute()V

    .line 415
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 335
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 341
    iget-boolean v1, p0, Landroid/support/v7/app/ac;->mIsConnecting:Z

    if-eqz v1, :cond_1

    .line 342
    sget-object v1, Landroid/support/v7/app/ac;->CHECKABLE_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/ac;->mergeDrawableStates([I[I)[I

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 343
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/app/ac;->mRemoteActive:Z

    if-eqz v1, :cond_0

    .line 344
    sget-object v1, Landroid/support/v7/app/ac;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/ac;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/ac;->mAttachedToWindow:Z

    .line 420
    iget-object v0, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    invoke-virtual {v0}, Landroid/support/v7/media/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/ac;->mCallback:Landroid/support/v7/app/ad;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/g;)V

    .line 424
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 425
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 474
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getPaddingLeft()I

    move-result v0

    .line 476
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 477
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getPaddingTop()I

    move-result v2

    .line 478
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 480
    iget-object v4, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 481
    iget-object v5, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 482
    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 483
    sub-int v1, v3, v2

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 485
    iget-object v2, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int v3, v0, v4

    add-int v4, v1, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 429
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 430
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 431
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 432
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 434
    iget v4, p0, Landroid/support/v7/app/ac;->mMinWidth:I

    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getPaddingLeft()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getPaddingRight()I

    move-result v7

    add-int/2addr v0, v7

    :goto_0
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 436
    iget v0, p0, Landroid/support/v7/app/ac;->mMinHeight:I

    iget-object v7, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getPaddingTop()I

    move-result v7

    add-int/2addr v1, v7

    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getPaddingBottom()I

    move-result v7

    add-int/2addr v1, v7

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 440
    sparse-switch v5, :sswitch_data_0

    move v1, v4

    .line 454
    :goto_1
    sparse-switch v6, :sswitch_data_1

    .line 467
    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/ac;->setMeasuredDimension(II)V

    .line 468
    return-void

    :cond_1
    move v0, v1

    .line 434
    goto :goto_0

    :sswitch_0
    move v1, v3

    .line 443
    goto :goto_1

    .line 445
    :sswitch_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :sswitch_2
    move v0, v2

    .line 457
    goto :goto_2

    .line 459
    :sswitch_3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 440
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 454
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v1

    .line 286
    if-nez v1, :cond_0

    .line 287
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ac;->playSoundEffect(I)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->showDialog()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public performLongClick()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    :goto_0
    return v0

    .line 298
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/app/ac;->mCheatSheetEnabled:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 299
    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 303
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 305
    goto :goto_0

    .line 308
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 309
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 310
    invoke-virtual {p0, v3}, Landroid/support/v7/app/ac;->getLocationOnScreen([I)V

    .line 311
    invoke-virtual {p0, v4}, Landroid/support/v7/app/ac;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 313
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 314
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getWidth()I

    move-result v6

    .line 315
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getHeight()I

    move-result v7

    .line 316
    aget v8, v3, v0

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    .line 317
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 319
    invoke-static {v5, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 320
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v8, v4, :cond_3

    .line 322
    const v4, 0x800035

    aget v3, v3, v1

    sub-int v3, v9, v3

    div-int/lit8 v5, v6, 0x2

    sub-int/2addr v3, v5

    invoke-virtual {v2, v4, v3, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 328
    :goto_1
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 329
    invoke-virtual {p0, v1}, Landroid/support/v7/app/ac;->performHapticFeedback(I)Z

    goto :goto_0

    .line 326
    :cond_3
    const/16 v3, 0x51

    invoke-virtual {v2, v3, v1, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method public setDialogFactory(Landroid/support/v7/app/ay;)V
    .locals 2

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/ac;->mDialogFactory:Landroid/support/v7/app/ay;

    .line 202
    return-void
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 366
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ac;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 369
    if-eqz p1, :cond_1

    .line 370
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 371
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 372
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 375
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/ac;->refreshDrawableState()V

    .line 376
    return-void

    :cond_2
    move v0, v1

    .line 372
    goto :goto_0
.end method

.method public setRouteSelector(Landroid/support/v7/media/e;)V
    .locals 2

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    iget-boolean v0, p0, Landroid/support/v7/app/ac;->mAttachedToWindow:Z

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    invoke-virtual {v0}, Landroid/support/v7/media/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/ac;->mCallback:Landroid/support/v7/app/ad;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/g;)V

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/media/e;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/ac;->mCallback:Landroid/support/v7/app/ad;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;)V

    .line 174
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    .line 175
    invoke-direct {p0}, Landroid/support/v7/app/ac;->refreshRoute()V

    .line 177
    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 402
    iget-object v2, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/app/ac;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 404
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 402
    goto :goto_0
.end method

.method public showDialog()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-boolean v1, p0, Landroid/support/v7/app/ac;->mAttachedToWindow:Z

    if-nez v1, :cond_0

    .line 251
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/ac;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 228
    if-nez v1, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->c()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->l()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/e;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 234
    :cond_2
    const-string/jumbo v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 235
    const-string/jumbo v1, "MediaRouteButton"

    const-string/jumbo v2, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/ac;->mDialogFactory:Landroid/support/v7/app/ay;

    invoke-virtual {v0}, Landroid/support/v7/app/ay;->onCreateChooserDialogFragment()Landroid/support/v7/app/ai;

    move-result-object v0

    .line 240
    iget-object v2, p0, Landroid/support/v7/app/ac;->mSelector:Landroid/support/v7/media/e;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ai;->setRouteSelector(Landroid/support/v7/media/e;)V

    .line 241
    const-string/jumbo v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/ai;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 251
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :cond_4
    const-string/jumbo v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 244
    const-string/jumbo v1, "MediaRouteButton"

    const-string/jumbo v2, "showDialog(): Route controller dialog already showing!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/ac;->mDialogFactory:Landroid/support/v7/app/ay;

    invoke-virtual {v0}, Landroid/support/v7/app/ay;->onCreateControllerDialogFragment()Landroid/support/v7/app/ax;

    move-result-object v0

    .line 249
    const-string/jumbo v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/ax;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ac;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
