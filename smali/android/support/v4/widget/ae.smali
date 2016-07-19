.class final Landroid/support/v4/widget/ae;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field private synthetic a:Landroid/support/v4/widget/ab;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ab;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ab;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ab;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    # invokes: Landroid/support/v4/widget/ab;->setAnimationProgress(F)V
    invoke-static {v0, v1}, Landroid/support/v4/widget/ab;->access$700(Landroid/support/v4/widget/ab;F)V

    .line 430
    return-void
.end method
