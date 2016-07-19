.class final Landroid/support/v4/widget/aj;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field private synthetic a:Landroid/support/v4/widget/ab;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ab;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Landroid/support/v4/widget/aj;->a:Landroid/support/v4/widget/ab;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/support/v4/widget/aj;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mStartingScale:F
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$1400(Landroid/support/v4/widget/ab;)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/aj;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mStartingScale:F
    invoke-static {v1}, Landroid/support/v4/widget/ab;->access$1400(Landroid/support/v4/widget/ab;)F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1100
    iget-object v1, p0, Landroid/support/v4/widget/aj;->a:Landroid/support/v4/widget/ab;

    # invokes: Landroid/support/v4/widget/ab;->setAnimationProgress(F)V
    invoke-static {v1, v0}, Landroid/support/v4/widget/ab;->access$700(Landroid/support/v4/widget/ab;F)V

    .line 1101
    iget-object v0, p0, Landroid/support/v4/widget/aj;->a:Landroid/support/v4/widget/ab;

    # invokes: Landroid/support/v4/widget/ab;->moveToStart(F)V
    invoke-static {v0, p1}, Landroid/support/v4/widget/ab;->access$1300(Landroid/support/v4/widget/ab;F)V

    .line 1102
    return-void
.end method
