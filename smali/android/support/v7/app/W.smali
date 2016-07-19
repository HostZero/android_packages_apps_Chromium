.class final Landroid/support/v7/app/W;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/c/b;


# instance fields
.field final synthetic a:Landroid/support/v7/app/N;

.field private b:Landroid/support/v7/c/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/N;Landroid/support/v7/c/b;)V
    .locals 0

    .prologue
    .line 1673
    iput-object p1, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1674
    iput-object p2, p0, Landroid/support/v7/app/W;->b:Landroid/support/v7/c/b;

    .line 1675
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/c/a;)V
    .locals 3

    .prologue
    .line 1690
    iget-object v0, p0, Landroid/support/v7/app/W;->b:Landroid/support/v7/c/b;

    invoke-interface {v0, p1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;)V

    .line 1691
    iget-object v0, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v1, v1, Landroid/support/v7/app/N;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1695
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1696
    iget-object v0, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    invoke-static {v0}, Landroid/support/v7/app/N;->c(Landroid/support/v7/app/N;)V

    .line 1697
    iget-object v0, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v1, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v1, v1, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aP;->a(F)Landroid/support/v4/view/aP;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    .line 1698
    iget-object v0, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    new-instance v1, Landroid/support/v7/app/X;

    invoke-direct {v1, p0}, Landroid/support/v7/app/X;-><init>(Landroid/support/v7/app/W;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 1713
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->e:Landroid/support/v7/app/D;

    if-eqz v0, :cond_2

    .line 1714
    iget-object v0, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->e:Landroid/support/v7/app/D;

    iget-object v1, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    iget-object v1, v1, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    invoke-interface {v0, v1}, Landroid/support/v7/app/D;->onSupportActionModeFinished(Landroid/support/v7/c/a;)V

    .line 1716
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/W;->a:Landroid/support/v7/app/N;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    .line 1717
    return-void
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Landroid/support/v7/app/W;->b:Landroid/support/v7/c/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Landroid/support/v7/app/W;->b:Landroid/support/v7/c/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Landroid/support/v7/app/W;->b:Landroid/support/v7/c/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/c/b;->b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
