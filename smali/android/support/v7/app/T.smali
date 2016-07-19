.class final Landroid/support/v7/app/T;
.super Landroid/support/v4/view/bd;
.source "AppCompatDelegateImplV7.java"


# instance fields
.field private synthetic a:Landroid/support/v7/app/S;


# direct methods
.method constructor <init>(Landroid/support/v7/app/S;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Landroid/support/v7/app/T;->a:Landroid/support/v7/app/S;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 732
    iget-object v0, p0, Landroid/support/v7/app/T;->a:Landroid/support/v7/app/S;

    iget-object v0, v0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 733
    iget-object v0, p0, Landroid/support/v7/app/T;->a:Landroid/support/v7/app/S;

    iget-object v0, v0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 734
    iget-object v0, p0, Landroid/support/v7/app/T;->a:Landroid/support/v7/app/S;

    iget-object v0, v0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iput-object v2, v0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    .line 735
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Landroid/support/v7/app/T;->a:Landroid/support/v7/app/S;

    iget-object v0, v0, Landroid/support/v7/app/S;->a:Landroid/support/v7/app/N;

    iget-object v0, v0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 740
    return-void
.end method
