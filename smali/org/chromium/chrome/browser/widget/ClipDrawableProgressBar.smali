.class public Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;
.super Landroid/widget/ImageView;
.source "ClipDrawableProgressBar.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBackgroundColor:I

.field private mDesiredVisibility:I

.field private final mForegroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mProgress:F

.field private mProgressUpdateCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v3, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mBackgroundColor:I

    .line 61
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getVisibility()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mDesiredVisibility:I

    .line 63
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    sget-object v0, Lorg/chromium/chrome/R$styleable;->ClipDrawableProgressBar:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    sget v1, Lorg/chromium/chrome/R$styleable;->ClipDrawableProgressBar_progressBarColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 69
    sget v2, Lorg/chromium/chrome/R$styleable;->ClipDrawableProgressBar_backgroundColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mBackgroundColor:I

    .line 71
    sget-boolean v2, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_1
    sget-boolean v2, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Currently ClipDrawableProgressBar only supports opaque progress bar color."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 75
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mForegroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 78
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mForegroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x800003

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mBackgroundColor:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->setBackgroundColor(I)V

    .line 81
    return-void
.end method

.method private applyAlpha(IF)I
    .locals 2

    .prologue
    .line 170
    ushr-int/lit8 v0, p1, 0x18

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private updateInternalVisibility()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getVisibility()I

    move-result v1

    .line 164
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mDesiredVisibility:I

    .line 165
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mDesiredVisibility:I

    if-nez v2, :cond_0

    const/4 v0, 0x4

    .line 166
    :cond_0
    if-eq v1, v0, :cond_1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :cond_1
    return-void
.end method


# virtual methods
.method public getDrawingInfo(Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;)V
    .locals 6

    .prologue
    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mForegroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getAlpha()F

    move-result v0

    .line 120
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->applyAlpha(IF)I

    move-result v1

    iput v1, p1, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarColor:I

    .line 121
    iget v1, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mBackgroundColor:I

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->applyAlpha(IF)I

    move-result v0

    iput v0, p1, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarBackgroundColor:I

    .line 123
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p1, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getLeft()I

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mProgress:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 129
    iget-object v0, p1, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarBackgroundRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 146
    :goto_1
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p1, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getRight()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mProgress:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 140
    iget-object v0, p1, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getTop()I

    move-result v2

    iget-object v3, p1, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mProgress:F

    return v0
.end method

.method public getProgressUpdateCount()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mProgressUpdateCount:I

    return v0
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->updateInternalVisibility()V

    .line 207
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onSetAlpha(I)Z

    move-result v0

    return v0
.end method

.method public resetProgressUpdateCount()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mProgressUpdateCount:I

    .line 153
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :goto_0
    iput p1, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mBackgroundColor:I

    .line 194
    return-void

    .line 190
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setForegroundColor(I)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mForegroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 202
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .prologue
    .line 98
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_2
    iput p1, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mProgress:F

    .line 102
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mProgressUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mProgressUpdateCount:I

    .line 103
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->mDesiredVisibility:I

    .line 182
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar;->updateInternalVisibility()V

    .line 183
    return-void
.end method
