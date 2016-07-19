.class public final Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;
.super Landroid/view/ViewGroup;
.source "InfoBarControlLayout.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mMarginBetweenColumns:I

.field private final mMarginBetweenRows:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_control_margin_between_rows:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->mMarginBetweenRows:I

    .line 156
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_control_margin_between_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->mMarginBetweenColumns:I

    .line 158
    return-void
.end method

.method static getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    return-object v0
.end method


# virtual methods
.method public final addDescription(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 4

    .prologue
    .line 356
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$1;)V

    .line 357
    const/4 v0, 0x1

    # setter for: Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->mMustBeFullWidth:Z
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->access$002(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;Z)Z

    .line 359
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$layout;->infobar_control_description:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 361
    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 365
    return-object v0
.end method

.method public final addIcon(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->infobar_control_icon_with_description:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 282
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    sget v1, Lorg/chromium/chrome/R$id;->control_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 285
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    sget v1, Lorg/chromium/chrome/R$id;->control_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 289
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    sget v1, Lorg/chromium/chrome/R$id;->control_secondary_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 294
    if-nez p3, :cond_0

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 300
    :goto_0
    return-object v0

    .line 297
    :cond_0
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method final addMainMessage(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 390
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$1;)V

    .line 391
    const/4 v0, 0x1

    # setter for: Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->mMustBeFullWidth:Z
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->access$002(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;Z)Z

    .line 393
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$layout;->infobar_control_message:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 395
    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 399
    return-object v0
.end method

.method public final addRatingBar(F)Landroid/view/View;
    .locals 3

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->infobar_control_rating:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 376
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    sget v1, Lorg/chromium/chrome/R$id;->control_rating:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 379
    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 380
    return-object v0
.end method

.method public final addSpinner(ILandroid/widget/ArrayAdapter;)Landroid/widget/Spinner;
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->infobar_control_spinner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 346
    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 347
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setId(I)V

    .line 349
    return-object v0
.end method

.method public final addSwitch(ILjava/lang/CharSequence;IZ)Landroid/view/View;
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->infobar_control_toggle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 320
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    sget v1, Lorg/chromium/chrome/R$id;->control_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 323
    if-nez p1, :cond_0

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 329
    :goto_0
    sget v1, Lorg/chromium/chrome/R$id;->control_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 330
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    sget v1, Lorg/chromium/chrome/R$id;->control_toggle_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    .line 334
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/SwitchCompat;->setId(I)V

    .line 335
    invoke-virtual {v1, p4}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 337
    return-object v0

    .line 326
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 250
    sub-int v2, p4, p2

    .line 251
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 254
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 255
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 256
    invoke-static {v4}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    move-result-object v0

    iget v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->start:I

    .line 257
    if-eqz v3, :cond_0

    sub-int v0, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    .line 259
    :cond_0
    invoke-static {v4}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    move-result-object v5

    iget v5, v5, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->top:I

    .line 260
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v0

    .line 261
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    .line 262
    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 254
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 264
    :cond_1
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 13

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v11, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 163
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Height of this layout cannot be constrained."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 165
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7fffffff

    .line 167
    :goto_0
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->mMarginBetweenColumns:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 169
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 170
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 171
    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 172
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v1, v2

    .line 175
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 176
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 177
    invoke-virtual {p0, v8, v3, v7}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->measureChild(Landroid/view/View;II)V

    .line 179
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-gt v9, v10, :cond_2

    invoke-static {v8}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    move-result-object v9

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->mMustBeFullWidth:Z
    invoke-static {v9}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->access$000(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 181
    invoke-static {v8}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    move-result-object v8

    iput v11, v8, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    .line 175
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 183
    :cond_2
    invoke-static {v8}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    move-result-object v8

    iput v6, v8, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    goto :goto_2

    :cond_3
    move v1, v2

    .line 190
    :goto_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 191
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    move-result-object v3

    .line 193
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_4

    .line 194
    iput v6, v3, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    .line 190
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 196
    :cond_4
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    move-result-object v8

    .line 197
    iget v9, v3, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    iget v8, v8, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    add-int/2addr v8, v9

    if-le v8, v6, :cond_5

    .line 199
    iput v6, v3, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    goto :goto_4

    .line 202
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move v1, v2

    .line 209
    :goto_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 210
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 211
    invoke-static {v8}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    move-result-object v3

    .line 212
    iget v3, v3, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    if-ne v3, v11, :cond_7

    move v3, v4

    .line 213
    :goto_6
    invoke-virtual {p0, v8, v3, v7}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->measureChild(Landroid/view/View;II)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    move v3, v5

    .line 212
    goto :goto_6

    :cond_8
    move v1, v2

    move v3, v2

    move v4, v2

    move v8, v2

    move v5, v6

    move v7, v2

    .line 222
    :goto_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 223
    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 224
    invoke-static {v9}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->getControlLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;

    move-result-object v11

    .line 227
    iget v12, v11, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    if-ge v5, v12, :cond_9

    .line 228
    iget v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->mMarginBetweenRows:I

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    move v3, v2

    move v4, v1

    move v5, v6

    move v7, v1

    move v1, v2

    .line 235
    :cond_9
    iput v7, v11, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->top:I

    .line 236
    iput v3, v11, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->start:I

    .line 237
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 238
    iget v9, v11, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    sub-int v9, v5, v9

    .line 239
    iget v5, v11, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->columnsRequired:I

    iget v11, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->mMarginBetweenColumns:I

    add-int/2addr v11, v10

    mul-int/2addr v5, v11

    add-int/2addr v3, v5

    .line 222
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v9

    goto :goto_7

    .line 243
    :cond_a
    add-int/2addr v1, v4

    .line 244
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->setMeasuredDimension(II)V

    .line 246
    return-void
.end method
