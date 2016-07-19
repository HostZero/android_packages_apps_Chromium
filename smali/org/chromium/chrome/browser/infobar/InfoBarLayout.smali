.class public final Lorg/chromium/chrome/browser/infobar/InfoBarLayout;
.super Landroid/view/ViewGroup;
.source "InfoBarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccentColor:I

.field private final mBigIconMargin:I

.field private final mBigIconSize:I

.field private mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

.field private final mCloseButton:Landroid/widget/ImageButton;

.field private final mControlLayouts:Ljava/util/List;

.field private mIconView:Landroid/widget/ImageView;

.field private final mInfoBarView:Lorg/chromium/chrome/browser/infobar/InfoBarView;

.field private final mMarginAboveButtonGroup:I

.field private final mMarginAboveControlGroups:I

.field private final mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

.field private mMessageLinkText:Ljava/lang/String;

.field private mMessageMainText:Ljava/lang/CharSequence;

.field private mMessageTextView:Landroid/widget/TextView;

.field private final mMinWidth:I

.field private final mPadding:I

.field private final mSmallIconMargin:I

.field private final mSmallIconSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarView;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mControlLayouts:Ljava/util/List;

    .line 110
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mInfoBarView:Lorg/chromium/chrome/browser/infobar/InfoBarView;

    .line 113
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_small_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mSmallIconSize:I

    .line 115
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_small_icon_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mSmallIconMargin:I

    .line 116
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_big_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mBigIconSize:I

    .line 117
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_big_icon_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mBigIconMargin:I

    .line 118
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_margin_above_button_row:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMarginAboveButtonGroup:I

    .line 120
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_margin_above_control_groups:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMarginAboveControlGroups:I

    .line 122
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    .line 123
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMinWidth:I

    .line 124
    sget v1, Lorg/chromium/chrome/R$color;->infobar_accent_blue:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mAccentColor:I

    .line 127
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    .line 128
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    sget v2, Lorg/chromium/chrome/R$id;->infobar_close_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 129
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_close:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 130
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lorg/chromium/chrome/R$attr;->selectableItemBackground:I

    aput v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 133
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    iget v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    iget v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    iget v5, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 136
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    sget v2, Lorg/chromium/chrome/R$string;->infobar_close:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    neg-int v2, v2

    iget v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    neg-int v3, v3

    iget v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    neg-int v4, v4

    invoke-direct {v1, v6, v2, v3, v4}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    .line 142
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    .line 143
    if-eqz p3, :cond_3

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mSmallIconMargin:I

    invoke-direct {v1, v6, v6, v2, v6}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mSmallIconSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mSmallIconSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 155
    :cond_2
    iput-object p5, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageMainText:Ljava/lang/CharSequence;

    .line 156
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->prepareMainMessageString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addMainMessage(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageTextView:Landroid/widget/TextView;

    .line 158
    return-void

    .line 145
    :cond_3
    if-eqz p4, :cond_1

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)Lorg/chromium/chrome/browser/infobar/InfoBarView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mInfoBarView:Lorg/chromium/chrome/browser/infobar/InfoBarView;

    return-object v0
.end method

.method private static getChildHeightWithMargins(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 439
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    invoke-static {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    return-object v0
.end method

.method private static getChildWidthWithMargins(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 433
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 434
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->startMargin:I

    add-int/2addr v0, v1

    invoke-static {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->endMargin:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private measureChildWithFixedWidth(Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v0

    .line 453
    iget v1, v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->startMargin:I

    sub-int v1, p2, v1

    iget v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->endMargin:I

    sub-int v0, v1, v0

    .line 454
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 455
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 456
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 457
    return-void
.end method

.method private prepareMainMessageString()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 482
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 484
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageMainText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageMainText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 487
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLinkText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 488
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 489
    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 491
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLinkText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 492
    new-instance v2, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$1;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 500
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final addControlLayout()Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;-><init>(Landroid/content/Context;)V

    .line 201
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mControlLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-object v0
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->generateDefaultLayoutParams()Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected final generateDefaultLayoutParams()Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public final getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method final getMessageLayout()Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    return-object v0
.end method

.method final getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPrimaryButton()Lorg/chromium/ui/widget/ButtonCompat;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    sget v1, Lorg/chromium/chrome/R$id;->button_primary:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ButtonCompat;

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mInfoBarView:Lorg/chromium/chrome/browser/infobar/InfoBarView;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarView;->setControlsEnabled(Z)V

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->infobar_close_button:I

    if-ne v0, v1, :cond_1

    .line 469
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mInfoBarView:Lorg/chromium/chrome/browser/infobar/InfoBarView;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarView;->onCloseButtonClicked()V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->button_primary:I

    if-ne v0, v1, :cond_2

    .line 471
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mInfoBarView:Lorg/chromium/chrome/browser/infobar/InfoBarView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarView;->onButtonClicked(Z)V

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->button_secondary:I

    if-ne v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mInfoBarView:Lorg/chromium/chrome/browser/infobar/InfoBarView;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarView;->onButtonClicked(Z)V

    goto :goto_0
.end method

.method final onContentCreated()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->addView(Landroid/view/View;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mControlLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->addView(Landroid/view/View;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->addView(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 9

    .prologue
    .line 314
    sub-int v5, p4, p2

    .line 315
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    .line 317
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 318
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 319
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    .line 320
    iget v3, v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->start:I

    .line 321
    iget v1, v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->start:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 323
    if-eqz v6, :cond_1

    .line 324
    sub-int v2, v5, v1

    .line 325
    sub-int v1, v5, v3

    .line 329
    :goto_1
    iget v3, v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->top:I

    iget v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->top:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v0, v8

    invoke-virtual {v7, v2, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 317
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 331
    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected final onMeasure(II)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 359
    sget-boolean v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "InfoBar heights cannot be constrained."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 362
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMinWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 363
    iget v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    .line 364
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    sub-int v1, v3, v1

    .line 365
    iget v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    .line 368
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 369
    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 370
    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-static {v6}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v6

    .line 371
    iget-object v7, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v5, v5}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->measureChild(Landroid/view/View;II)V

    .line 372
    iget v7, v6, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->startMargin:I

    add-int/2addr v7, v4

    iput v7, v6, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->start:I

    .line 373
    iget v7, v6, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v2

    iput v7, v6, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->top:I

    .line 375
    :cond_1
    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-static {v6}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildWidthWithMargins(Landroid/view/View;)I

    move-result v6

    .line 378
    iget-object v7, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-static {v7}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v7

    .line 379
    iget-object v8, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v8, v5, v5}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->measureChild(Landroid/view/View;II)V

    .line 380
    iget v5, v7, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->endMargin:I

    sub-int v5, v1, v5

    iget-object v8, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v5, v8

    iput v5, v7, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->start:I

    .line 381
    iget v5, v7, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    iput v5, v7, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->top:I

    .line 385
    sub-int v5, v1, v4

    .line 386
    sub-int v7, v5, v6

    .line 387
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildWidthWithMargins(Landroid/view/View;)I

    move-result v1

    sub-int v1, v7, v1

    .line 390
    iget-object v8, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    invoke-static {v8}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v8

    .line 391
    iget-object v9, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    invoke-direct {p0, v9, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->measureChildWithFixedWidth(Landroid/view/View;I)V

    .line 392
    add-int v1, v4, v6

    iput v1, v8, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->start:I

    .line 393
    iput v2, v8, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->top:I

    .line 398
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildHeightWithMargins(Landroid/view/View;)I

    move-result v1

    iget-object v8, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-static {v8}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildHeightWithMargins(Landroid/view/View;)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 402
    add-int/2addr v6, v4

    move v2, v1

    move v1, v0

    .line 403
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mControlLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 404
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mControlLayouts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 405
    invoke-direct {p0, v0, v7}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->measureChildWithFixedWidth(Landroid/view/View;I)V

    .line 407
    iget v8, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMarginAboveControlGroups:I

    add-int/2addr v2, v8

    .line 408
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v8

    iput v6, v8, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->start:I

    .line 409
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v8

    iput v2, v8, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->top:I

    .line 410
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v2, v0

    .line 403
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildHeightWithMargins(Landroid/view/View;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 416
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    if-eqz v1, :cond_3

    .line 417
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-direct {p0, v1, v5}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->measureChildWithFixedWidth(Landroid/view/View;I)V

    .line 419
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMarginAboveButtonGroup:I

    add-int/2addr v0, v1

    .line 420
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v1

    iput v4, v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->start:I

    .line 421
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getChildLayoutParams(Landroid/view/View;)Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    move-result-object v1

    iput v0, v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->top:I

    .line 422
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_3
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mPadding:I

    add-int/2addr v0, v1

    .line 428
    invoke-static {v3, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMeasuredDimension(II)V

    .line 430
    return-void
.end method

.method public final setBottomViews(Ljava/lang/String;Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 241
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :cond_0
    new-instance v0, Lorg/chromium/ui/widget/ButtonCompat;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mAccentColor:I

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/widget/ButtonCompat;-><init>(Landroid/content/Context;I)V

    .line 243
    sget v1, Lorg/chromium/chrome/R$id;->button_primary:I

    invoke-virtual {v0, v1}, Lorg/chromium/ui/widget/ButtonCompat;->setId(I)V

    .line 244
    invoke-virtual {v0, p0}, Lorg/chromium/ui/widget/ButtonCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {v0, p1}, Lorg/chromium/ui/widget/ButtonCompat;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/widget/ButtonCompat;->setTextColor(I)V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/ui/widget/ButtonCompat;->setRaised(Z)V

    .line 249
    sget-boolean v1, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 250
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    .line 251
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-virtual {v1, p3}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->setAlignment(I)V

    .line 252
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$dimen;->infobar_margin_between_stacked_buttons:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->setStackedMargin(I)V

    .line 255
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->addView(Landroid/view/View;)V

    .line 256
    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mButtonRowLayout:Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->addView(Landroid/view/View;)V

    .line 257
    :cond_2
    return-void
.end method

.method public final setButtons(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 218
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/widget/ButtonCompat;->createBorderlessButton(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v0

    .line 220
    sget v1, Lorg/chromium/chrome/R$id;->button_secondary:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 221
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 226
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setBottomViews(Ljava/lang/String;Landroid/view/View;I)V

    .line 227
    :cond_2
    return-void
.end method

.method public final setIsUsingBigIcon()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;

    .line 264
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mBigIconSize:I

    iput v1, v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->width:I

    .line 265
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mBigIconSize:I

    iput v1, v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->height:I

    .line 266
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mBigIconMargin:I

    iput v1, v0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->endMargin:I

    .line 268
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 269
    sget v1, Lorg/chromium/chrome/R$string;->infobar_message_typeface:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    sget v2, Lorg/chromium/chrome/R$integer;->infobar_message_textstyle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 271
    sget v3, Lorg/chromium/chrome/R$dimen;->infobar_big_icon_message_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 272
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageTextView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 273
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 274
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 275
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 182
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageMainText:Ljava/lang/CharSequence;

    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->prepareMainMessageString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public final setMessageLinkText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageLinkText:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->mMessageTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->prepareMainMessageString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method
