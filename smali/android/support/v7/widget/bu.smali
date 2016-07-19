.class final Landroid/support/v7/widget/bu;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/widget/m;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Landroid/support/v7/widget/bu;->a:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/bu;->a:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener$76933922:Landroid/support/v7/widget/m;
    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$000$37da35fa(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/bu;->a:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener$76933922:Landroid/support/v7/widget/m;
    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$000$37da35fa(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/m;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/m;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
