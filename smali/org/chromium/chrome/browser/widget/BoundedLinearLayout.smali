.class public Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "BoundedLinearLayout.java"


# instance fields
.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v0, Lorg/chromium/chrome/R$styleable;->BoundedView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    sget v1, Lorg/chromium/chrome/R$styleable;->BoundedView_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->mMaxWidth:I

    .line 40
    sget v1, Lorg/chromium/chrome/R$styleable;->BoundedView_maxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->mMaxHeight:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/high16 v1, -0x80000000

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 48
    iget v2, p0, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->mMaxWidth:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->mMaxWidth:I

    if-le v0, v2, :cond_1

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 50
    if-nez v0, :cond_0

    move v0, v1

    .line 51
    :cond_0
    iget v2, p0, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->mMaxWidth:I

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 53
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 54
    iget v2, p0, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->mMaxHeight:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->mMaxHeight:I

    if-le v0, v2, :cond_2

    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    :goto_0
    iget v0, p0, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->mMaxHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 59
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 60
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method
