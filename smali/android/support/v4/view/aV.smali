.class Landroid/support/v4/view/aV;
.super Landroid/support/v4/view/aS;
.source "ViewPropertyAnimatorCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Landroid/support/v4/view/aS;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/aP;Landroid/view/View;Landroid/support/v4/view/bc;)V
    .locals 2

    .prologue
    .line 587
    .line 1038
    if-eqz p3, :cond_0

    .line 1039
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/ba;

    invoke-direct {v1, p3, p2}, Landroid/support/v4/view/ba;-><init>(Landroid/support/v4/view/bc;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    .line 1056
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
