.class final Landroid/support/v7/app/X;
.super Landroid/support/v4/view/bd;
.source "AppCompatDelegateImplV7.java"


# instance fields
.field private synthetic a:Landroid/support/v7/app/W;


# direct methods
.method constructor <init>(Landroid/support/v7/app/W;)V
    .locals 0

    .prologue
    .line 1698
    iput-object p1, p0, Landroid/support/v7/app/X;->a:Landroid/support/v7/app/W;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1701
    iget-object v0, p0, Landroid/support/v7/app/X;->a:Landroid/support/v7/app/W;

    iget-object v0, v0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 1702
    iget-object v0, p0, Landroid/support/v7/app/X;->a:Landroid/support/v7/app/W;

    iget-object v0, v0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Landroid/support/v7/app/X;->a:Landroid/support/v7/app/W;

    iget-object v0, v0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1707
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/X;->a:Landroid/support/v7/app/W;

    iget-object v0, v0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 1708
    iget-object v0, p0, Landroid/support/v7/app/X;->a:Landroid/support/v7/app/W;

    iget-object v0, v0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 1709
    iget-object v0, p0, Landroid/support/v7/app/X;->a:Landroid/support/v7/app/W;

    iget-object v0, v0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iput-object v2, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    .line 1710
    return-void

    .line 1704
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/X;->a:Landroid/support/v7/app/W;

    iget-object v0, v0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Landroid/support/v7/app/X;->a:Landroid/support/v7/app/W;

    iget-object v0, v0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->u(Landroid/view/View;)V

    goto :goto_0
.end method
