.class final Landroid/support/v7/app/U;
.super Landroid/support/v4/view/bd;
.source "AppCompatDelegateImplV7.java"


# instance fields
.field private synthetic a:Landroid/support/v7/app/N;


# direct methods
.method constructor <init>(Landroid/support/v7/app/N;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Landroid/support/v7/app/U;->a:Landroid/support/v7/app/N;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 769
    iget-object v0, p0, Landroid/support/v7/app/U;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 770
    iget-object v0, p0, Landroid/support/v7/app/U;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 771
    iget-object v0, p0, Landroid/support/v7/app/U;->a:Landroid/support/v7/app/N;

    iput-object v2, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    .line 772
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Landroid/support/v7/app/U;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Landroid/support/v7/app/U;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 779
    iget-object v0, p0, Landroid/support/v7/app/U;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Landroid/support/v7/app/U;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->u(Landroid/view/View;)V

    .line 782
    :cond_0
    return-void
.end method
