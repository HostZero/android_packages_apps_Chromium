.class final Landroid/support/v7/internal/widget/g;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V

    .line 110
    iget-object v0, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->c(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aP;->c(F)Landroid/support/v4/view/aP;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/bc;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/aP;)Landroid/support/v4/view/aP;

    .line 112
    return-void
.end method
