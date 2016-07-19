.class final Landroid/support/v4/view/aZ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatICS.java"


# instance fields
.field private synthetic a:Landroid/support/v4/view/bc;

.field private synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/bc;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Landroid/support/v4/view/aZ;->a:Landroid/support/v4/view/bc;

    iput-object p2, p0, Landroid/support/v4/view/aZ;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v4/view/aZ;->a:Landroid/support/v4/view/bc;

    iget-object v1, p0, Landroid/support/v4/view/aZ;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/bc;->onAnimationCancel(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v4/view/aZ;->a:Landroid/support/v4/view/bc;

    iget-object v1, p0, Landroid/support/v4/view/aZ;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/bc;->onAnimationEnd(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v4/view/aZ;->a:Landroid/support/v4/view/bc;

    iget-object v1, p0, Landroid/support/v4/view/aZ;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/bc;->onAnimationStart(Landroid/view/View;)V

    .line 150
    return-void
.end method
