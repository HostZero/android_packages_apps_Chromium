.class final Landroid/support/v7/app/S;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/app/N;


# direct methods
.method constructor <init>(Landroid/support/v7/app/N;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 723
    iget-object v0, p0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iget-object v1, v1, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 726
    iget-object v0, p0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    invoke-static {v0}, Landroid/support/v7/app/N;->c(Landroid/support/v7/app/N;)V

    .line 727
    iget-object v0, p0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 728
    iget-object v0, p0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iget-object v1, p0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iget-object v1, v1, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aP;->a(F)Landroid/support/v4/view/aP;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    .line 729
    iget-object v0, p0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    new-instance v1, Landroid/support/v7/app/T;

    invoke-direct {v1, p0}, Landroid/support/v7/app/T;-><init>(Landroid/support/v7/app/S;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 742
    return-void
.end method
