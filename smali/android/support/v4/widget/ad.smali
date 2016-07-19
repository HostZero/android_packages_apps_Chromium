.class final Landroid/support/v4/widget/ad;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field private synthetic a:Landroid/support/v4/widget/ab;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ab;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Landroid/support/v4/widget/ad;->a:Landroid/support/v4/widget/ab;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/widget/ad;->a:Landroid/support/v4/widget/ab;

    # invokes: Landroid/support/v4/widget/ab;->setAnimationProgress(F)V
    invoke-static {v0, p1}, Landroid/support/v4/widget/ab;->access$700(Landroid/support/v4/widget/ab;F)V

    .line 389
    return-void
.end method
