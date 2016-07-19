.class Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppMenuAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

.field private final mDpToPx:F

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMenuItems:Ljava/util/List;

.field private final mNumMenuItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/appmenu/AppMenu;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    .line 82
    iput-object p2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mMenuItems:Ljava/util/List;

    .line 83
    iput-object p3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mNumMenuItems:I

    .line 85
    invoke-virtual {p3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mDpToPx:F

    .line 86
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;)Lorg/chromium/chrome/browser/appmenu/AppMenu;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    return-object v0
.end method

.method private buildIconItemEnterAnimator([Landroid/widget/ImageView;)Landroid/animation/Animator;
    .locals 13

    .prologue
    .line 358
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    .line 359
    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mDpToPx:F

    mul-float/2addr v1, v2

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    mul-float v2, v1, v0

    .line 360
    array-length v3, p1

    .line 362
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 363
    const/4 v1, 0x0

    .line 364
    const/4 v0, 0x0

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_1
    if-ge v1, v3, :cond_2

    .line 365
    mul-int/lit8 v5, v1, 0x1e

    .line 367
    aget-object v6, p1, v1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 368
    aget-object v7, p1, v1

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v2, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 369
    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 370
    int-to-long v8, v5

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 371
    const-wide/16 v8, 0x15e

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 372
    const-wide/16 v8, 0x15e

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 374
    if-nez v0, :cond_1

    .line 375
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 379
    :goto_2
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 381
    :cond_2
    const-wide/16 v0, 0x50

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 382
    sget-object v0, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 384
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$5;

    invoke-direct {v0, p0, v3, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$5;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;I[Landroid/widget/ImageView;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    return-object v4

    .line 367
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private buildStandardItemEnterAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 330
    const/high16 v0, -0x3ee00000    # -10.0f

    iget v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mDpToPx:F

    mul-float/2addr v0, v1

    .line 331
    mul-int/lit8 v1, p2, 0x1e

    add-int/lit8 v1, v1, 0x50

    .line 333
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 334
    new-array v3, v6, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    aput v0, v5, v7

    const/4 v0, 0x0

    aput v0, v5, v8

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 337
    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 338
    int-to-long v0, v1

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 339
    sget-object v0, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$4;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$4;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    return-object v2

    .line 334
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setupImageButton(Lorg/chromium/chrome/browser/widget/TintedImageButton;Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 278
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    .line 279
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 281
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->blue_mode_tint:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 285
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 286
    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setFocusable(Z)V

    .line 287
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 289
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$2;

    invoke-direct {v0, p0, p2}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$2;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;Landroid/view/MenuItem;)V

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method private setupStandardMenuItemViewHolder(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 300
    invoke-interface {p3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    iget-object v1, p1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;->image:Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v1, p1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;->image:Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->setVisibility(I)V

    .line 303
    iget-object v0, p1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;->image:Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;

    invoke-interface {p3}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->setChecked(Z)V

    .line 304
    iget-object v0, p1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p3}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 307
    invoke-interface {p3}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    .line 309
    iget-object v1, p1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 313
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$3;

    invoke-direct {v0, p0, p3}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$3;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;Landroid/view/MenuItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mNumMenuItems:I

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 122
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    .line 123
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 101
    invoke-interface {v5}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->size()I

    move-result v0

    .line 103
    :goto_0
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sget v6, Lorg/chromium/chrome/R$id;->update_menu_id:I

    if-ne v5, v6, :cond_2

    move v1, v2

    .line 112
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 101
    goto :goto_0

    .line 105
    :cond_2
    if-ne v0, v2, :cond_3

    move v1, v3

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    if-ne v0, v3, :cond_4

    move v1, v4

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    if-eq v0, v4, :cond_0

    .line 112
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 131
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 270
    sget-boolean v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected MenuItem type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 134
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;

    if-nez v0, :cond_2

    .line 136
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;-><init>()V

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lorg/chromium/chrome/R$layout;->menu_item:I

    invoke-virtual {v0, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 138
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;->text:Landroid/widget/TextView;

    .line 139
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;

    iput-object v0, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;->image:Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;

    .line 140
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_enter_anim_id:I

    invoke-direct {p0, p2, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->buildStandardItemEnterAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    .line 147
    :goto_0
    invoke-direct {p0, v0, p2, v2}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->setupStandardMenuItemViewHolder(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;Landroid/view/View;Landroid/view/MenuItem;)V

    .line 272
    :cond_1
    :goto_1
    return-object p2

    .line 144
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;

    goto :goto_0

    .line 152
    :pswitch_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$CustomMenuItemViewHolder;

    if-nez v0, :cond_4

    .line 154
    :cond_3
    new-instance v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$CustomMenuItemViewHolder;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$CustomMenuItemViewHolder;-><init>()V

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lorg/chromium/chrome/R$layout;->update_menu_item:I

    invoke-virtual {v0, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 156
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$CustomMenuItemViewHolder;->text:Landroid/widget/TextView;

    .line 157
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;

    iput-object v0, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$CustomMenuItemViewHolder;->image:Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;

    .line 158
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$CustomMenuItemViewHolder;->summary:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_enter_anim_id:I

    invoke-direct {p0, p2, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->buildStandardItemEnterAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    .line 166
    :goto_2
    invoke-direct {p0, v0, p2, v2}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->setupStandardMenuItemViewHolder(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$StandardMenuItemViewHolder;Landroid/view/View;Landroid/view/MenuItem;)V

    .line 167
    invoke-static {}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getInstance()Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getMenuItemSummaryText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    iget-object v0, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$CustomMenuItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$CustomMenuItemViewHolder;

    goto :goto_2

    .line 172
    :cond_5
    iget-object v0, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$CustomMenuItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 179
    :pswitch_2
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;

    if-nez v0, :cond_7

    .line 181
    :cond_6
    new-instance v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;-><init>()V

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lorg/chromium/chrome/R$layout;->three_button_menu_item:I

    invoke-virtual {v0, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 183
    iget-object v4, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v0, Lorg/chromium/chrome/R$id;->button_one:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aput-object v0, v4, v3

    .line 185
    iget-object v4, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v0, Lorg/chromium/chrome/R$id;->button_two:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aput-object v0, v4, v6

    .line 187
    iget-object v4, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v0, Lorg/chromium/chrome/R$id;->button_three:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aput-object v0, v4, v5

    .line 189
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_enter_anim_id:I

    iget-object v4, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->buildIconItemEnterAnimator([Landroid/widget/ImageView;)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    :goto_3
    move v1, v3

    .line 195
    :goto_4
    if-ge v1, v7, :cond_8

    .line 196
    iget-object v4, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aget-object v4, v4, v1

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->setupImageButton(Lorg/chromium/chrome/browser/widget/TintedImageButton;Landroid/view/MenuItem;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 193
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;

    goto :goto_3

    .line 199
    :cond_8
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 200
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 205
    :pswitch_3
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;

    if-nez v0, :cond_a

    .line 207
    :cond_9
    new-instance v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;-><init>()V

    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lorg/chromium/chrome/R$layout;->four_button_menu_item:I

    invoke-virtual {v0, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 209
    iget-object v4, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v0, Lorg/chromium/chrome/R$id;->button_one:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aput-object v0, v4, v3

    .line 211
    iget-object v4, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v0, Lorg/chromium/chrome/R$id;->button_two:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aput-object v0, v4, v6

    .line 213
    iget-object v4, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v0, Lorg/chromium/chrome/R$id;->button_three:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aput-object v0, v4, v5

    .line 215
    iget-object v4, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    sget v0, Lorg/chromium/chrome/R$id;->button_four:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aput-object v0, v4, v7

    .line 217
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 218
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_enter_anim_id:I

    iget-object v4, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->buildIconItemEnterAnimator([Landroid/widget/ImageView;)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    :goto_5
    move v1, v3

    .line 223
    :goto_6
    const/4 v4, 0x4

    if-ge v1, v4, :cond_b

    .line 224
    iget-object v4, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aget-object v4, v4, v1

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->setupImageButton(Lorg/chromium/chrome/browser/widget/TintedImageButton;Landroid/view/MenuItem;)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 221
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$FourButtonMenuItemViewHolder;

    goto :goto_5

    .line 227
    :cond_b
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 228
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 233
    :pswitch_4
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;

    if-nez v0, :cond_d

    .line 235
    :cond_c
    new-instance v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;-><init>()V

    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lorg/chromium/chrome/R$layout;->title_button_menu_item:I

    invoke-virtual {v0, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 237
    sget v0, Lorg/chromium/chrome/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;->title:Landroid/widget/TextView;

    .line 238
    sget v0, Lorg/chromium/chrome/R$id;->button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, v1, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;->button:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 242
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 243
    sget v0, Lorg/chromium/chrome/R$id;->menu_item_enter_anim_id:I

    invoke-direct {p0, p2, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->buildStandardItemEnterAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    .line 248
    :goto_7
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 249
    :goto_8
    iget-object v4, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v4, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    iget-object v4, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 252
    iget-object v4, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;->title:Landroid/widget/TextView;

    new-instance v5, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$1;

    invoke-direct {v5, p0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$1;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;Landroid/view/MenuItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 260
    iget-object v1, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;->button:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 261
    iget-object v0, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;->button:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->setupImageButton(Lorg/chromium/chrome/browser/widget/TintedImageButton;Landroid/view/MenuItem;)V

    .line 265
    :goto_9
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 266
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 246
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;

    goto :goto_7

    :cond_e
    move-object v1, v2

    .line 248
    goto :goto_8

    .line 263
    :cond_f
    iget-object v0, v0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$TitleButtonMenuItemViewHolder;->button:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v8}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    goto :goto_9

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x5

    return v0
.end method
