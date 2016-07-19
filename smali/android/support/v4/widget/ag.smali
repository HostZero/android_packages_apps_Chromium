.class final Landroid/support/v4/widget/ag;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Landroid/support/v4/widget/ab;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ab;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Landroid/support/v4/widget/ag;->a:Landroid/support/v4/widget/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Landroid/support/v4/widget/ag;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mScale:Z
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$600(Landroid/support/v4/widget/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    iget-object v0, p0, Landroid/support/v4/widget/ag;->a:Landroid/support/v4/widget/ab;

    const/4 v1, 0x0

    # invokes: Landroid/support/v4/widget/ab;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    invoke-static {v0, v1}, Landroid/support/v4/widget/ab;->access$1000(Landroid/support/v4/widget/ab;Landroid/view/animation/Animation$AnimationListener;)V

    .line 942
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 946
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 935
    return-void
.end method
