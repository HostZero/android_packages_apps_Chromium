.class final Landroid/support/v4/view/bb;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatKK.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Landroid/support/v4/view/be;

.field private synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/be;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Landroid/support/v4/view/bb;->a:Landroid/support/v4/view/be;

    iput-object p2, p0, Landroid/support/v4/view/bb;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/v4/view/bb;->a:Landroid/support/v4/view/be;

    invoke-interface {v0}, Landroid/support/v4/view/be;->a()V

    .line 29
    return-void
.end method
