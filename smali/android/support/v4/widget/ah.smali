.class final Landroid/support/v4/widget/ah;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field private synthetic a:Landroid/support/v4/widget/ab;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ab;)V
    .locals 0

    .prologue
    .line 1057
    iput-object p1, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mUsingCustomStart:Z
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$1100(Landroid/support/v4/widget/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mSpinnerFinalOffset:F
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$1200(Landroid/support/v4/widget/ab;)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    iget v1, v1, Landroid/support/v4/widget/ab;->mOriginalOffsetTop:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 1067
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    iget v1, v1, Landroid/support/v4/widget/ab;->mFrom:I

    iget-object v2, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    iget v2, v2, Landroid/support/v4/widget/ab;->mFrom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 1068
    iget-object v1, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;
    invoke-static {v1}, Landroid/support/v4/widget/ab;->access$400(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1069
    iget-object v1, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    const/4 v2, 0x0

    # invokes: Landroid/support/v4/widget/ab;->setTargetOffsetTopAndBottom(IZ)V
    invoke-static {v1, v0, v2}, Landroid/support/v4/widget/ab;->access$900(Landroid/support/v4/widget/ab;IZ)V

    .line 1070
    iget-object v0, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$100(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(F)V

    .line 1071
    return-void

    .line 1065
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ah;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mSpinnerFinalOffset:F
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$1200(Landroid/support/v4/widget/ab;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method
