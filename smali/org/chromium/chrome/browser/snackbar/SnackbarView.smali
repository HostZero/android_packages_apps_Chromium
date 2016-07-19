.class Lorg/chromium/chrome/browser/snackbar/SnackbarView;
.super Ljava/lang/Object;
.source "SnackbarView.java"


# instance fields
.field private final mActionButtonView:Landroid/widget/TextView;

.field private final mAnimationDuration:I

.field private mCurrentVisibleRect:Landroid/graphics/Rect;

.field private final mIsTablet:Z

.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mMessageView:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

.field private final mParent:Landroid/view/ViewGroup;

.field private mPreviousVisibleRect:Landroid/graphics/Rect;

.field private final mProfileImageView:Landroid/widget/ImageView;

.field private mSnackbar:Lorg/chromium/chrome/browser/snackbar/Snackbar;

.field private mTempDecorPosition:[I

.field private final mView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Lorg/chromium/chrome/browser/snackbar/Snackbar;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mTempDecorPosition:[I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mCurrentVisibleRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mPreviousVisibleRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/SnackbarView$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView$1;-><init>(Lorg/chromium/chrome/browser/snackbar/SnackbarView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mIsTablet:Z

    .line 67
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    .line 68
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->snackbar:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mAnimationDuration:I

    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->snackbar_message:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mMessageView:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->snackbar_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mActionButtonView:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mActionButtonView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->snackbar_profile_image:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mProfileImageView:Landroid/widget/ImageView;

    .line 76
    invoke-direct {p0, p3, v3}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->updateInternal(Lorg/chromium/chrome/browser/snackbar/Snackbar;Z)Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/snackbar/SnackbarView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/snackbar/SnackbarView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V
    .locals 4

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 198
    if-eqz p3, :cond_1

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 200
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateInternal(Lorg/chromium/chrome/browser/snackbar/Snackbar;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mSnackbar:Lorg/chromium/chrome/browser/snackbar/Snackbar;

    if-ne v0, p1, :cond_0

    move v1, v3

    .line 192
    :goto_0
    return v1

    .line 157
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mSnackbar:Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 158
    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mMessageView:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getSingleLine()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->setMaxLines(I)V

    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mMessageView:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getTemplateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->setTemplate(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mMessageView:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2, p2}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    .line 161
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getActionText()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getBackgroundColor()I

    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$color;->snackbar_background_color:I

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    move v2, v0

    .line 169
    :goto_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mIsTablet:Z

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    sget v5, Lorg/chromium/chrome/R$drawable;->snackbar_background:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 177
    :goto_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 180
    :cond_1
    if-eqz v4, :cond_4

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mActionButtonView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mActionButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getActionText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p2}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    .line 186
    :goto_4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getProfileImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_5

    .line 188
    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mProfileImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 158
    :cond_2
    const v0, 0x7fffffff

    goto :goto_1

    .line 174
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_3

    .line 184
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mActionButtonView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 190
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mProfileImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    move v2, v0

    goto :goto_2
.end method


# virtual methods
.method adjustViewPosition()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mCurrentVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mCurrentVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mPreviousVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mPreviousVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mCurrentVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mTempDecorPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mTempDecorPosition:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mCurrentVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 119
    sub-int v1, v0, v1

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$dimen;->snackbar_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 124
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 125
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 126
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$dimen;->snackbar_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 127
    iget-object v3, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :cond_1
    return-void
.end method

.method announceforAccessibility()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mMessageView:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mMessageView:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method dismiss()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mActionButtonView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/snackbar/SnackbarView$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView$2;-><init>(Lorg/chromium/chrome/browser/snackbar/SnackbarView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 108
    return-void
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    return v0
.end method

.method show()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->adjustViewPosition()V

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$anim;->snackbar_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    return-void
.end method

.method update(Lorg/chromium/chrome/browser/snackbar/Snackbar;)Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->updateInternal(Lorg/chromium/chrome/browser/snackbar/Snackbar;Z)Z

    move-result v0

    return v0
.end method
