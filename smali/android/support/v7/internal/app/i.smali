.class final Landroid/support/v7/internal/app/i;
.super Landroid/support/v4/view/bd;
.source "WindowDecorActionBar.java"


# instance fields
.field private synthetic a:Landroid/support/v7/internal/app/h;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/app/h;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->a(Landroid/support/v7/internal/app/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->b(Landroid/support/v7/internal/app/h;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->b(Landroid/support/v7/internal/app/h;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 142
    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->c(Landroid/support/v7/internal/app/h;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->c(Landroid/support/v7/internal/app/h;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->c(Landroid/support/v7/internal/app/h;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Z)V

    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0, v3}, Landroid/support/v7/internal/app/h;->a(Landroid/support/v7/internal/app/h;Landroid/support/v7/internal/view/h;)Landroid/support/v7/internal/view/h;

    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    .line 1312
    iget-object v1, v0, Landroid/support/v7/internal/app/h;->c:Landroid/support/v7/c/b;

    if-eqz v1, :cond_1

    .line 1313
    iget-object v1, v0, Landroid/support/v7/internal/app/h;->c:Landroid/support/v7/c/b;

    iget-object v2, v0, Landroid/support/v7/internal/app/h;->b:Landroid/support/v7/c/a;

    invoke-interface {v1, v2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;)V

    .line 1314
    iput-object v3, v0, Landroid/support/v7/internal/app/h;->b:Landroid/support/v7/c/a;

    .line 1315
    iput-object v3, v0, Landroid/support/v7/internal/app/h;->c:Landroid/support/v7/c/b;

    .line 148
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->d(Landroid/support/v7/internal/app/h;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Landroid/support/v7/internal/app/i;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->d(Landroid/support/v7/internal/app/h;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->u(Landroid/view/View;)V

    .line 151
    :cond_2
    return-void
.end method
