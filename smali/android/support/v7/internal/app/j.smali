.class final Landroid/support/v7/internal/app/j;
.super Landroid/support/v4/view/bd;
.source "WindowDecorActionBar.java"


# instance fields
.field private synthetic a:Landroid/support/v7/internal/app/h;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/app/h;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Landroid/support/v7/internal/app/j;->a:Landroid/support/v7/internal/app/h;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v7/internal/app/j;->a:Landroid/support/v7/internal/app/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/app/h;->a(Landroid/support/v7/internal/app/h;Landroid/support/v7/internal/view/h;)Landroid/support/v7/internal/view/h;

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/app/j;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->c(Landroid/support/v7/internal/app/h;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->requestLayout()V

    .line 159
    return-void
.end method
