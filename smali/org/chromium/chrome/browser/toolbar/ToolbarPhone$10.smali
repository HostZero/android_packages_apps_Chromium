.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;
.super Ljava/lang/Object;
.source "ToolbarPhone.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

.field final synthetic val$finalAlpha:I

.field final synthetic val$finalColor:I

.field final synthetic val$initialAlpha:I

.field final synthetic val$initialColor:I

.field final synthetic val$shouldAnimateAlpha:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;IIZII)V
    .locals 0

    .prologue
    .line 1840
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iput p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialColor:I

    iput p3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$finalColor:I

    iput-boolean p4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$shouldAnimateAlpha:Z

    iput p5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialAlpha:I

    iput p6, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$finalAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .prologue
    .line 1843
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 1844
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$finalColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1846
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$finalColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 1848
    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$finalColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 1850
    iget-boolean v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$shouldAnimateAlpha:Z

    if-eqz v4, :cond_0

    .line 1851
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget v5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialAlpha:I

    int-to-float v5, v5

    iget v6, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$finalAlpha:I

    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->val$initialAlpha:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBackgroundAlpha:I
    invoke-static {v4, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$1302(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;I)I

    .line 1854
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$10;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateToolbarBackground(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$1400(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;I)V

    .line 1855
    return-void
.end method
